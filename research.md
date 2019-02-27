---
layout: page
title: Research
author: benbfly
---

***

{% for project in site.projects %}

### {{project.title}}
{{project.content | markdownify }}

{% endfor %}
