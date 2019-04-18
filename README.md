# Hello Iodized

Sample application that uses [Iodized2](http://github.com/envato/iodized2/)
(through [iodized2_ruby_client](https://github.com/envato/iodized2_ruby_client))
as a source of feature flags.

## Trello board

[trello.com/b/Uy4gXhNQ/iodized2](https://trello.com/b/Uy4gXhNQ/iodized2)

## Usage

Several environment variables are supported.
They all have default values which make running this server in development easier.
They will all need to be specified in a production environment.

* IODIZED_URL
  * the websocket URL
  * defaults to `ws://localhost:4000/features_socket/websocket`
* IODIZED_KEY
  * the key registered in Iodized
  * defaults to `key`
* IODIZED_SECRET
  * the secret associated with the key
  * defaults to `secret`

```bash
# optionally, set up ENV vars:
> IODIZED_URL=<websocket URL>
> IODIZED_KEY=<client key>
> IODIZED_SECRET=<client secret>
# run the server:
> bundle exec rackup
```
