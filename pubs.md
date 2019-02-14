---
layout: page
title: publications
author: benbfly
---

<div class="card text-white bg-primary mb-3">
  <div class="card-header" id="citeheader"></div>
  <div class="card-body">
    <h4 class="card-title" id="citename"></h4>
    <p class="card-text" id="citefull"></p>
  </div>
</div>
<script class="code">
     $('#citename').html("hiya")
     $('#citeheader').html("hiya")
     Cite.async(["Q39436834"], function(wikidata) {
     htmlOutput = wikidata.get(opt)
     $('#citefull').html(htmlOutput)
     _altmetric_embed_init()
   })
</script>

