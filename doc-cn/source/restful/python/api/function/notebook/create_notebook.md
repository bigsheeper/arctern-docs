# 创建笔记本

## 请求说明

- HTTP方法: **POST**
- 请求URL: `/notebook`
- Headers:
    - `Content-Type: application/json`
- Body:
```json
{
  "name": "name of new note",
  "paragraphs": [
    {
      "title": "paragraph title1",
      "text": "paragraph text1",
      "config": {
        "title": true,
        "colWidth": 6.0,
        "results": [
          {
            "graph": {
              "mode": "scatterChart",
              "optionOpen": true
            }
          }
        ]
      }
    }
  ]
}
```

## 样例

### Python

本文示例代码使用 Python 的 `requests` 库调用 `Arctern RESTful API`，使用下面的命令安装 `requests`：

```shell
pip install requests
```

调用示例

- 创建名为 arctern_note 的笔记本

```python
import requests

url = "http://localhost:8080/notebook"

payload = {
  "name": "arctern_note",
  "paragraphs": [
    {
      "title": "nyc_taxi",
      "text": "create a table named nyc_taxi",
      "config": {
        "title": True,
        "colWidth": 6.0,
        "results": [
          {
            "graph": {
              "mode": "scatterChart",
              "optionOpen": True
            }
          }
        ]
      }
    }
  ]
}
headers = {
  'Content-Type': 'application/json'
}

response = requests.request("POST", url, headers=headers, data=payload)

print(response.text.encode('utf8'))
```

### curl

- 创建名为 arctern_note 的笔记本

```shell
curl --location --request POST 'http://localhost:8080/notebook' \
--header 'Content-Type: application/json' \
--data-raw '{
  "name": "arctern_note",
  "paragraphs": [
    {
      "title": "nyc_taxi",
      "text": "create a table named nyc_taxi",
      "config": {
        "title": true,
        "colWidth": 6.0,
        "results": [
          {
            "graph": {
              "mode": "scatterChart",
              "optionOpen": true
            }
          }
        ]
      }
    }
  ]
}'
```

## 返回说明

成功样例：

```json
{
  "status": "OK",
  "message": "",
  "body": "2AZPHY918"
}
```
