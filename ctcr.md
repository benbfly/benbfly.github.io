---
title: 2019 TCGA Conference and Workshop in India
link: 
image:
---

<H4>Starting Docker instructions</H4>
<UL>
<li><code>docker pull tiagochst/elmer_jupterhub:notebooks_data</code></li>
<li><code>docker run -p 3838:3838 -d --name jupyterhub  tiagochst/elmer_jupterhub:notebooks_data  jupyterhub --ip 0.0.0.0 --port 3838</code></li>
<li>Open <code>http://localhost:3838</code> in browser (user:<em>student1</em> pass:<em>student1</em>)</li>
<li><code>docker stop $(docker ps -q)</code></li>
<li><code>docker rm $(docker ps -a -q)</code></li>
</UL>

<H4>R markdown</H4>
<UL>
<li><a target="_blank" href="assets/code/Workshop%20-%20TCGA%20data%20analysis.html">TCGA data analysis</a>
(<a target="_blank" href="http://rpubs.com/tiagochst/TCGAworkshop">RPubs version</a>)</li>
<li><a target="_blank" href="assets/code/Creating%20MAE%20object%20with%20TCGA%20data.html">Creating MAE Objects</a></li>
<li><a target="_blank" href="assets/code/ELMER%20workshop_reduced.html">ELMER (reduced RAM)</a></li>
<li><a target="_blank" href="assets/code/ELMER%20workshop.html">ELMER</a></li>
<li><a target="_blank" href="assets/code/Workshop%20for%20ATAC-seq%20analysis.html">ATAC-seq</a></li>
</UL>

<H4>Papers</H4>
<UL>
<li><a target="_blank" href="assets/papers/R_TCGABiolinks_NAR_2016.pdf">R_TCGABiolinks_NAR_2016.pdf</a></li>
<li><a target="_blank" href="assets/papers/R_MultiAssayExperiment_CancerResearch_2017.pdf">R_MultiAssayExperiment_CancerResearch_2017.pdf</a></li>
<li><a target="_blank" href="assets/papers/GENOMIC_Maftools_GenomeRes_2018.pdf">GENOMIC_Maftools_GenomeRes_2018.pdf</a></li>
<li><a target="_blank" href="assets/papers/EPIGENETICS_ELMER_Bioinformatics_2019.pdf">EPIGENETICS_ELMER_Bioinformatics_2019.pdf</a></li>
<li><a target="_blank" href="assets/papers/EPIGENETICS_ATACseq_Science_2018.pdf">EPIGENETICS_ATACseq_Science_2018.pdf</a></li>
</UL>

<H4>Molecular subtypes (TCGABiolinks)</H4>
<UL>
<li><a target="_blank" href="https://www.synapse.org/#!Synapse:syn8402849">Synapse</a></li>
<li><a target="_blank" href="https://docs.google.com/spreadsheets/d/1uXeB8mUElqebppxUSHPGgkpIqnPIM7tsR2E73SYQ40M/edit?usp=sharing">Google Doc</a></li>
</UL>

