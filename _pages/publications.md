---
layout: page
permalink: /publications/
title: publications
description: Below is a list of my publications in reverse-chronological order.
nav: true
nav_order: 2
---

<!-- _pages/publications.md -->

<!-- Bibsearch Feature -->

{% include bib_search.liquid %}

<div class="publications">

{% bibliography --query @article @phdthesis %}

</div>
