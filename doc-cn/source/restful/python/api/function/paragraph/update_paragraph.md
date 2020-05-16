# 更新段落

## 请求说明

- HTTP方法: **PUT**
- 请求URL: `/notebook/[noteId]/paragraph/[paragraphId]`
- Headers:
    - `Content-Type: application/json`
- Body:
```json
{
  "title": "Hello world",
  "text": "println(\"hello world\")"
}
```

主要参数说明：

- "title"：段落的标题;
- "text"：段落中的代码。

## 样例

### Python

本文示例代码使用 Python 的 `requests` 库调用 `Arctern RESTful API`，使用下面的命令安装 `requests`：

```shell
pip install requests
```

调用示例

- 更新 id 为"20151218-100330_1754029574"的段落

```python
import requests

url = "http://localhost:8080/notebook/2AZPHY918/paragraph/20151218-100330_1754029574"

payload = {
  "title": "Hello world",
  "text": "println(\"hello world\")"
}
headers = {
  'Content-Type': 'application/json'
}

response = requests.request("PUT", url, headers=headers, data=payload)

print(response.text.encode('utf8'))
```

### curl

- 更新 id 为"20151218-100330_1754029574"的段落

```shell
curl --location --request PUT 'http://localhost:8080/notebook/2AZPHY918/paragraph/20151218-100330_1754029574' \
--header 'Content-Type: application/json' \
--data-raw '{
  "title": "Hello world",
  "text": "println(\"hello world\")"
}'
```

## 返回说明

成功样例：

```json
{
  "status": "OK",
  "message": ""
  }
}
```
