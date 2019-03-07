---
layout: page
title: Publications
author: benbfly
---


<!-- DOIs -->
{% assign pubids = "10.1093/bioinformatics/bty902, 10.1038/S41588-018-0073-4, 10.1136/GUTJNL-2017-314607, 10.1161/CIRCULATIONAHA.116.024590, 10.1038/NG.3683, 10.1186/S13059-015-0668-3, 10.1101/GR.183368.114, 10.1101/GR.143008.112, 10.1186/GB-2012-13-7-R61" | split: ", " %}

<!-- Wikidata -->

{% comment %}
{% assign pubids = "Q58604702, Q52722157, Q38599134, Q38836140, Q37452434, Q35702332, Q35238256, Q36446228, Q34333346" | split: ", " %}
{% endcomment %}


{% for pubid in pubids %}

{% comment %}
****Cite and opts are defined in head.html****
{% endcomment %}

{% comment %}
<div class="card text-white bg-primary mb-3">
  <div class="card-body">
  <div class="citation-js cite" data-input="Q21972834">This text can now be ignored</div>
  </div>
</div>
{% endcomment %}


<div class="card text-white bg-primary mb-3">
  <div class="card-body">
  <p class="card-text" id="cite{{forloop.index}}"></p>
  </div>
</div>
<script class="code">
     Cite.async('{{pubid}}', function(example) {
     htmlOutput =  example.get(opt)
     $('#cite{{forloop.index}}').html(htmlOutput)
{% comment %}
     window.__dimensions_embed.addBadges()
{% endcomment %}

   })
</script>


{% comment %}
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
{% endcomment %}


{% endfor %}

