��          \               �   g   �   �     �   �  z   /  �   �  [   �  {  �  x  c  `   �  p   =  �   �  k   C  �   �  Z   �	  ]  �	   "Touch" means two geometries have common points, and the common points locate only on their boundaries. For each geometry in the GeoSeries and the corresponding geometry given in ``other``, tests whether the first geometry touches the other. If ``other`` is a GeoSeries, this function tests the "touch" relation between each geometry in the GeoSeries and the geometry with the same index in ``other``. If ``other`` is a geometry, this function tests the "touch" relation between each geometry in the GeoSeries and ``other``. Mask of boolean values for each element in the GeoSeries that indicates whether it touches the geometries in ``other``.  * *True*: The first geometry touches the other. * *False*: The first geometry does not touch the other. The geometry or GeoSeries to test whether it touches the geometries in the first GeoSeries. The geometry or GeoSeries to test whether it touches the geometries in the first GeoSeries.  * If ``other`` is a geometry, this function tests the "touch" relation between each geometry in the GeoSeries and ``other``. * If ``other`` is a GeoSeries, this function tests the "touch" relation between each geometry in the GeoSeries and the geometry with the same index in ``other``. Project-Id-Version: Arctern 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-06-15 09:57+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 “接触”表示两个几何体具有公共点，并且公共点仅位于它们的边界上。 对于 GeoSeries 中的每个几何体以及 ``other`` 中给出的对应几何体，检测它们是否接触。 如果 ``other`` 是一个 GeoSeries，则此方法检查 GeoSeries 中的每个几何体是否接触 ``other`` 中具有相同索引的几何体。 如果 ``other`` 是几何体，则此方法检查 GeoSeries 中的每个几何体是否接触 ``other``。 GeoSeries 中每个元素对应的布尔值，指示元素是否接触 ``other`` 中的几何体。* *True*: 第一个几何体接触另一个几何体。* *False*: 第一个几何体不接触另一个几何体。 用于检查与第一个 GeoSeries 中的几何体是否接触的几何体或 GeoSeries。 用于检查与第一个 GeoSeries 中的几何体是否接触的几何体或 GeoSeries。* 如果 ``other`` 是几何体，则此方法检查 GeoSeries 中的每个几何体是否接触 ``other``。* 如果 ``other`` 是一个 GeoSeries，则此方法检查 GeoSeries 中的每个几何体是否接触 ``other`` 中具有相同索引的几何体。 