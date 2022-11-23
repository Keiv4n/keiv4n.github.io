---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---
<h1 class="year">2022</h1>

<ul style="list-style-type:circle;">

 
<ul>
     <li><a href="https://ieeexplore.ieee.org/document/9813381" style="color: #B509AC; text-decoration:none;" target="\_blank">Unsupervised Hyperspectral Denoising Based on Deep Image Prior and Least Favorable Distribution </a>
<br><strong>K. F. Niresi</strong>, and C. -Y. Chi,<br><em>IEEE Journal of Selected Topics in Applied Earth Observations and Remote Sensing, 2022, doi: 10.1109/JSTARS.2022.3187722.</em></li>
</ul> <br>

 <p align="center">
  <img width="650" height="288" src="https://user-images.githubusercontent.com/107177894/177000820-a4c0ccea-9dc6-4c0c-9291-4b6a46c9d587.png">
</p>

<style>
#more {display: none;}
</style>

<p align="justify"><b>Abstract:</b> This paper considers the inverse problem under hyperspectral images (HSIs) denoising framework. Recently, it has been shown that deep learning is a promising approach to image denoising. However,<span id="dots">...</span><span id="more"> deep learning to be effective usually needs a massive amount of training data. Moreover, in a practical scenario, HSIs may get contaminated by different kinds of noises such as Gaussian and/or sparse noise. Lately, it has been reported that the convolutional neural network (CNN), the core element used by deep image prior (DIP), is able to capture image statistical characteristics without the need of training, i.e., restore the clean image blindly. Nonetheless, there exists some performance gap between DIP and state-of-the-art methods in HSIs (e.g., low-rank models). By applying the Huber loss function (HLF), which is derived through a least favorable distribution in robust statistics, to DIP, we propose a novel unsupervised denoising algorithm, referred as to the HLF-DIP, free from pre-training and without involving any regularizer. Extensive experimental results are provided to demonstrate that the proposed HLF-DIP algorithm significantly outperforms seven state-of-the-art algorithms in both complexity (thanks to no regularization) and robustness against complex noise (e.g., mixed types of noises).</span></p>
<button onclick="myFunction()" id="myBtn">Read more</button>

<script>
function myFunction() {
  var dots = document.getElementById("dots");
  var moreText = document.getElementById("more");
  var btnText = document.getElementById("myBtn");

  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "Read more"; 
    moreText.style.display = "none";
  } else {
    dots.style.display = "none";
    btnText.innerHTML = "Read less"; 
    moreText.style.display = "inline";
  }
}
</script>


 
<p><i class="fa fa-file" style="color:blue"></i> <a href="https://ieeexplore.ieee.org/document/9813381" style="color: blue; text-decoration:none;" target="\_blank">IEEE Xplore</a> | <i class="fas fa-file-pdf" style="color:red"></i> <a href="https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=9813381" style="color: red; text-decoration:none;" target="\_blank">PDF</a> | <i class="fab fa-github" style="color:green"></i> <a href="https://github.com/Keiv4n/HLF-DIP" style="color: green; text-decoration:none;" target="\_blank">Code</a> | <i class="fas fa-globe" style="color:brown"></i> <a href="https://openremotesensing.net/knowledgebase/unsupervised-hyperspectral-denoising-based-on-deep-image-prior-and-least-favorable-distribution/" style="color:brown; text-decoration:none;" target="\_blank">Open Remote Sensing</a></p>
 
