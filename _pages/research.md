---
layout: page
title: Research
permalink: /research/
nav: true
nav_order: 2
---

<section class="research-page" aria-label="Research overview">
  <p class="research-page__intro">
    My research lies at the intersection of machine learning, signal processing, and computational sensing. I develop methods that exploit the structure of sensor networks and physical systems to recover missing information, learn from limited measurements, and provide reliable predictions.
  </p>

  <figure class="research-page__overview">
    <img src="{{ '/assets/img/researchoverview.jpg' | relative_url }}" alt="Overview of research in signal processing, machine learning, and computational sensing" loading="lazy">
  </figure>

  <header class="research-page__heading">
    <h2 id="research-directions">Research directions</h2>
    <p>Three complementary directions connect foundational methods with real-world sensing problems.</p>
  </header>

  <div class="research-page__cards" aria-labelledby="research-directions">
    <article class="research-card" id="networked-sensing" aria-labelledby="research-networked-title">
      <div class="research-card__number" aria-hidden="true">01</div>
      <div>
        <h3 id="research-networked-title">Computational Sensing for Networked Systems</h3>
        <p class="research-card__description">
          Many engineering systems are monitored by distributed sensors whose measurements are physically and temporally coupled. I develop graph-based and physics-informed methods for virtual sensing, sensor fusion, and fault-aware monitoring, with applications in energy infrastructure, industrial IoT, and other networked systems.
        </p>
        <ul class="research-card__topics" aria-label="Key topics">
          <li>Virtual sensing</li>
          <li>Sensor fusion</li>
          <li>Physics-informed learning</li>
        </ul>
        <div class="research-card__works" aria-label="Representative publications">
          <span>Selected work</span>
          <a href="https://doi.org/10.1109/JIOT.2024.3434732">Physics-Enhanced GNNs ↗</a>
          <a href="https://www.sciencedirect.com/science/article/pii/S0378778826014118">Virtual Smart Metering ↗</a>
        </div>
      </div>
    </article>

    <article class="research-card" id="graph-signal-learning" aria-labelledby="research-graphs-title">
      <div class="research-card__number" aria-hidden="true">02</div>
      <div>
        <h3 id="research-graphs-title">Signal Processing and Machine Learning on Graphs</h3>
        <p class="research-card__description">
          I investigate how graph structure can be inferred and used to process signals observed across sensors and time. This includes graph signal separation and reconstruction, spectral filtering, and time-vertex methods for efficient sensing and sensor placement.
        </p>
        <ul class="research-card__topics" aria-label="Key topics">
          <li>Graph inference</li>
          <li>Signal recovery</li>
          <li>Sensor placement</li>
        </ul>
        <div class="research-card__works" aria-label="Representative publications">
          <span>Selected work</span>
          <a href="https://doi.org/10.1109/LSP.2026.3705721">Graph Signal Separation ↗</a>
          <a href="https://www.sciencedirect.com/science/article/pii/S0951832025013523">Time-Vertex Sensor Placement ↗</a>
        </div>
      </div>
    </article>

    <article class="research-card" id="reliable-learning" aria-labelledby="research-reliability-title">
      <div class="research-card__number" aria-hidden="true">03</div>
      <div>
        <h3 id="research-reliability-title">Robust and Reliable Learning for Inverse Problems</h3>
        <p class="research-card__description">
          Incomplete observations, changing operating conditions, and measurement noise create challenging inverse problems. I develop robust learning and uncertainty-aware approaches that combine inverse solvers, domain adaptation, and conformal methods to support dependable predictions from imperfect data.
        </p>
        <ul class="research-card__topics" aria-label="Key topics">
          <li>Inverse problems</li>
          <li>Domain adaptation</li>
          <li>Uncertainty quantification</li>
        </ul>
        <div class="research-card__works" aria-label="Representative publications">
          <span>Selected work</span>
          <a href="https://doi.org/10.1109/TIM.2025.3632427">RINS-T ↗</a>
          <a href="https://openreview.net/forum?id=pur0JbTRmv">STOIC ↗</a>
        </div>
      </div>
    </article>
  </div>
</section>
