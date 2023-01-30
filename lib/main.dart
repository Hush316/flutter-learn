import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('hello flutter'),
          centerTitle: true,
        ),
        body: Column(
          children: const [MyApp()],
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
