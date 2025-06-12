---
layout: page
title: People
author: benbfly
---

<style>
body {
  background-color: #f0f2f5;
}
</style>

{% for member in site.members %}
  <h4>{{ member.name }} - {{ member.position }}</h4>
  <p><img class="img-thumbnail" width="100" src="assets/images/{{ member.photo }}"></p>
  <p>{{ member.content | markdownify }}</p>
  <p>
{% if member.twitter %}
  Twitter: <a target="_blank" href="http://twitter.com/{{ member.twitter }}">@{{ member.twitter }}</a><BR>
{% endif %}
{% if member.github %}
  GitHub: <a target="_blank" href="http://github.com/{{ member.github }}">{{ member.github }}</a><BR>
{% endif %}
{% if member.email %}
  Email: {{ member.email }}<BR>
{% endif %}
</p>
{% endfor %}


<!--
<ul>
{% for member in site.data.members %}
  <li>
    <a href="https://github.com/{{ member.github }}">
      {{ member.name }}
    </a>
  </li>
{% endfor %}
</ul>
-->