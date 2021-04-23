import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/**
 * Created by z2wenfa on 2021/4/23.
 * 轮播图使用Demo
 */

///[itemCount]:子项数量[int]
///[itemBuilder]:子项生成器
///[pagination]:指示器[SwiperPagination]
class SwiperDemo extends StatefulWidget {
  SwiperDemo({Key key}) : super(key: key);

  @override
  _SwiperDemoState createState() => _SwiperDemoState();
}

class _SwiperDemoState extends State<SwiperDemo> {
  var _icons = [
    "assets/images/beauty.webp",
    "assets/images/beauty.webp",
    "assets/images/beauty.webp",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Swiper(
        itemCount: _icons.length,
        itemBuilder: (buildContext, index) => Container(
          child: InkWell(
            child: Image.asset(
              _icons[index],
              fit: BoxFit.cover,
            ),
            onTap: () => {print("当前点击的是$index")},
          ),
        ),
        pagination: SwiperPagination(),
      ),
    );
  }
}
