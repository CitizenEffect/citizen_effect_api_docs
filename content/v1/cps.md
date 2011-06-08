---
title: Citizen Philanthropists (CP) - API v1
---

# Citizen Philanthropists (CP) API

## Get a single user

    GET /users/466.xml
    GET /users/466.json
    
### Response
    
<%= headers 200%>
<%= json(:user) %>


## Create a user

    POST /users.xml
    POST /users.json
    
### Response
    
<%= headers 200 %>
<%= json(:user) %>