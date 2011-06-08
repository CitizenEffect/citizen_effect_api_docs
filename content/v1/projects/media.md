---
title: Project Media - API v1
---

# Project Media API

## List media

    GET /medias.xml?project_id=67
    GET /medias.json?project_id=67
    
### Response
    
<%= headers 200 %>
<%= json(:media) { |h| [h] } %>