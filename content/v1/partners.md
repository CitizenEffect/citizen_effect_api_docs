---
title: Partners - API v1
---

# Partners API

## Get a single partner

To retrieve a single partner, append the ID to the URL:

    GET /partners/37.xml
    GET /partners/37.json
    
### Response
    
<%= headers 200%>
<%= json(:partner) %>
