# 更新解释器

## 请求说明

- HTTP方法: **PUT**
- 请求URL: `/interpreter/setting/[interpreter ID]`
- Headers:
    - `Content-Type: application/json`
- Body:
```json
{
    "name": "interpreter_name",
    "group": "python",
    "dependencies": [],
    "interpreterGroup": [
        {
            "class": "org.apache.zeppelin.python.PythonInterpreter",
            "defaultInterpreter": true,
            "editor": {
                "completionSupport": true,
                "editOnDblClick": true,
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
            "value": "/path/to/python_interpreter"
        }
    },
    "option": {
        "remote": true,
        "port": -1,
        "perNote": "shared",
        "perUser": "shared",
        "isExistingProcess": false,
        "setPermission": false,
        "owners": [],
        "isUserImpersonate": false
    }
}
```

主要参数说明：

- "name"：解释器名称；
- "properties"."zeppelin.python"."value"：配置了 arctern 环境的 python 解释器的绝对路径。

## 样例

### Python

本文示例代码使用 Python 的 `requests` 库调用 `Arctern RESTful API`，使用下面的命令安装 `requests`：

```shell
pip install requests
```

调用示例

- 更新 id 为"2AYW25ANY"的解释器的路径

```python
import requests

url = "http://localhost:8080/interpreter/setting/2AYW25ANY"

payload = {
    "name": "python1",
    "group": "python",
    "dependencies": [],
    "interpreterGroup": [
        {
            "class": "org.apache.zeppelin.python.PythonInterpreter",
            "defaultInterpreter": True,
            "editor": {
                "completionSupport": True,
                "editOnDblClick": True,
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
            "value": "new /path/to/python_interpreter"
        }
    },
    "option": {
        "remote": True,
        "port": -1,
        "perNote": "shared",
        "perUser": "shared",
        "isExistingProcess": False,
        "setPermission": False,
        "owners": [],
        "isUserImpersonate": False
    }
}
headers = {
  'Content-Type': 'application/json'
}

response = requests.request("PUT", url, headers=headers, data=payload)

print(response.text.encode('utf8'))
```

### curl

- 更新 id 为"2AYW25ANY"的解释器的路径

```shell
curl --location --request PUT 'http://localhost:8080/interpreter/setting/2AYW25ANY' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "interpreter_name",
    "group": "python",
    "dependencies": [],
    "interpreterGroup": [
        {
            "class": "org.apache.zeppelin.python.PythonInterpreter",
            "defaultInterpreter": true,
            "editor": {
                "completionSupport": true,
                "editOnDblClick": true,
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
            "value": "new /path/to/python_interpreter"
        }
    },
    "option": {
        "remote": true,
        "port": -1,
        "perNote": "shared",
        "perUser": "shared",
        "isExistingProcess": false,
        "setPermission": false,
        "owners": [],
        "isUserImpersonate": false
    }
}'
```

## 返回说明

成功样例：

```json
{
  "status": "OK",
  "message": "",
  "body": {
    "id": "2AYW25ANY",
    "name": "python setting name",
    "group": "md",
    "properties": {
      "propname": {
        "name": "propname",
        "value": "propvalue",
        "type": "textarea"
    },
    "interpreterGroup": [
      {
        "class": "org.apache.zeppelin.python.PythonInterpreter",
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
