# 删除段落

## 请求说明

- HTTP方法: **DELETE**
- 请求URL: `/notebook/[noteId]/paragraph/[paragraphId]`
- Headers:
    - `Content-Type: application/json`

## 样例

### Python

本文示例代码使用 Python 的 `requests` 库调用 `Arctern RESTful API`，使用下面的命令安装 `requests`：

```shell
pip install requests
```

调用示例

- 删除 id 为"20151218-100330_1754029574"的段落

```python
import requests

url = "http://localhost:8080/notebook/2AZPHY918/paragraph/20151218-100330_1754029574"

headers = {
  'Content-Type': 'application/json'
}

response = requests.request("DELETE", url, headers=headers)

print(response.text.encode('utf8'))
```

### curl

- 删除 id 为"20151218-100330_1754029574"的段落

```shell
curl --location --request DELETE 'http://localhost:8080/notebook/2AZPHY918/paragraph/20151218-100330_1754029574' \
--header 'Content-Type: application/json'
```

## 返回说明

成功样例：

```json
{"status": "OK","message": ""}
```
