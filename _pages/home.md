---
title: "Home"
layout: homelay
permalink: /
---

<h1 class="home-hero">{{ site.name }}</h1>
<p class="home-hero-sub">{{ site.title }}, {{ site.institution }}</p>

<div class="chip-container" markdown="0">
<a href="{{ '/research/' | relative_url }}" class="chip">Reinforcement Learning</a>
<a href="{{ '/research/' | relative_url }}" class="chip">Multi-Agent Systems</a>
<a href="{{ '/research/' | relative_url }}" class="chip">LLM-Based Agents</a>
<a href="{{ '/research/' | relative_url }}" class="chip">Generative Decision Models</a>
</div>

{% include biography.md %}

## Recent publications

<div class="section-card selected-pubs" markdown="0">
{% bibliography --query @*[year=2026] %}
<p><a href="{{ '/publications/' | relative_url }}">All publications &rarr;</a></p>
</div>
