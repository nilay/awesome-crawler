# README

## Get All URLs

**GET** : `v1/crawls'

## Example Request

```shell
curl -X GET -H 'Content-Type: application/json' \
   http://localhost:3000/v1/crawls
```

## Success Response

```json
{
  "success": true,
  "message": null,
  "data": {
    "websites": [
      {
        "id": 1,
        "url": "http://google.com",
        "content": "Google Search",
        "status": "done",
        "crawl_started_at": "2017-04-06 14:02:34",
        "crawl_completed_at": "2017-04-06 14:02:38"
      },
      {
        "id": 2,
        "url": "http://wikipedia.com",
        "content": "Wikipedia",
        "status": "done",
        "crawl_started_at": "2017-04-06 14:02:34",
        "crawl_completed_at": "2017-04-06 14:02:38"
        "crawl_completed_at": null
      }
    ]
  }
}

```
# Submit API to crawl

**POST** : `v1/crawls'


## Parameters

Name        | Description                               | Required/Optional
----------- | ----------------------------------------- | -----------------
url | Url | Required


## Example Request

```shell
curl -X POST -H 'Content-Type: application/json' \
  -d '{"url":"http://google.com"}
  http://localhost:3000/v1/crawls
```


## Success Response

```json
{ 
"success": true, 
"message": "Url is stored, will be crawled shortly",
"data": null
}
```