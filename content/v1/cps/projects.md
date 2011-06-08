---
title: Citizen Philanthropists (CP) - Projects - API v1
---

# Citizen Philanthropist (CP) Projects API

## List projects associated with user

    GET /projects.xml?user_id=73
    GET /projects.json?user_id=73
    
### Response
    
<%= headers 200 %>
<%= json(:project) { |h| [h] } %>