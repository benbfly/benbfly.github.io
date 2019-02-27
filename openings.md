---
layout: page
title: Current Openings
author: benbfly
---

{% for job in site.jobs %}

<div class="card text-white bg-info mb-3" style="max-width: 60rem;">
  <div class="card-header" id="jobheader">{{job.jobtitle}}</div>
  <div class="card-body">
    <p class="card-text" id="content">{{ job.content | markdownify }}</p>
  </div>
</div>

{% endfor %}
