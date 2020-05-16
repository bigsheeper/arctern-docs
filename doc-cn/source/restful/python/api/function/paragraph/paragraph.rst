API
====

# 段落

笔记本中使用段落(paragraph)管理用户的操作。一个笔记本中可包含多个段落，通过 RESTful 请求可对单个段落进行创建、修改、删除、运行等操作。

## 请求说明

> **注意：** arctern RESTful server 的段落相关的请求标准与 Zepplin 保持一致。以下内容仅展示与创建、更新、删除、运行、停止相关的请求示例，更详尽的使用方法请参考 <https://zeppelin.apache.org/docs/0.9.0-SNAPSHOT/usage/rest_api/notebook.html#paragraph-operations>

.. toctree::
   :maxdepth: 1

   function/paragraph/create_paragraph
   function/paragraph/update_paragraph
   function/paragraph/delete_paragraph
   function/paragraph/run_paragraph
   function/paragraph/stop_paragraph
