---
layout: default
title:  Wang, Wei's Notebook
---
<div id="notebookindex">
  <p>Good memory is less reliable than bare pencils.</p>

  <ul class="posts">
    {% for post in site.categories.notebook %}
      <li>
        <a class="postlink" href="{{ post.url }}">{{ post.title }}</a>
      </li>
    {% endfor %}
  </ul>
</div>
