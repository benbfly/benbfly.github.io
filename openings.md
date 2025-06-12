---
layout: page
title: Openings
author: benbfly
---

<link rel="stylesheet" href="{{ '/assets/css/cards.css' | relative_url }}">

<div class="content-container">
{% for job in site.jobs %}
<div class="card">
  <div class="card-content">
    <h4 class="card-title">{{ job.jobtitle }}</h4>
    <div class="card-description">
      {{job.content | markdownify }}
    </div>
  </div>
</div>
{% endfor %}
</div>
