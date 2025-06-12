---
layout: page
title: Research
author: benbfly
---

<link rel="stylesheet" href="{{ '/assets/css/cards.css' | relative_url }}">

<div class="content-container">
{% for project in site.projects %}
<div class="card">
  <div class="row g-0">
    <div class="col-md-4">
      <div class="card-image">
        <img src="{{ project.image }}" class="img-fluid rounded" alt="{{ project.title }}">
      </div>
    </div>
    <div class="col-md-8">
      <div class="card-content">
        <h4 class="card-title">{{ project.title }}</h4>
        <div class="card-description">
          {{project.content | markdownify }}
        </div>
      </div>
    </div>
  </div>
</div>
{% endfor %}
</div>

<style>
body {
  background-color: #f0f2f5;
}

.research-projects {
  max-width: 1200px;
  margin: 0 auto;
  padding: 2rem 0;
}

.project-card {
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
  transition: transform 0.2s ease-in-out;
}

.project-card:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 8px rgba(0,0,0,0.15);
}

.project-image {
  height: 100%;
  min-height: 200px;
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
}

.project-image img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.project-content {
  height: 100%;
}

.project-title {
  color: #2c3e50;
  margin-bottom: 1rem;
  font-weight: 600;
}

.project-description {
  color: #34495e;
  line-height: 1.6;
}

@media (max-width: 768px) {
  .project-image {
    min-height: 150px;
  }
  
  .project-content {
    padding: 1rem !important;
  }
}
</style>
