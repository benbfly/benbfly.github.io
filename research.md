---
layout: page
title: Research
author: benbfly
---

{% for project in site.projects %}

<div class="jumbotron">
<div class="row">
     <div class="col-lg-4">
     	  <div class="bs-component">
	    <img src="{{ project.image }}">
  </div>
     </div>
     <div class="col-lg-8">
     	  <div class="bs-component">
	  <h4>{{ project.title }}</h4>
	  <p>{{project.content | markdownify }}</p>
	  </div>
     </div>
</div>
</div>


{% endfor %}
