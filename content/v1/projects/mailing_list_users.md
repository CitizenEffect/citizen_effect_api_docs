---
title: Project Mailing List Users - API v1
---

# Project Mailing List Users API

## Add User to Project Mailing List

    POST /mailing_list_users.xml?project_id=67
    POST /mailing_list_users.json?project_id=67
    
### Response
    
<%= headers 200 %>
<%= json(:mailing_list_user) %>