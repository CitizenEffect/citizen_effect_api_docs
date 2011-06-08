---
title: Project Donors - API v1
---

# Project Donors API

## List project donors

    GET /donors.xml?project_id=67
    GET /donors.json?project_id=67
    
### Response
    
<%= headers 200 %>
<%= json(:donor) { |h| [h] } %>