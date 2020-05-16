API
====

# 笔记本

arctern RESTful server 通过笔记本(notebook)对用户操作的上下文进行管理。每个笔记本拥有独立的上下文信息，如载入的文件数据和创建的数据表。使用相同笔记本的用户可以共享该笔记本的上下文信息。

## 请求说明

> **注意：** arctern RESTful server 的笔记本相关的请求标准与 Zepplin 保持一致。以下内容仅展示与创建、删除、运行、停止相关的请求示例，更详尽的使用方法请参考 <https://zeppelin.apache.org/docs/0.9.0-SNAPSHOT/usage/rest_api/notebook.html>

.. toctree::
   :maxdepth: 1

   function/notebook/create_notebook
   function/notebook/delete_notebook
   function/notebook/run_notebook
   function/notebook/stop_notebook