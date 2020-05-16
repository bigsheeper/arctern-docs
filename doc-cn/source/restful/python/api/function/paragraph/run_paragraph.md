# 运行段落

## 请求说明

- HTTP方法: **POST**
- 请求URL: `/notebook/run/[noteId]/[paragraphId]`
- Headers:
    - `Content-Type: application/json`
- Body:
```json
{
  "name": "name of new note",
  "params": {
    "formLabel1": "value1",
    "formLabel2": "value2"
  }
}
```

主要参数说明：

- "name"：需要运行的笔记本名称。

## 样例

### Python

本文示例代码使用 Python 的 `requests` 库调用 `Arctern RESTful API`，使用下面的命令安装 `requests`：

```shell
pip install requests
```

调用示例

- 运行 id 为"20151218-100330_1754029574"的段落

```python
import requests

url = "http://localhost:8080/notebook/run/2AZPHY918/20151218-100330_1754029574"

payload = {
  "name": "nyc_taxi",
  "params": {
    "formLabel1": "value1",
    "formLabel2": "value2"
  }
}
headers = {
  'Content-Type': 'application/json'
}

response = requests.request("POST", url, headers=headers, data=payload)

print(response.text.encode('utf8'))
```

### curl

- 运行 id 为"20151218-100330_1754029574"的段落

```shell
curl --location --request POST 'http://localhost:8080/notebook/run/2AZPHY918/20151218-100330_1754029574' \
--header 'Content-Type: application/json' \
--data-raw '{
  "name": "nyc_taxi",
  "params": {
    "formLabel1": "value1",
    "formLabel2": "value2"
  }
}'
```

## 返回说明

成功样例：

```json
{"status": "OK"}
```
