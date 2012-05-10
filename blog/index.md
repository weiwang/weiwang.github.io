---
layout: default
title:  Wang, Wei's Blog on Statistics, Computation, Data Analysis et al.
---
<div id="blogindex">
  <p>Life is endless writing and recording.</p>

  <ul class="posts">
    {% for post in site.categories.blog %}
      <li>
        <a class="postlink" href="{{ post.url }}">{{ post.title }}</a>
        <span class="timestamp">{{ post.date | date_to_string }}</span>
      </li>
    {% endfor %}
  </ul>
</div>
