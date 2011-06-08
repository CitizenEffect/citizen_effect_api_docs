---
title: Project Donations - API v1
---

# Project Donations API

## Donate to Project

    POST /donations.xml?project_id=67
    POST /donations.json?project_id=67
    
### Response
    
<%= headers 200 %>
<%= json(:donation) %>