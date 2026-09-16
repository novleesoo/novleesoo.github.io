---
layout: default
title: 首页
---

# 欢迎来到我的站点

这里用来记录一些想法、笔记与阶段性总结，内容会持续更新。

## 最新文章

{% assign sorted_articles = site.articles | sort: "path" | reverse %}
{% for article in sorted_articles %}
{% assign fname = article.path | split: "/" | last | remove: ".md" %}
{% assign article_date = fname | slice: 0, 8 %}
{% assign article_title = fname | slice: 9, 999 %}
- [{{ article_title }}]({{ article.url }}) — {{ article_date | slice: 0, 4 }}-{{ article_date | slice: 4, 2 }}-{{ article_date | slice: 6, 2 }}
{% endfor %}

更多历史文章请查看 [归档页面](/archive.html)，也欢迎了解 [关于本站](/about.html)。
