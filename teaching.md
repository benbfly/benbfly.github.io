---
layout: page
title: Teaching
author: benbfly
---

{% for course in site.teaching %}
<h3>{{ course.title }}</h3>
<br>
{{ course.content }}

  <HR>

{% endfor %}
