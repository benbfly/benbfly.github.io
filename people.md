---
layout: page
title: People
permalink: /people/
author: benbfly
---

<link rel="stylesheet" href="{{ site.baseurl }}/assets/css/cards.css">

<div class="content-container people-page">
  <h2>Current Members</h2>
  {% assign ordered_members = site.members | where_exp: "member", "member.path contains '/current/'" | sort: "order" %}
  {% for member in ordered_members %}
  <div class="card">
    <div class="row g-0">
      <div class="col-md-4">
        <div class="card-image">
          <img src="{{ site.baseurl }}/assets/images/{{ member.photo }}" class="img-fluid rounded" alt="{{ member.name }}">
        </div>
      </div>
      <div class="col-md-8">
        <div class="card-content">
          <h4 class="card-title">{{ member.name }} - {{ member.position }}</h4>
          <div class="card-description">
            {{member.content | markdownify }}
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
          </div>
        </div>
      </div>
    </div>
  </div>
  {% endfor %}

  <h2>Past Members</h2>
  {% assign ordered_members = site.members | where_exp: "member", "member.path contains '/past/'" | sort: "order" %}
  {% for member in ordered_members %}
  <div class="card">
    <div class="row g-0">
      <div class="col-md-4">
        <div class="card-image">
          <img src="{{ site.baseurl }}/assets/images/{{ member.photo }}" class="img-fluid rounded" alt="{{ member.name }}">
        </div>
      </div>
      <div class="col-md-8">
        <div class="card-content">
          <h4 class="card-title">{{ member.name }} - {{ member.position }}</h4>
          <div class="card-description">
            {{member.content | markdownify }}
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
          </div>
        </div>
      </div>
    </div>
  </div>
  {% endfor %}
</div>


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