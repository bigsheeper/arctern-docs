# 代码执行

在指定笔记本中执行给定的 python 代码。`scope`  用于隔离Python代码执行的上下文，使用不同 `scope` 执行代码，则代码中的变量相互不影响。如需在先后执行的代码中保持相同的上下文，则需使用相同的`scope`。

## 请求说明

- Method: **POST**
- URL: `/command`
- Headers:
    - `Content-Type: application/json`
- Body:
```json
{
    "interpreter_type": "interpreter_type",
    "interpreter_name": "interpreter_name",
    "notebook": "notebook_id",
    "command": "import sys\nprint(len(sys.argv))"
}
```

参数说明：

- interpreter_type：解释器类型，此处为 "python"；
- interpreter_name：配置了 arctern 环境的 python 解释器名称；
- notebook：笔记本的 id；
- command：待执行的 `python` 代码。

## 样例

### Python

本文示例代码使用 Python 的 `requests` 库调用 `Arctern RESTful API`，使用下面的命令安装 `requests`：

```bash
pip install requests
```

调用示例：

```python
import requests
import json

url = "http://localhost:8080/command"

payload = {
    "interpreter_type": "interpreter_type",
    "interpreter_name": "interpreter_name",
    "notebook": "notebook_id",
    "command": "import sys\nprint(len(sys.argv))"
}
headers = {
  'Content-Type': 'application/json'
}

response = requests.request("POST", url, headers=headers, data=json.dumps(payload))

print(response.text.encode('utf8'))
```

### curl

```bash
curl --location --request POST 'http://localhost:8080/command' \
--header 'Content-Type: application/json' \
--data-raw '{
    "interpreter_type": "interpreter_type",
    "interpreter_name": "interpreter_name",
    "notebook": "notebook_id",
	"comamnd":"import sys\nprint(len(sys.argv))"
}'
```

## 返回说明

正常执行：

```json
{
    "status": "success",
    "code": "200",
    "message": "execute command successfully!"
}
```

执行对应代码出现异常：

```json
{
    "status": "error",
    "code": "400",
    "message": "cannot import package1"
}
```

