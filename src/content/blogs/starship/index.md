---
title: "Dataplatform for IoT"
date: 2023-12-21T15:40:58+01:00
draft: false
github_link: "https://github.com/aniketbhatnagar/aniketbhatnagar.github.io"
author: "Gurusabarish"
tags:
  - dataplatform
  - architecture
  - iot
image: /blogs/starship/startship-arch.png
description: "Starship: A dataplatform for IoT built in 2015"
toc: 
---

## Challenge
With the vision for instrumenting physical world, I was tasked with building a platform that enabled rapid prototyping & installation of sensors. 

## Solution
I built a data platform that provided an APIs & framework for:
- Defining sensor schema
- Collecting sensor data. The data was stored as timeseries in HBase.
- Stream collected data in realtime for visualization and installation validation. 
- Perform real time and batch analytics on collected data using Spark.
- Build visualizations and reports for the analysis performed.

I presentation the design & architecture of the platform at [Great International Developer Conference](https://developersummit.com/) in 2015. Below are the slides:  
<div class="embed-responsive embed-responsive-16by9">
    <iframe src="https://docs.google.com/presentation/d/e/2PACX-1vToDoaKbfiq4Tmv20Z-gCimghJg-R75PZTt-occRDc43yTGSAzZZbe5ZfJhzPA38A/embed?start=false&loop=false&delayms=3000" frameborder="0" width="960" height="749" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
</div>

The platform was built using the tech stack: Scala, Play! framework, Non-blocking I/O, Redis, HBase, Kafka, Spark, Hadoop, ElasticSearch.
It not only garnered acclaim within the company but also earned a spotlight presentation by [our CTO at the prestigious Strata Conference in London](https://www.slideshare.net/OReillyStrata/sapientnitro-stratapresentationupload) (slides 30 - 33):
<div class="embed-responsive embed-responsive-16by9">
    <iframe src="https://www.slideshare.net/slideshow/embed_code/key/iLAmtvyKaSRRw?startSlide=31" width="960" height="749" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px;max-width: 100%;" allowfullscreen></iframe><div style="margin-bottom:5px"><strong><a href="https://www.slideshare.net/OReillyStrata/sapientnitro-stratapresentationupload" title="SapientNitro Strata_presentation_upload" target="_blank">SapientNitro Strata_presentation_upload</a></strong> from <strong><a href="https://www.slideshare.net/OReillyStrata" target="_blank">OReillyStrata</a></strong></div>
</div>