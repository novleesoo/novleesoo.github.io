---
layout: default
title: 归档
---

# 文章归档

{% assign posts_by_year = site.posts | group_by_exp: "post", "post.date | date: '%Y'" %}
{% for year in posts_by_year %}
## {{ year.name }} 年

{% for post in year.items %}
- {{ post.date | date: "%m-%d" }} — [{{ post.title }}]({{ post.url }})
{% endfor %}

{% endfor %}
