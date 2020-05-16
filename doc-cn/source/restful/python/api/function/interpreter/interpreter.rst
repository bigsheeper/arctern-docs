API
====

# 解释器

arctern RESTful server 支持多种后端处理的语言和环境。对于特定的 python 环境，用户需要在为其创建和配置相应的解释器之后才可以进行使用。

## 请求说明

> **注意：** arctern RESTful server 的解释器相关的请求标准与 Zepplin 保持一致。以下内容仅展示与创建、更新、重启、删除相关的请求示例，更详尽的使用方法请参考 <https://zeppelin.apache.org/docs/0.9.0-SNAPSHOT/usage/rest_api/interpreter.html>

.. toctree::
   :maxdepth: 1

   function/interpreter/create_interpreter
   function/interpreter/update_interpreter
   function/interpreter/delete_interpreter
   function/interpreter/restart_interpreter