---
title: "Team"
layout: page
permalink: /team/
---

# Team

{% assign categories = "PhD|Master|Undergraduate" | split: "|" %}
{% for category in categories %}
{% assign members = site.data.team_members | where: "category", category | sort_by_surname %}
{% if members.size > 0 %}
## {{ category }} Students

<div class="team-grid">
{% for member in members %}
<div class="team-card">
{% if member.photo %}<img src="{{ member.photo | prepend: '/images/' | relative_url }}" class="team-photo" alt="{{ member.name }}" width="128" height="160" loading="lazy">{% endif %}
<h3 class="team-name">{{ member.name }}</h3>
<p class="team-info">{{ member.info }}</p>
</div>
{% endfor %}
</div>
{% endif %}
{% endfor %}
