Þ          |               Ü   &   Ý   A     :   F  )     ç   «          §  	  6     @     Ò     ê  x    *   z  3   ¥  @   Ù  '     ä   B     '  s   4  >  ¨     ç	     
     
   Axes where geometries will be plotted. Bounding box of the map. For example, [west, south, east, north]. Opacity of points, ranged from 0.0 to 1.0, by default 1.0. Plots a weighted point map in Matplotlib. Range of color gradient, by default ["#115f9a", "#d0f400"]. Either use ["hex_color"] to specify a same color for all geometries, or ["hex_color1", "hex_color2"] to specify a color gradient ranging from "hex_color1" to "hex_color2". Sequence of points. The Coordinate Reference System (CRS) set to all geometries, by default 'EPSG:3857'. Only supports SRID as a WKT representation of CRS by now. Weight range [w1, w2] of ``color_gradient``, by default [0, 0]. Needed only when ``color_gradient`` has two values ["color1", "color2"]. Binds w1 to "color1", and w2 to "color2". When weight < w1 or weight > w2, the weight will be truncated to w1 or w2 accordingly. Weight range [w1, w2] of ``size_weights``, by default [3]. When weight < w1 or weight > w2, the weight will be truncated to w1 or w2 accordingly. Weights of point color. Weights of point size. Project-Id-Version: Arctern 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-06-13 11:47+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 ç»å¶å ä½å¾å½¢çç»å¸çåæ è½´ã å°å¾çè¾¹çï¼å¦ [west, south, east, north]ã ç¹çä¸éæåº¦ï¼èå´æ¯ 0.0 å° 1.0ï¼é»è®¤å¼ä¸º 1.0ã å¨ Matplotlib ä¸­ç»å¶å æç¹å¾ã é¢è²æ¢¯åº¦ï¼é»è®¤å¼ä¸º ["#115f9a", "#d0f400"]ãä½ å¯ä»¥ä½¿ç¨ ["hex_color"] æ¥ä¸ºææå ä½ä½æå®ç¸åçé¢è²ï¼æèä½¿ç¨ ["hex_color1", "hex_color2"] æ¥æå®ä» "hex_color1" å° "hex_color2" çæ¸åè²ã ä¸ç»ç¹ã ä¸ºææå ä½å¾å½¢è®¾ç½® CRSï¼Coordinate Reference Systemï¼åæ åèç³»ï¼ï¼é»è®¤å¼ä¸º 'EPSG:3857'ï¼ã ``color_gradient`` çæéèå´ [w1, w2]ï¼é»è®¤å¼ä¸º 0ãåªæå¨ ``color_gradient`` æä¸¤ä¸ªå¼ ["color1", "color2"] çæåµä¸æéè¦æå® ``color_bound``ãå° "color1" ç»å®å° w1ï¼å° "color2" ç»å®å° w2ãå½æä¸ªæéå°äº w1 æå¤§äº w2 æ¶ï¼æ­¤æéå°ç¸åºå°è¢«æªæ­ä¸º w1 æ w2ã ``size_weights`` çæéèå´ [w1, w2]ï¼é»è®¤å¼ä¸º [3]ãå½æä¸ªæéå°äº w1 æå¤§äº w2 æ¶ï¼æ­¤æéå°ç¸åºå°è¢«æªæ­ä¸º w1 æ w2ã ç¹é¢è²çæéã ç¹å¤§å°çæéã 