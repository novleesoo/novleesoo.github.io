---
layout: default
title: 归档
---

# 文章归档

{% assign sorted_articles = site.articles | sort: "date" | reverse %}
{% assign articles_by_year = sorted_articles | group_by_exp: "article", "article.date | date: '%Y'" %}
{% for year in articles_by_year %}
## {{ year.name }} 年

{% for article in year.items %}
- {{ article.date | date: "%m-%d" }} — [{{ article.title }}]({{ article.url }})
{% endfor %}

{% endfor %}
