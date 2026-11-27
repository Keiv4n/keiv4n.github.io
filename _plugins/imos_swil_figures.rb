# Render the original IMOS-SWIL paper figures for the static project page.
# The original PDFs remain available unchanged.
require 'fileutils'

Jekyll::Hooks.register :site, :post_write do |site|
  next unless Jekyll.env == 'production'

  source = File.join(site.source, 'imos-swil')
  dest = File.join(site.dest, 'imos-swil', 'figures')
  FileUtils.mkdir_p(dest)
  { 'BlockDiagramTree' => 2000, 'AalborgSWIL' => 1100, 'AalborgModules' => 2400 }.each do |name, pixels|
    pdf = File.join(source, "#{name}.pdf")
    next unless File.file?(pdf)
    preview = File.join(dest, name)
    begin
      ok = system('pdftoppm', '-f', '1', '-l', '1', '-singlefile',
                  '-png', '-scale-to', pixels.to_s, pdf, preview)
      if ok && File.file?(preview + '.png')
        Jekyll.logger.info 'IMOS-SWIL:', "Rendered #{name}.png"
      else
        Jekyll.logger.warn 'IMOS-SWIL:', "Preview for #{name} unavailable; the page provides a PDF fallback."
      end
    rescue StandardError => e
      Jekyll.logger.warn 'IMOS-SWIL:', "#{name}: #{e.message}"
    end
  end
end
