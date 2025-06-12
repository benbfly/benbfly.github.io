---
layout: page
title: News
author: benbfly
---

<style>
body {
  background-color: #f0f2f5;
}
</style>

<ul>
  {% for post in site.posts %}
    <li>
      <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
      <p>{{ post.excerpt }}</p>
    </li>
  {% endfor %}
</ul>
