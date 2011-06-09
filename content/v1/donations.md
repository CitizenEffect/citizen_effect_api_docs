---
title: Donations - API v1
---

# General Donations API

## General Donation

To donate to Citizen Effect, you must send a great deal of information. See the map below:

    'donation': {
      'amount_in_cents' => '10000',
      'first_name' => "John",
      'last_name' => "Doe",
      'address1' => '123 Main St.',
      'city' => 'Indianapolis',
      'state' => 'IN',
      'country' => 'United States',
      'zip' => '46260',
      'email' => 'johndoe@example.com',
      'tip_percentage' => '0',
      'agree_tos' => "1",
      'public_credit_card_type' => "Visa",
      'credit_card_number' => "4242424242424242",
      'credit_card_cvv' => "123",
      'expiration_year' => '2012',
      'expiration_month' => '8'
    }

The `donation` "object" would be sent as a whole.

    POST /donations.xml
    POST /donations.json

An example, with data appended to the URL, would look something like this:

    /donations.json?donation[amount_in_cents]=10000&donation[first_name]=John&donation[list_name]=Doe&donation[address1]=123%20Main%20St&donation[city]=Indianapolis&donation[state]=IN&donation[country]=United%20States&donation[zip]=46260&donation[email]=johndoe@example.com&donation[tip_percentage]=0&donation[agree_tos]=1&donation[public_credit_card_type]=Visa&donation[credit_card_number]=4242424242424242&donation[credit_card_cvv]=123&donation[expiration_year]=2012&donation[expiration_month]=8

Public credit card types are `Visa` and `Master`
    
### Response
    
<%= headers 200 %>
<%= json(:donation) %>
