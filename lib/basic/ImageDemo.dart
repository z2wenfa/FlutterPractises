import 'package:flutter/cupertino.dart';

//用于显示一张图片,可以从文件、内存资源中加载,可以指定适应方式、样式、颜色混合模式、重复模式等
//Image.asset() 显示本地资源
//Image.network() 显示网络图片
//

final String imageurl= "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg40.51tietu.net%2Fpic%2F2017-030613%2F20170306133445pkbdph0tlv0616520280x180.jpg&refer=http%3A%2F%2Fimg40.51tietu.net&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1621468998&t=f2cb270477beba11be700dd287e8d565";


class ImageDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/beauty.webp"),
          Image.network(imageurl)
        ],
      ),
    );
  }

}