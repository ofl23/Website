---
layout: page
title: Introduction to Numerical Relativity
# description: with background image
img: assets/img/NRDomainSqr.png
importance: 1
category: introductions
related_publications: false
---

{% include figure.liquid
   figure_class="project-image-right"
   path="assets/img/NRdomain.png"
   caption="Figure 1: A slice of a  <a href='https://www.black-holes.org/for-researchers/spec'>SpEC</a> computational domain showing the spectral subdomains and the excised black hole horizons. Credit: H. Pfeiffer (MPI for Grav. Physics)"
%}

Numerical Relativity (NR) solves the full Einstein field equations directly on a computer by discretising spacetime into three-dimensional spatial slices that evolve over time. These simulations provide a detailed, fully general-relativistic description of phenomena and capture all of the physics of the system such as tidal deformations and horizon interactions, as shown in Figure 1. Since the first successful binary black-hole merger simulation in 2005, NR has remained the only means of accurately modelling the merger from first principles.

Building on this foundation, the <a href='https://www.black-holes.org/'>Simulating eXtreme Spacetimes (SXS) Collaboration</a> has generated some of the world’s most accurate waveform catalogues. Using the <a href='https://www.black-holes.org/for-researchers/spec'>Spectral Einstein Code (SpEC)</a>, SXS simulations push the limits of computational calculations including high spins, precession, and eccentricity, as shown in Figure 2. NR results now inform every stage of gravitational wave modelling such as calibrating effective-one-body models, validating self-force and post-Minkowskian predictions, and training fast surrogates for data analysis.

{% include figure.liquid
   path="assets/img/SXSCatalog.png"
   caption="Figure 2: Figure 1 from the SXS Catalog paper <a href='https://iopscience.iop.org/article/10.1088/1361-6382/adfd34'> (Mark A Scheel et. al. 2025 Class. Quantum Grav. 42 195017)</a> showing sample waveforms including those with precession (top), eccentricity (middle), and a high mass ratio (bottom)."
%}