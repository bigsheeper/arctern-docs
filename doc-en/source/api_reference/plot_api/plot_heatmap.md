# plot.heatmap

绘制热力图。

**plot.heatmap(ax, points, weights, bounding_box,
               coordinate_system='EPSG:3857',
               aggregation_type='max',
               \*\*extra_contextily_params)**

直接在matplotlib中绘制点图。

参数

- ax(matplotlib.axes.Axes) -- 用来绘制几何体的坐标轴。

- points(GeoSeries(dtype: GeoDtype)) -- 所需绘制的点，格式为WKB。

- weights(Series(dtype: float64|int64)) -- 热力值。

- bounding_box(list) -- 图片对应的地理坐标区域，以 [x_min, y_min, x_max, y_max] 的形式表示一个矩形区域。图片左下角的像素坐标 (0, 0) 对应地理坐标 (x_min, y_min) ，图片右上角的像素坐标 (width, height) 对应地理坐标 (x_max, y_max)。

- coordinate_system(str) -- 可选参数，表示输入数据所属的地理坐标系统，默认值为"EPSG:3857"，当前支持的地理坐标系统请参照 <https://spatialreference.org/>。

- aggregation_type(str) -- 可选参数，表示输入数据到图片像素热力的聚合方式，默认值为"max"。

- extra_contextily_params(dict) -- 剩余参数, 传递给 contextily.add_basemap, 可用于[更换地图背景, 或修改地图提供商](https://contextily.readthedocs.io/en/latest/providers_deepdive.html).

## 示例:

```python
import pandas as pd
import numpy as np
import arctern
import matplotlib.pyplot as plt
# 读取 csv 文件并创建绘图数据
# test_data.csv下载链接: https://raw.githubusercontent.com/arctern-io/arctern-resources/benchmarks/benchmarks/dataset/layer_rendering_test_data/test_data.csv
df = pd.read_csv("/path/to/test_data.csv", dtype={'longitude':np.float64, 'latitude':np.float64, 'color_weights':np.float64, 'size_weights':np.float64, 'region_boundaries':np.object})
points = arctern.GeoSeries.point(df['longitude'], df['latitude'])
# 根据 df['color_weights'] 绘制热力图
fig, ax = plt.subplots(figsize=(10, 6), dpi=200)
arctern.plot.heatmap(ax, points, df['color_weights'], bounding_box=[-74.01424568752932, 40.72759334104623, -73.96056823889673, 40.76721122683304], coordinate_system='EPSG:4326')
plt.show() 
```