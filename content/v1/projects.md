---
title: Projects - API v1
---

# Projects API

## List projects

    GET /projects.xml
    GET /projects.json

### Response

<%= headers 200 %>
<%= json(:project) { |h| [h] } %>

## Get a single project

To retrieve a single project, append the ID to the URL:

    GET /projects/466.xml
    GET /projects/466.json

### Response

<%= headers 200%>
<%= json(:project) %>


## Search projects

To search projects, include a `search_term` and an optional `status`. Possible values for `status` are `needing_cp`, `needing_donations`, and `complete`.


    GET /projects/search.xml?search_term=education&status=needing_cp
    GET /projects/search.json?search_term=education&status=needing_cp

### Response

<%= headers 200 %>
<%= json(:project) { |h| [h] } %>
