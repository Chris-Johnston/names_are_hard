---
date: 2002-01-01
layout: post
permalink: /about/
title: About Me
description: This is a test about page
tags: about
---

hello this is me

and this is my blog

  <div class="home-post-wrapper">
    {% for post in site.posts limit:5 %}
      <div class="home-first-post-title">
        {{ post.title }}
      </div>
      <div class="home-first-post-wrapper">
        {{ post.excerpt | strip_html | truncatewords:50 }}
      </div>
    {% endfor %}
  </div>
