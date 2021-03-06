import os

def replace(source_api_path,src_prefix,dst_prefix):
    for html_file in os.listdir(source_api_path):
        if html_file.endswith('.html'):
           with open(source_api_path + os.sep + html_file, 'r') as f:
                contents = f.read()
           contents = contents.replace(src_prefix, dst_prefix)
           if html_file == "Spark_ST_GeomFromGeoJSON.html" or html_file == "ST_GeomFromGeoJSON.html":
               contents = contents.replace("&quot;{&quot","&quot;{\\&quot")
               contents = contents.replace(">type<",">type\\<")
               contents = contents.replace("&quot;:&quot","&quot;:\\&quot")
               contents = contents.replace(">Point<",">Point\\<")
               contents = contents.replace("&quot;,&quot","&quot;,\\&quot")
               contents = contents.replace(">coordinates<",">coordinates\\<")
               contents = contents.replace(">LineString<",">LineString\\<")
               contents = contents.replace(">Polygon<",">Polygon\\<")
           with open(source_api_path + os.sep + html_file, 'w') as f:
                f.write(contents)

def ignore_python_prompt():
    with open("build/html/_static/pygments.css", 'r') as f:
                contents = f.read()
    contents = contents.replace(".highlight .go { color: #888888 }",".highlight .go { color: #888888; -moz-user-select: none; -o-user-select:none; -khtml-user-select:none; -webkit-user-select:none; -ms-user-select:none; user-select:none }")
    contents = contents.replace(".highlight .gp { color: #000080; font-weight: bold }",".highlight .gp { color: #000080; font-weight: bold; -moz-user-select: none; -o-user-select:none; -khtml-user-select:none; -webkit-user-select:none; -ms-user-select:none; user-select:none }")
    with open("build/html/_static/pygments.css", 'w') as f:
                f.write(contents)

def add_content(path):
    file_read = open(path, 'r')
    udf_file_read = open('replace_udf.py','r')
    content = file_read.read()
    contentadd = udf_file_read.read()
    pos = content.find("if __name__ == '__main__':")
    file_read.close()
    udf_file_read.close()
    file_write = open(path, 'w')
    content = content[:pos] + contentadd + content[pos:]
    file_write.write(content)
    file_write.close()

def delete_content(path):
    file_read = open(path, 'r')
    content = file_read.read()
    pos_begin = content.find("import functools")
    pos_end = content.find("if __name__ == '__main__':")
    file_write = open(path, 'w')
    content = content[:pos_begin] + content[pos_end:]
    file_write.write(content)
    file_write.close()

if __name__ == "__main__":
    path = os.popen('which sphinx-build').readline().replace("\n", "")
    add_content(path)
    os.system('make clean')
    os.system('make html')
    os.system('make gettext')
    os.system('make html')
    delete_content(path)

    source_api_path = 'build/html/api/pandas_api/geospatial/function/aggr'
    src_prefix = '>arctern._wrapper_func.<'
    dst_prefix = '>arctern.<'
    replace(source_api_path,src_prefix,dst_prefix)

    source_api_path = 'build/html/api/pandas_api/geospatial/function/geospatial'
    replace(source_api_path,src_prefix,dst_prefix)

    source_api_path = 'build/html/api/pandas_api/render/function/plot'
    src_prefix = '>arctern._plot.<'
    replace(source_api_path,src_prefix,dst_prefix)

    source_api_path = 'build/html/api/spark_api/geospatial/function/aggr'
    dst_prefix = '>arctern_pyspark.<'
    replace(source_api_path,src_prefix,dst_prefix)

    source_api_path = 'build/html/api/spark_api/geospatial/function/geospatial'
    src_prefix = '>arctern_pyspark._wrapper_func.<'
    dst_prefix = '>arctern_pyspark.<' 
    replace(source_api_path,src_prefix,dst_prefix)

    source_api_path = 'build/html/api/spark_api/register/function'
    src_prefix = '>arctern_pyspark.register.<'
    dst_prefix = '>arctern_pyspark.<' 
    replace(source_api_path,src_prefix,dst_prefix)
    ignore_python_prompt()