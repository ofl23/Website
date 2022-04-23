---
author: Oliver Long
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
header:
  image: WebsiteHeader.gif
taxonomies:
  tags: ["Oliver Long", "papers", "publications"]
---

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}
