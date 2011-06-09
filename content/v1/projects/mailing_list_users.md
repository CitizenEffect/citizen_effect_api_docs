---
title: Project Mailing List Users - API v1
---

# Project Mailing List Users API

## Add User to Project Mailing List

To add a user to a project's mailing list, pass the `project_id`, `mailing_list_users[email]`, and `mailing_list_users[zip]`.

    POST /mailing_list_users.xml?project_id=67&mailing_list_users[email]=jimmorrison@example.com&mailing_list_users[zip]=46260
    POST /mailing_list_users.json?project_id=67&mailing_list_users[email]=jimmorrison@example.com&mailing_list_users[zip]=46260

### Response

<%= headers 200 %>
<%= json(:mailing_list_user) %>
