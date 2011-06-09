---
title: Citizen Philanthropists (CP) - API v1
---

# Citizen Philanthropists (CP) API

## Get a single user

To retrieve information about a single user, append the ID to the URL:

    GET /users/466.xml
    GET /users/466.json

### Response

<%= headers 200%>
<%= json(:user) %>


## Create a user

To create a user, you must send the following information:


    'user': {
      'first_name' : "John",
      'last_name' : "Doe",
      'zip' : '46260',
      'email' : 'johndoe@example.com',
      'password' : 'secret',
      'password_confirmation' : 'secret',
    }

The `user` "object" should be sent as a whole.

    POST /users.xml
    POST /users.json

An example, with data appended to the URL, would look something like this:

    /users.json?user[first_name]=John&user[last_name]=Doe&user[zip]=46260&user[email]=johndoe@example.com&user[password]=secret&user[password_confirmation]=secret


### Response

<%= headers 200 %>
<%= json(:user) %>
