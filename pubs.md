---
layout: page
title: Publications
author: benbfly
---


{% assign pubids = "Q39436834, Q38836140" | split: ", " %}

{% for pubid in pubids %}


<div class="card text-white bg-primary mb-3">
  <div class="card-header" id="citeheader"></div>
  <div class="card-body">
    <h4 class="card-title" id="citename"></h4>
    <p class="card-text" id="{{pubid}}"></p>
  </div>
</div>
<script class="code">
     $('#citename').html("hiya")
     $('#citeheader').html("hiya")
     Cite.async(["{{pubid}}"], function(wikidata) {
     htmlOutput = wikidata.get(opt)
     $('#{{pubid}}').html(htmlOutput)
     _altmetric_embed_init()
   })
</script>

{% endfor %}



