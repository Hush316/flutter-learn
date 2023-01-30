import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('hello flutter'),
          centerTitle: true,
        ),
        body: Column(
          children: const [
            MyApp(),
            SizedBox(
              height: 20,
            ),
            CircularImage(),
            SizedBox(
              height: 20,
            ),
            ClipOvalImage(),
            LocalImage()
          ],
        )),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 112,
        height: 160,
        decoration: const BoxDecoration(color: Colors.yellow),
        child: Image.network(
          'https://img0.baidu.com/it/u=1438662390,1195638400&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1675270800&t=edbc0d6e61d3af842a38dc312dc541e9',
          scale: 3,
          alignment: Alignment.centerLeft,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// 实现一个圆形图片
class CircularImage extends StatelessWidget {
  const CircularImage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.yellow,
          image: const DecorationImage(
              image: NetworkImage(
                  'https://img0.baidu.com/it/u=1438662390,1195638400&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1675270800&t=edbc0d6e61d3af842a38dc312dc541e9'),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)),
    );
  }
}

// 实现一个圆形图片 使用ClipOval
class ClipOvalImage extends StatelessWidget {
  const ClipOvalImage({super.key});
  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: Image.network(
      'https://img0.baidu.com/it/u=1438662390,1195638400&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1675270800&t=edbc0d6e61d3af842a38dc312dc541e9',
      width: 150,
      height: 150,
      fit: BoxFit.cover,
    ));
  }
}

// 加载本地图片
class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: const BoxDecoration(color: Colors.yellow),
      child: Image.asset(
        "images/kabuto.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
