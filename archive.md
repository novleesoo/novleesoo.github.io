---
layout: default
title: 归档
---

# 文章归档

{% assign sorted_articles = site.articles | sort: "path" | reverse %}
{% assign articles_by_year = sorted_articles | group_by_exp: "article", "article.path | split: '/' | last | slice: 0, 4" %}
{% for year in articles_by_year %}
## {{ year.name }} 年

{% for article in year.items %}
{% assign fname = article.path | split: "/" | last | remove: ".md" %}
{% assign article_date = fname | slice: 0, 8 %}
{% assign article_title = fname | slice: 9, 999 %}
- {{ article_date | slice: 4, 2 }}-{{ article_date | slice: 6, 2 }} — [{{ article_title }}]({{ article.url }})
{% endfor %}

{% endfor %}
