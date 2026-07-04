---
layout: page
title: Research
permalink: /research/
nav: true
nav_order: 2
---

My research lies at the intersection of machine learning, signal processing, and computational sensing. I develop data-driven methods that exploit structure in physical systems, sensor networks, and time-varying signals. The goal is to make sensing systems more accurate, reliable, and interpretable, especially when measurements are sparse, noisy, biased, or expensive to obtain.
<br><br>

<div class="row mt-3 mb-4">
  <div class="col-sm-12">
    <img src="/assets/img/researchoverview.jpg" class="img-fluid rounded z-depth-1" alt="Overview">
  </div>
</div>

#### Computational Sensing for Networked Systems

Distributed sensors increasingly monitor modern engineering systems. Examples include industrial IoT platforms, energy infrastructures, air pollution monitoring systems, and structural health monitoring systems. These systems generate data that evolves over time and are coupled through physical, functional, or relational dependencies. In this research direction, I develop machine learning methods for computational sensing in such networked systems. A central idea is to use graph-based models to represent interactions between sensors, assets, locations, or physical components. These models enable tasks such as sensor fusion, soft sensing, virtual metering, calibration, fault detection, and monitoring under limited sensing coverage.
<br><br>

#### Signal Processing and Machine Learning on Graphs

Many real-world signals are not naturally defined on regular grids. Instead, they live on irregular structures such as networks, graphs, sensor layouts, or physical systems with nontrivial connectivity. Graph signal processing provides tools for analyzing these signals by explicitly modeling the underlying relational structure. In this research direction, I study methods for learning, processing, and interpreting signals on graphs and time-varying networks. This includes graph inference, graph signal reconstruction, graph signal separation, smooth graph signal representation, sampling, sensor placement, and joint time-vertex analysis. These methods help uncover how information propagates across a system and how measurements can be optimally collected or reconstructed. A key aspect of this work is structured learning. Instead of treating data as independent samples, the model exploits relationships between variables, sensors, and physical components. This leads to more sample-efficient and interpretable methods, especially in science and engineering applications where the structure of the problem carries important information.
<br><br>


#### Robust and Reliable Learning for Inverse Problems

Real-world sensing systems often operate under uncertainty. Measurements may be corrupted by noise, sensors may fail, domains may shift, and the available data may be insufficient to fully characterize the system. In these settings, reliable learning requires more than high predictive accuracy; models must be robust, uncertainty-aware, and capable of solving ill-posed inverse problems. In this research direction, I develop methods for robust learning, uncertainty quantification, conformal inference, and inverse problem solving. This includes both time-series inverse problems and computational imaging problems. The broader goal is to recover meaningful signals from incomplete or degraded observations while providing a measure of confidence in the output. This direction connects classical signal processing, optimization, robust statistics, and modern deep learning.
