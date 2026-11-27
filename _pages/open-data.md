---
layout: page
title: Open Data
permalink: /open-data/
nav: true
nav_order: 3.5
---

<style>
.open-data-grid{display:grid;grid-template-columns:repeat(2,minmax(0,1fr));gap:18px;margin:25px 0 8px}
.open-data-card{display:flex;flex-direction:column;align-items:flex-start;min-width:0;padding:23px;border:1px solid var(--global-divider-color);border-radius:12px;background:var(--global-card-bg-color);color:var(--global-text-color);transition:transform .18s,border-color .18s}
.open-data-card:hover{transform:translateY(-2px);border-color:var(--global-theme-color)}
.open-data-icon{display:flex;align-items:center;justify-content:center;width:42px;height:42px;border-radius:11px;background:var(--global-code-bg-color);color:var(--global-theme-color);font-size:18px;margin-bottom:16px}
.open-data-type{font-size:.7rem;font-weight:600;text-transform:uppercase;letter-spacing:.075em;color:var(--global-text-color-light);margin-bottom:6px}
.open-data-card h2{font-size:1.25rem;font-weight:600;line-height:1.3;margin:0 0 10px}
.open-data-card h2 a{color:var(--global-text-color)}
.open-data-card p{font-size:.94rem;line-height:1.65;margin-bottom:16px}
.open-data-tags{display:flex;gap:6px;flex-wrap:wrap;margin:0 0 18px}
.open-data-tag{border:1px solid var(--global-divider-color);border-radius:5px;padding:3px 7px;font-size:.73rem;color:var(--global-text-color-light)}
.open-data-link{display:inline-flex;align-items:center;gap:7px;font-size:.9rem;font-weight:600;margin-top:auto;color:var(--global-theme-color)}
.open-data-link i{font-size:.75rem}
.open-data-note{margin-top:25px;font-size:.88rem;color:var(--global-text-color-light)}
@media(max-width:575px){.open-data-grid{grid-template-columns:1fr}.open-data-card{padding:20px}}
@media(prefers-reduced-motion:reduce){.open-data-card{transition:none}.open-data-card:hover{transform:none}}
</style>

<p>I contribute to the development and public release of datasets to support reproducible research in computational sensing, signal processing, and machine learning. My collaborators and I aim to provide accessible benchmarks that capture the relational and temporal dependencies of engineered systems, together with documentation and tools for exploring the data and evaluating new methods.</p>

<div class="open-data-grid">
  <article class="open-data-card">
    <div class="open-data-icon" aria-hidden="true"><i class="fas fa-network-wired"></i></div>
    <div class="open-data-type">Synthetic dataset</div>
    <h2><a href="https://epfl-imos.github.io/sdh/">SDH</a></h2>
    <p><strong>Synthetic District Heating Network.</strong> A simulation-based benchmark generated using TESPy, with thermal and hydraulic sensor signals and physics-derived information for evaluating virtual sensing and graph-based learning.</p>
    <div class="open-data-tags"><span class="open-data-tag">Simulation</span><span class="open-data-tag">Soft sensing</span><span class="open-data-tag">Graph learning</span></div>
    <a class="open-data-link" href="https://epfl-imos.github.io/sdh/" aria-label="Explore the SDH dataset">Explore dataset <i class="fas fa-arrow-right" aria-hidden="true"></i></a>
  </article>
  <article class="open-data-card">
    <div class="open-data-icon" aria-hidden="true"><i class="fas fa-flask"></i></div>
    <div class="open-data-type">Experimental dataset</div>
    <h2><a href="https://epfl-imos.github.io/imos-swil/">IMOS–SWIL</a></h2>
    <p><strong>District Heating Dataset.</strong> Synchronized measurements from a physical district heating testbed at Aalborg University's Smart Water Infrastructures Laboratory, supporting virtual smart metering and multivariate time-series learning.</p>
    <div class="open-data-tags"><span class="open-data-tag">Experimental data</span><span class="open-data-tag">Virtual metering</span><span class="open-data-tag">Time series</span></div>
    <a class="open-data-link" href="https://epfl-imos.github.io/imos-swil/" aria-label="Explore the IMOS–SWIL dataset">Explore dataset <i class="fas fa-arrow-right" aria-hidden="true"></i></a>
  </article>
</div>

<p class="open-data-note">Each dataset website includes data access, documentation, an interactive signal explorer, benchmark results, and citation information.</p>
