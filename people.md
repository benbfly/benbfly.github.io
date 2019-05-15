---
layout: page
title: People
author: benbfly
---

{% for member in site.members %}
  <h3>{{ member.name }} - {{ member.position }}</h3>
  <p><img src="assets/images/{{ member.photo }}"></p>
  <p>{{ member.content | markdownify }}</p>
  <p>Twitter: <a target="_blank" href="http://twitter.com/{{ member.twitter }}">@{{ member.twitter }}</a></p>
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