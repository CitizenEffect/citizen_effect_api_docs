---
title: Featured Projects - API v1
---

# Featured Projects API

## List featured projects

    GET /featured_projects.xml
    GET /featured_projects.json
    
### Response
    
<%= headers 200 %>
<%= json(:featured_project) { |h| [h] } %>