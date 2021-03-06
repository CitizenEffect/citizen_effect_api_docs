---
title: Citizen Effect API v1
---

# API v1

This describes the official Citizen Effect API v1.

## Schema

All API access is over HTTP, and access from the `citizeneffect.org` domain. Data can be received as either JSON or XML.

    curl -i http://citizeneffect.org/api/v1

    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8
    Content-Length: 2

    {}

or

    curl -i http://citizeneffect.org/api/v1?format=xml

    HTTP/1.1 200 OK
    Content-Type: application/xml; charset=utf-8
    Content-Length: 54

    <?xml version="1.0" encoding="UTF-8"?>
    <hash>
    </hash>


## Authentication

There are two ways to authenticate. **All API end-points require authentication.**

Basic Authentication (`api_key` as the user name):

    $ curl -u "a2676d73e39d5d940e16431c6d3cd5795c8b0229:" http://citizeneffect.org/api/v1

Simply including your API key as a query parameter:

    $ curl http://citizeneffect.org/api/v1?api_key=a2676d73e39d5d940e16431c6d3cd5795c8b0229

## Specifying a Format

The format can be specified by either appending `.json` or `.xml` to the URL:

    $ curl http://citizeneffect.org/api/v1/projects.json

or by passing the `format` option:

    $ curl http://citizeneffect.org/api/v1/projects?format=json

## HTTP Verbs

### GET
Used for retrieving resources.

### POST
Used for creating resources, or performing custom actions (such as merging a pull request).

## Client Errors

1. Sending incorrect or insufficient data will result in a `400 Bad Request` response.

    Example

2. Requesting a resource that doesn't exist will result in a `404 Not Found` response.
