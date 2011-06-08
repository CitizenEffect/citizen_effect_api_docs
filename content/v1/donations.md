---
title: Donations - API v1
---

# General Donations API

## General Donation

    POST /donations.xml
    POST /donations.json
    
### Response
    
<%= headers 200 %>
<%= json(:donation) %>