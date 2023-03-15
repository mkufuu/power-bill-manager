# README

## HTTP status codes

| Status code                | Rails helper | Description                                                                                                   |
| -------------------------- | ------------ | ------------------------------------------------------------------------------------------------------------- |
| 200 OK                     |              | Request was processed with not issues encountered                                                             |
| 201 CREATED                |              | Server accepted the request payload and created the given resource                                            |
| 302 FOUND                  |              |                                                                                                               |
| 307 TEMPARARILY REDIRECTED |              |                                                                                                               |
| 308 PERMANENTLY REDIRECTED |              | Server got the request and redirected to a new URL/resource and has informed the browser of the move / change |
| 403 FORBIDEN               |              | Client is not authenticated / authorized to consume the resource / endpoint                                   |
| 404 NOT FOUND              |              | Resource being request by the client can't be found the in the server / API                                   |
| 422 UNPROCESSABLE ENTITY   |              | Payload sent by the client has failed validation and thus won't be processed by the server                    |
| 500 INTERNAL SERVER ERROR  |              | Server / API has encountered an issue that has nothing to do with the request from the user                   |

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
