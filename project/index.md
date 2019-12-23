---
layout: default
work: true
main: true
title: Selected Projects
description: Projects worked so far
project-header: true
header-img: "img/ridi-highlight.jpg"
---

<div class="catalogue">
{% assign sorted = site.pages | sort: 'order' | reverse %}
{% for page in sorted %}
     {% if page.projects == true %}
          {% include post-list.html %}
     {% endif %}
{% endfor %}
</div>