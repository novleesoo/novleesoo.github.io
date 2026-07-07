---
layout: default
title: 首页
---

# 欢迎来到我的站点

这里用来记录一些想法、笔记与阶段性总结，内容会持续更新。

## 最新文章

{% for post in site.posts %}
- [{{ post.title }}]({{ post.url }}) — {{ post.date | date: "%Y-%m-%d" }}
{% endfor %}

更多历史文章请查看 [归档页面](/archive.html)，也欢迎了解 [关于本站](/about.html)。
