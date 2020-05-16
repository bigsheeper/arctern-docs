# 运行笔记本中的所有段落

## 请求说明

- HTTP方法: **POST**
- 请求URL: `/notebook/job/[noteId]`
- Headers:
    - `Content-Type: application/json`

## 样例

### Python

本文示例代码使用 Python 的 `requests` 库调用 `Arctern RESTful API`，使用下面的命令安装 `requests`：

```shell
pip install requests
```

调用示例

- 运行 id 为"2AZPHY918"的笔记本中的所有段落

```python
import requests

url = "http://localhost:8080/notebook/job/2AZPHY918"

headers = {
  'Content-Type': 'application/json'
}

response = requests.request("POST", url, headers=headers)

print(response.text.encode('utf8'))
```

### curl

- 运行 id 为"2AZPHY918"的笔记本中的所有段落

```shell
curl --location --request POST 'http://localhost:8080/notebook/job/2AZPHY918' \
--header 'Content-Type: application/json'
```

## 返回说明

成功样例：

```json
{"status": "OK"}
```
