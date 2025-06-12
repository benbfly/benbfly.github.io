---
layout: page
title: Publications
author: benbfly
---

<link rel="stylesheet" href="{{ '/assets/css/cards.css' | relative_url }}">

<div class="content-container">
{% assign ordered_pubs = site.data.pubs | sort | reverse %}
{% assign full_pubs_scholar = "https://scholar.google.com/citations?user=GnZNoE4AAAAJ" %}
{% assign pub_count = 0 %}
{% for pub in ordered_pubs %}
  {% if pub.type %}
    {% assign pub_count = pub_count | plus: 1 %}
  {% endif %}
{% endfor %}

<h4>
{{ pub_count }} core papers selected from 80 peer-reviewed Berman lab publications. A complete list of publications is available at my <a target="_blank" href="{{full_pubs_scholar}}">Google Scholar page</a>.
</h4>
<BR>

{% for pub in ordered_pubs %}
  {% if pub.type %}
  <div class="card text-white bg-primary" id="cite{{forloop.index}}">
    <div class="card-body">
      <p class="card-text" id="citetext{{forloop.index}}">
        {% for author in pub.author %}
          {% if author.family == "Berman" and author.given == "Benjamin P." %}
            <strong>{{ author.given }} {{ author.family }}</strong>{% unless forloop.last %}, {% endunless %}
          {% else %}
            {{ author.given }} {{ author.family }}{% unless forloop.last %}, {% endunless %}
          {% endif %}
        {% endfor %}
        "{{ pub.title }}". 
        {% if pub.container-title %}
          <em>{{ pub.container-title }}</em>
        {% endif %}
        {% if pub.volume %}
          {{ pub.volume }}
        {% endif %}
        {% if pub.issue %}
          ({{ pub.issue }})
        {% endif %}
        {% if pub.page %}
          :{{ pub.page }}
        {% endif %}
        {% if pub.issued.date-parts[0][0] %}
          <b>{{ pub.issued.date-parts[0][0] }}</b>
        {% endif %}
        {% if pub.DOI %}
          doi:<a target="_blank" href="https://doi.org/{{ pub.DOI }}">{{ pub.DOI }}</a>
          <span class="__dimensions_badge_embed__" id="badge{{forloop.index}}" data-doi="{{ pub.DOI }}" data-style="small_rectangle"></span>
        {% endif %}
      </p>
    </div>
  </div>
  {% endif %}
{% endfor %}
</div>
