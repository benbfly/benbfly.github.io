---
layout: page
title: Publications
author: benbfly
---


{% assign pubids = "Q58604702, Q52722157, Q38599134, Q38836140, Q37452434, Q35702332, Q35238256, Q36446228, Q34333346" | split: ", " %}

{% for pubid in pubids %}

<div class="card text-white bg-primary mb-3">
  <div class="card-body">
    <p class="card-text" id="{{pubid}}"></p>
  </div>
</div>
<script class="code">
     Cite.async('{{pubid}}', function(wikidata) {
     htmlOutput =  wikidata.get(opt)
     $('#{{pubid}}').html(htmlOutput)
     _altmetric_embed_init()
   })
</script>


{% endfor %}
