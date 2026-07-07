---
layout: default
title: Home
---

# Welcome

This is a personal site where I share notes, ideas, and things I'm working on.

## Latest Posts

{% for post in site.posts %}
- [{{ post.title }}]({{ post.url }}) — {{ post.date | date: "%Y-%m-%d" }}
{% endfor %}

Check out the [About](/about.html) page to learn more.
