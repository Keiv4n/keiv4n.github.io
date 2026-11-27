# Mirror the published IMOS-SWIL CSV files into the generated website.
# Both existing deployment workflows run Jekyll in production mode.
# The Zenodo record remains the authoritative download and citation source.
require 'fileutils'

module ImosSwilData
  RECORD = '23127439'.freeze
  FILES = { 'DS01.csv' => 15218, 'DS02.csv' => 15286,
            'DS03.csv' => 15078, 'DS04.csv' => 8200 }.freeze

  def self.valid_csv?(path, expected_rows)
    return false unless File.file?(path) && File.size(path) > 100_000
    count = 0
    File.foreach(path) do |line|
      next if line.strip.empty?
      if count.zero?
        fields = [line.count(','), line.count(';'), line.count("\t")].max + 1
        return false unless fields.between?(60, 100)
      end
      count += 1
    end
    count == expected_rows + 1
  rescue StandardError
    false
  end

  def self.mirror(site)
    return unless Jekyll.env == 'production'
    output = File.join(site.dest, 'imos-swil', 'data')
    FileUtils.mkdir_p(output)

    FILES.each do |name, expected_rows|
      path = File.join(output, name)
      next if valid_csv?(path, expected_rows)
      FileUtils.rm_f(path)
      temp = path + '.part'
      sources = [
        "https://zenodo.org/api/records/#{RECORD}/files/#{name}/content",
        "https://zenodo.org/records/#{RECORD}/files/#{name}?download=1"
      ]
      begin
        sources.each do |url|
          FileUtils.rm_f(temp)
          ok = system('curl', '--fail', '--location', '--silent', '--show-error',
                      '--connect-timeout', '10', '--max-time', '60',
                      '--retry', '1', '--retry-max-time', '90',
                      '--output', temp, url)
          next unless ok && valid_csv?(temp, expected_rows)
          File.rename(temp, path)
          Jekyll.logger.info 'IMOS-SWIL:', "Mirrored #{name} (#{expected_rows} samples)"
          break
        end
        unless File.file?(path)
          Jekyll.logger.warn 'IMOS-SWIL:', "Could not mirror #{name}; the explorer retains its Zenodo and local-file fallbacks."
        end
      rescue StandardError => e
        Jekyll.logger.warn 'IMOS-SWIL:', "#{name}: #{e.message}"
      ensure
        FileUtils.rm_f(temp)
      end
    end
  end
end

Jekyll::Hooks.register :site, :post_write do |site|
  ImosSwilData.mirror(site)
end
