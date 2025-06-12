---
layout: page
author: benbfly
---

<style>
body {
  background-color: #f0f2f5;
}
</style>

{% for course in site.teaching %}
<h3>{{ course.title }}</h3>
<br>
{{ course.content }}

  <HR>

{% endfor %}
