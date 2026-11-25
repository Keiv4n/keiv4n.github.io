---
layout: page
title: Research
permalink: /research/
nav: true
nav_order: 2
---

<div style="text-align: justify;" markdown="1">

My research lies at the intersection of machine learning, signal processing, and computational sensing. I develop data-driven methods that exploit structure in physical systems, sensor networks, and time-varying signals. The goal is to make sensing systems more accurate, reliable, and interpretable, especially when measurements are sparse, noisy, biased, or expensive to obtain.
<br><br>

</div>

<div class="row mt-3 mb-4">
  <div class="col-sm-12">
    <img
      id="research-overview-fallback"
      src="{{ '/assets/img/researchoverview.jpg' | relative_url }}"
      class="img-fluid rounded z-depth-1"
      style="width: 100%;"
      alt="Overview of computational sensing research"
    >
    <video
      id="research-overview-animation"
      class="img-fluid rounded z-depth-1"
      style="display: none; width: 100%; height: auto;"
      muted
      loop
      playsinline
      preload="none"
      aria-label="Animated computational sensing for four systems: bridge, district heating, EEG, and electric power network"
    >
      <source src="{{ '/assets/img/computational_sensing_four_systems_web_1080p.mp4' | relative_url }}" type="video/mp4">
    </video>
  </div>
</div>

<script>
  // Keep the existing static image if the video has not yet been uploaded,
  // cannot play, or the visitor prefers reduced motion.
  (function () {
    var video = document.getElementById("research-overview-animation");
    var fallback = document.getElementById("research-overview-fallback");
    if (!video || !fallback ||
        (window.matchMedia && window.matchMedia("(prefers-reduced-motion: reduce)").matches)) {
      return;
    }

    video.addEventListener("canplay", function () {
      video.style.display = "block";
      fallback.style.display = "none";
      var playAttempt = video.play();
      if (playAttempt && typeof playAttempt.catch === "function") {
        playAttempt.catch(function () {
          video.controls = true;
        });
      }
    }, { once: true });

    video.addEventListener("error", function () {
      video.style.display = "none";
      fallback.style.display = "block";
    });

    video.preload = "auto";
    video.load();
  })();
</script>

<br>

<div style="text-align: justify;" markdown="1">

**Computational Sensing for Networked Systems**

Modern engineering infrastructures are monitored by distributed sensors whose measurements are coupled through physical and temporal dependencies. I develop graph-based and physics-informed learning methods that exploit these interactions for virtual sensing, sensor fusion, calibration, and fault detection. My applications include industrial IoT, district heating networks, air-pollution monitoring, and structural health monitoring, particularly where direct measurements are sparse or expensive.
<br><br>

**Signal Processing and Machine Learning on Graphs**

Signals in sensor networks evolve over time and often reside on irregular structures rather than conventional grids. I investigate how to infer and exploit these relationships using graph signal processing and machine learning. My work includes graph inference, signal separation and reconstruction, spectral filtering, sampling, sensor placement, and joint time-vertex analysis. These methods aim to recover useful information from limited measurements while leveraging the underlying relational structure.
<br><br>

**Robust and Reliable Learning for Inverse Problems**

Real-world sensing is challenged by noise, missing observations, changing operating conditions, and uncertainty. I develop robust learning methods that combine inverse problem solving, optimization, domain adaptation, and uncertainty quantification to recover meaningful signals and improve the reliability of predictions. I also investigate conformal inference for uncertainty assessment, with attention to the assumptions needed for reliable coverage.

</div>
