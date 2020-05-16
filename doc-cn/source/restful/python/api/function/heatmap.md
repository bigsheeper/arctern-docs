# 热力图

根据 SQL 语句以及相关画图参数绘制热力图，将绘图结果以 base64 编码方式返回。

## 请求说明

- HTTP方法: **POST**
- 请求URL: `/heatmap`
- Headers:
    - `Content-Type: application/json`
- Body:
```json
{
    "interpreter_type": "python",
    "interpreter_name": "interpreter_name",
    "notebook": "notebook_id",
    "paragraph": "paragraph_id",
    "input_data": {
        "point": "point_series_name",
        "weight": "weight_series_name"
        },
    "params": {
        "width": 1024,
        "height": 896,
        "bounding_box": [-75.37976, 40.191296, -71.714099, 41.897445],
        "coordinate_system": "EPSG:4326",
        "map_zoom_level": 10,
        "aggragation_type": "sum"
    }
}
```

参数说明：

- interpreter_type：解释器类型，此处为 "python"；
- interpreter_name：配置了 arctern 环境的 python 解释器名称；
- notebook：绘制热力图时的 notebook id；
- paragraph：可选参数，绘制热力图时的 paragraph id，缺省时会自动创建一个新的 paragraph；
- input_data：渲染热力图输入数据的参数名称。两个参数的类型均为 pandas.Series。point 为 WKB 格式的数据点的位置，weight 为热力值；
- params：绘图参数，具体说明如下，详见 [Arctern-Spark 绘图接口文档](../../../spark/api/render/function/layer/heatmap.md)：
    - width：图片宽度；
    - height：图片高度；
    - bounding_box：渲染图片所表示的地理范围 [`x_min`, `y_min`, `x_max`, `y_max`]；
    - coordinate_system：输入数据的坐标系统，详见 [World Geodetic System](https://en.wikipedia.org/wiki/World_Geodetic_System)；
    - map_zoom_level：地图放大比例，取值范围 `(1 ~ 15)`；
    - aggregation_type：聚合类型。

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

url = "http://localhost:8080/heatmap"

payload = {
    "interpreter_type": "python",
    "interpreter_name": "interpreter_name",
    "notebook": "2F82DR4BR",
    "paragraph": "paragraph_1589529262161_259189648",
    "input_data": {
        "point": "point",
        "weight": "weight"
        },
    "params": {
        "width": 1024,
        "height": 896,
        "bounding_box": [-75.37976, 40.191296, -71.714099, 41.897445],
        "coordinate_system": "EPSG:4326",
        "map_zoom_level": 10
    }
}
headers = {
  'Content-Type': 'application/json'
}

response = requests.request("POST", url, headers=headers, data=json.dumps(payload))

print(response.text.encode('utf8'))
```

### curl

```bash
curl --location --request POST 'http://localhost:8080/heatmap' \
--header 'Content-Type: application/json' \
--data-raw '{
    "interpreter_type": "python",
    "interpreter_name": "interpreter_name",
    "notebook": "notebook_id",
    "paragraph": "paragraph_id",
    "input_data": {
        "point": "point_series_name",
        "weight": "weight_series_name"
        },
    "params": {
        "width": 1024,
        "height": 896,
        "bounding_box": [-75.37976, 40.191296, -71.714099, 41.897445],
        "coordinate_system": "EPSG:4326",
        "map_zoom_level": 10
    }
}'
```

## 返回说明

成功样例：

```json
{
    "status": "success",
    "code": "200",
    "result": "使用 base64 编码后的热力图数据"
}
```

失败样例：

```json
{
    "code": -1,
    "message": "Table or view not found: error_table; line 1 pos 14;\n'Project [*]\n+- 'UnresolvedRelation [error_table]\n",
    "status": "error"
}
```

