# 解释器

arctern RESTful server 支持多种后端处理的语言和环境。对于特定的 python 环境，用户需要在为其创建和配置相应的解释器之后才可以进行使用。

## 请求说明

> **注意：** arctern RESTful server 的解释器相关的请求标准与 Zepplin 保持一致。以下内容仅展示与创建、修改、删除相关的请求示例，更详尽的使用方法请参考 <https://zeppelin.apache.org/docs/0.9.0-SNAPSHOT/usage/rest_api/interpreter.html>

### 创建解释器
- HTTP方法: **POST**
- 请求URL: `/interpreter/setting`
- Headers:
    - `Content-Type: application/json`
- Body:
```json
{
    "name": "interpreter_name",
    "group": "python",
    "interpreterGroup": [
        {
            "class": "org.apache.zeppelin.python.PythonInterpreter",
            "defaultInterpreter": true,
            "editor": {
                "completionSupport": true,
                "editOnDblClick": false,
                "language": "python"
            },
            "name": "python"
        }
    ],
    "properties": {
        "zeppelin.python": {
            "description": "Python binary executable path. It is set to python by default.(assume python is in your $PATH)",
            "name": "zeppelin.python",
            "type": "string",
            "value": "/path/to/python"
        }
    }
}
```

### 修改解释器
- HTTP方法: **PUT**
- 请求URL: `/interpreter/setting/[interpreter ID]`
- Headers:
    - `Content-Type: application/json`
- Body:
```json
{
    "name": "interpreter_name",
    "group": "python",
    "interpreterGroup": [
        {
            "class": "org.apache.zeppelin.python.PythonInterpreter",
            "defaultInterpreter": true,
            "editor": {
                "completionSupport": true,
                "editOnDblClick": false,
                "language": "python"
            },
            "name": "python"
        }
    ],
    "properties": {
        "zeppelin.python": {
            "description": "Python binary executable path. It is set to python by default.(assume python is in your $PATH)",
            "name": "zeppelin.python",
            "type": "string",
            "value": "/path/to/python"
        }
    }
}
```

### 删除解释器
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
- 创建名为 python1 的解释器

```python
import requests

url = "http://localhost:8080/interpreter/setting"

payload = {
    "name": "python1",
    "group": "python",
    "interpreterGroup": [
        {
            "class": "org.apache.zeppelin.python.PythonInterpreter",
            "defaultInterpreter": True,
            "editor": {
                "completionSupport": True,
                "editOnDblClick": False,
                "language": "python"
            },
            "name": "python"
        }
    ],
    "properties": {
        "zeppelin.python": {
            "description": "Python binary executable path. It is set to python by default.(assume python is in your $PATH)",
            "name": "zeppelin.python",
            "type": "string",
            "value": "/home/user1/miniconda3/envs/arctern_env/bin/python"
        }
    }
}
headers = {
  'Content-Type': 'application/json'
}

response = requests.request("POST", url, headers=headers, data=payload)

print(response.text.encode('utf8'))
```

- 更新解释器 python1 的路径

```python
import requests

url = "http://localhost:8080/interpreter/setting"

payload = {
    "name": "python1",
    "group": "python",
    "interpreterGroup": [
        {
            "class": "org.apache.zeppelin.python.PythonInterpreter",
            "defaultInterpreter": true,
            "editor": {
                "completionSupport": true,
                "editOnDblClick": false,
                "language": "python"
            },
            "name": "python"
        }
    ],
    "properties": {
        "zeppelin.python": {
            "description": "Python binary executable path. It is set to python by default.(assume python is in your $PATH)",
            "name": "zeppelin.python",
            "type": "string",
            "value": "/home/user2/miniconda3/envs/arctern_env/bin/python"
        }
    }
}
headers = {
  'Content-Type': 'application/json'
}

response = requests.request("PUT", url, headers=headers, data=payload)

print(response.text.encode('utf8'))
```

- 删除解释器 python1

```python
import requests

url = "http://localhost:8080/interpreter/setting/2AYW25ANY"

headers = {
  'Content-Type': 'application/json'
}

response = requests.request("DELETE", url, headers=headers, data=payload)

print(response.text.encode('utf8'))
```

### curl

- 创建名为 python1 的解释器

```shell
curl --location --request POST 'http://localhost:8080/interpreter/setting' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "python1",
    "group": "python",
    "interpreterGroup": [
        {
            "class": "org.apache.zeppelin.python.PythonInterpreter",
            "defaultInterpreter": true,
            "editor": {
                "completionSupport": true,
                "editOnDblClick": false,
                "language": "python"
            },
            "name": "python"
        }
    ],
    "properties": {
        "zeppelin.python": {
            "description": "Python binary executable path. It is set to python by default.(assume python is in your $PATH)",
            "name": "zeppelin.python",
            "type": "string",
            "value": "/home/user1/miniconda3/envs/arctern_env/bin/python"
        }
    }
}'
```

- 更新解释器 python1 的路径

```shell
curl --location --request PUT 'http://localhost:8080/interpreter/setting' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "python1",
    "group": "python",
    "interpreterGroup": [
        {
            "class": "org.apache.zeppelin.python.PythonInterpreter",
            "defaultInterpreter": true,
            "editor": {
                "completionSupport": true,
                "editOnDblClick": false,
                "language": "python"
            },
            "name": "python"
        }
    ],
    "properties": {
        "zeppelin.python": {
            "description": "Python binary executable path. It is set to python by default.(assume python is in your $PATH)",
            "name": "zeppelin.python",
            "type": "string",
            "value": "/home/user2/miniconda3/envs/arctern_env/bin/python"
        }
    }
}'
```

- 删除解释器 python1
```shell
curl --location --request DELETE 'http://localhost:8080/interpreter/setting/2AYW25ANY' \
--header 'Content-Type: application/json' \
```

## 返回说明

成功样例：

```json
{
  "status": "OK",
  "message": "",
  "body": {
    "id": "2AYW25ANY",
    "name": "Markdown setting name",
    "group": "md",
    "properties": {
      "propname": {
        "name": "propname",
        "value": "propvalue",
        "type": "textarea"
    },
    "interpreterGroup": [
      {
        "class": "org.apache.zeppelin.markdown.Markdown",
        "name": "md"
      }
    ],
    "dependencies": [
      {
        "groupArtifactVersion": "groupId:artifactId:version",
        "exclusions": [
          "groupId:artifactId"
        ]
      }
    ]
  }
}
```
