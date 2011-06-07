---
title: Projects - API v1
---

# Projects API

## List projects

    GET /projects.xml
    GET /projects.json
    
### Response
    
<%= headers 200, :pagination => true %>
<%= json(:project) { |h| [h] } %>

## Get a single project

    GET /projects/466.xml
    GET /projects/466.json
    
### Response
    
<%= headers 200%>
<%= json(:project) %>