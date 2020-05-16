# 删除解释器

## 请求说明

- HTTP方法: **DELETE**
- 请求URL: `/interpreter/setting/[interpreter ID]`
- Headers:
    - `Content-Type: application/json`

## 样例

### Python

本文示例代码使用 Python 的 `requests` 库调用 `Arctern RESTful API`，使用下面的命令安装 `requests`：

```shell
pip install requests
```

调用示例

- 删除 id 为"2AYW25ANY"的解释器

```python
import requests

url = "http://localhost:8080/interpreter/setting/2AYW25ANY"

headers = {
  'Content-Type': 'application/json'
}

response = requests.request("DELETE", url, headers=headers)

print(response.text.encode('utf8'))
```

### curl

- 删除 id 为"2AYW25ANY"的解释器

```shell
curl --location --request DELETE 'http://localhost:8080/interpreter/setting/2AYW25ANY' \
--header 'Content-Type: application/json'
```

## 返回说明

成功样例：

```json
{"status":"OK"}
```
