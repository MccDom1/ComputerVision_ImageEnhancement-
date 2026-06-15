# Computer Vision: Image Enhancement using MATLAB

## Overview

This project explores fundamental image enhancement techniques used in computer vision and digital image processing. The goal was to improve image visibility, contrast, and feature representation through intensity transformations and histogram-based enhancement methods.

Using MATLAB, logarithmic transformation, power-law (gamma) transformation, and histogram equalization were implemented and evaluated on grayscale images. The project analyzes how these techniques modify pixel intensity distributions and improve the visual quality of images with poor contrast or limited dynamic range.

This work was completed as part of **CS 7367 – Machine Vision** at **Kennesaw State University**.

---

## Project Objectives

* Implement logarithmic intensity transformation.
* Implement power-law (gamma) transformation.
* Compare the behavior of log and power-law enhancement methods.
* Apply histogram equalization to low-contrast grayscale images.
* Generate and analyze image histograms before and after enhancement.
* Calculate statistical image properties including mean and standard deviation.
* Evaluate the impact of enhancement techniques on image quality and contrast.

---

## Technologies Used

* MATLAB R2026a
* Image Processing Toolbox
* Computer Vision Fundamentals
* Digital Image Processing
* Histogram Analysis
* Statistical Image Analysis

---

## Image Enhancement Techniques

### Logarithmic Transformation

The logarithmic transformation is defined as:

```math
s = c \log(1 + r)
```

where:

* `r` = input pixel intensity
* `s` = output pixel intensity
* `c` = scaling constant

This transformation expands low-intensity pixel values while compressing high-intensity values. It is particularly useful for visualizing Fourier spectrum images where large intensity variations exist.

---

### Power-Law (Gamma) Transformation

The power-law transformation is defined as:

```math
s = c r^\gamma
```

where:

* `γ` = gamma value

For this project:

```text
γ = 0.4
```

Gamma values less than 1 increase brightness and enhance dark regions of an image. Unlike logarithmic transformation, gamma correction provides direct control over image brightness through the gamma parameter.

---

### Histogram Equalization

Histogram equalization enhances image contrast by redistributing pixel intensities using the cumulative distribution function (CDF) of the image histogram.

Benefits include:

* Improved global contrast
* Better utilization of the available intensity range
* Enhanced visibility of image features
* Improved detail recognition

---

## Experimental Results

### Log Transformation vs Power-Law Transformation

Both methods successfully enhanced details in darker regions of the Fourier spectrum image.

#### Similarities

* Improve visibility of low-intensity features
* Enhance dark image regions
* Increase perceived image detail

#### Differences

* Log transformation compresses high-intensity values more aggressively.
* Power-law transformation allows adjustable enhancement using the gamma parameter.
* Gamma correction provides finer control over brightness and contrast.

---

### Histogram Equalization Analysis

#### Original Image Statistics

```text
Mean: 108.3036
Standard Deviation: 13.8391
```

#### Equalized Image Statistics

```text
Mean: 127.5588
Standard Deviation: 74.9215
```

#### Interpretation

The large increase in standard deviation indicates that pixel intensities became more widely distributed after histogram equalization. This wider intensity distribution resulted in significantly improved image contrast and feature visibility.

---

## Project Structure

```text
Image_Enhancement_Project/
│
├── assignment2.m
│
├── fourierspectrum.pgm
├── banker.jpeg
│
├── original_fourierspectrum.png
├── log_transformation.png
├── power_law_gamma_04.png
│
├── original_banker.png
├── histogram_original_banker.png
├── histogram_equalized_banker_image.png
├── histogram_equalized_banker.png
│
└── Assignment2_Report.pdf
```

---

## Skills Demonstrated

* Computer Vision
* Digital Image Processing
* MATLAB Programming
* Image Enhancement
* Histogram Processing
* Contrast Enhancement
* Statistical Image Analysis
* Feature Enhancement
* Pixel-Level Transformations
* Technical Documentation

---

## Applications

The techniques explored in this project are widely used in:

* Computer Vision Systems
* Medical Imaging
* Remote Sensing
* Satellite Image Analysis
* Autonomous Systems
* Machine Learning Preprocessing
* Industrial Inspection
* Security and Surveillance Systems

---

## Key Takeaways

This project demonstrates how simple intensity transformations and histogram-based methods can dramatically improve image quality and feature visibility. Understanding these preprocessing techniques is essential for building robust computer vision and machine learning systems because image quality directly affects downstream analysis and model performance.

---

## Author

### Dominique McClaney

**B.S. Software Development**
Georgia Gwinnett College

**Master of Science in Artificial Intelligence (Planned)**
Kennesaw State University
College of Computing and Software Engineering

Augmented A.I. Engineer

U.S. Navy Veteran

### Areas of Interest

* Artificial Intelligence
* Machine Learning
* Computer Vision
* Deep Learning
* Autonomous Systems
* Software Engineering
* Cloud Computing

---

*"Building intelligent systems through computer vision, software engineering, and artificial intelligence."*
