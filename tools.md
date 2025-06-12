---
layout: page
title: Tools
author: benbfly
---

<style>
body {
  background-color: #f0f2f5;
}
</style>

{% for tool in site.tools %}

### {{tool.title}}
{{tool.content | markdownify }}

{% endfor %}
