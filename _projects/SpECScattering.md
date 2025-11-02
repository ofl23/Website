---
layout: page
title: Binary black hole scattering with SpEC
# description: with background image
img: assets/img/Trajectories.png
importance: 1
category: research
related_publications: false
---

What happens when high-velocity black holes hurtle past each other in a close encounter, deflecting through spacetime but never merging? My [paper](https://arxiv.org/abs/2507.08071) presents the first simulations of black-hole scattering generated using the [Spectral Einstein Code](https://www.black-holes.org/for-researchers/spec) (SpEC).

{% include figure.liquid
   figure_class="project-image-right"
   path="assets/img/Trajectories.png"
   alt="Trajectories of unbound binary black hole systems"
   caption="Figure 1: A modified version of Figure 1 from the paper showing trajectories of unbound binary black hole systems including equal mass, non-spinning (upper left), unequal masses (upper right), aligned spin (lower left), and anti-aligned spin (lower right)."
%}

We simulated 60 unbound binary black hole encounters, covering systems with spinning black holes and mass ratios up to 10. A few examples of these trajectories are shown in Figure 1.

How do the SpEC results compare with those from other [numerical relativity]({{ '/projects/NR/' | relative_url }}) (NR) codes? Figure 5 in the paper shows a comparison between SpEC and the [Einstein Toolkit](https://einsteintoolkit.org/) (ETK) for a set of equal mass, non-spinning systems. Both codes agree to less than a percent!

We also explored systems with broken symmetry. The first has black holes with spin in opposite directions. Here, for the first time, we measure the tiny difference in scattering angle of each black hole—only 0.1°! Another type of system we looked at was when the black holes have different masses. Again, we measure a difference in the scattering angle of approximately 1°. The results from both of these sets of simulations are shown below.

We also compared our NR results with predictions from effective-one-body models. In general, the models agree with the scattering angles generated with SpEC, with Figure 6 in the paper showing that most models differing by less than 3% in the very strong field!

{% include figure.liquid
   path="assets/img/AsymAngles.png"
   alt="Scattering angle results for anti-aligned spin and unequal-mass systems"
   caption="Figure 2: A modified, combined version of Figures 5 and 11 from the paper showing scattering angle results for anti-aligned spin (left) and unequal masses (right). The top panels show the scattering angle result for the individual black holes. The lower panels show the difference between the scattering angles of each black hole."
%}
