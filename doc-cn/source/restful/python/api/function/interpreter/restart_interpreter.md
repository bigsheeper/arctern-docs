# 重启解释器

## 请求说明

- HTTP方法: **PUT**
- 请求URL: `/interpreter/setting/restart/[interpreter ID]`
- Headers:
    - `Content-Type: application/json`
- Body:
```json
{
  "noteId": "[note ID]"
}
```

主要参数说明：

- "noteId"：笔记本 id；

## 样例

### Python

本文示例代码使用 Python 的 `requests` 库调用 `Arctern RESTful API`，使用下面的命令安装 `requests`：

```shell
pip install requests
```

调用示例

- 重启 id 为"2AVQJVC8N"的 notebook 的解释器

```python
import requests

url = "http://localhost:8080/interpreter/setting/restart/2AYW25ANY"

payload = {
  "noteId": "2AVQJVC8N"
}
headers = {
  'Content-Type': 'application/json'
}

response = requests.request("PUT", url, headers=headers, data=payload)

print(response.text.encode('utf8'))
```

### curl

- 重启 id 为"2AVQJVC8N"的 notebook 的解释器

```shell
curl --location --request PUT 'http://localhost:8080/interpreter/setting/restart/2AYW25ANY' \
--header 'Content-Type: application/json' \
--data-raw '{
  "noteId": "2AVQJVC8N"
}'
```

## 返回说明

成功样例：

```json
{"status":"OK"}
```
