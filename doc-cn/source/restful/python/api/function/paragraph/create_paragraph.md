# 创建段落

## 请求说明

- HTTP方法: **POST**
- 请求URL: `/notebook/[noteId]/paragraph`
- Headers:
    - `Content-Type: application/json`
- Body:
```json
{
  "title": "Paragraph insert revised",
  "text": "%python\nprint(\"ok\")"
}
```

## 样例

### Python

本文示例代码使用 Python 的 `requests` 库调用 `Arctern RESTful API`，使用下面的命令安装 `requests`：

```shell
pip install requests
```

调用示例

- 创建标题为 nyc_taxi 的段落

```python
import requests

url = "http://localhost:8080/notebook/2AZPHY918/paragraph"

payload = {
  "title": "nyc_taxi",
  "text": "%python\nprint(\"ok\")"
}
headers = {
  'Content-Type': 'application/json'
}

response = requests.request("POST", url, headers=headers, data=payload)

print(response.text.encode('utf8'))
```

### curl

- 创建标题为 nyc_taxi 的段落

```shell
curl --location --request POST 'http://localhost:8080/notebook/2AZPHY918/paragraph' \
--header 'Content-Type: application/json' \
--data-raw '{
  "title": "nyc_taxi",
  "text": "%python\nprint(\"ok\")"
}'
```

## 返回说明

成功样例：

```json
{
  "status": "OK",
  "message": "",
  "body": "20151218-100330_1754029574"
}
```
