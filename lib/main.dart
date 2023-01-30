import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('hello flutter'),
          centerTitle: true,
        ),
        body: Column(
          children: const [MyApp(), MyButton(), MyText()],
        )),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: const EdgeInsets.fromLTRB(0, 60, 0, 0), //外边距
      alignment: Alignment.topCenter, //配置Container容器内元素的方向
      width: 200,
      height: 200,
      // transform: Matrix4.translationValues(30, -20, -20), //位移
      // transform: Matrix4.rotationZ(0.2), //旋转
      transform: Matrix4.skewY(0.2), //沿Y轴倾斜
      decoration: BoxDecoration(
          color: Colors.red, // 背景颜色
          border: Border.all(color: Colors.yellow, width: 2), //边框
          borderRadius: BorderRadius.circular(10), //圆角
          boxShadow: const [
            BoxShadow(color: Colors.blue, blurRadius: 20.0)
          ], //阴影效果
          // LinearGradient 背景线性渐变  RadialGradient径向渐变
          gradient: const RadialGradient(colors: [Colors.red, Colors.black])),
      child: const Text(
        'hello flutter ',
        style: TextStyle(color: Colors.white),
      ),
    ));
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 40,
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      child: const Text('按 钮',
          style: TextStyle(color: Colors.white, fontSize: 20)),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: const BoxDecoration(color: Colors.yellow),
      child: const Text(
        '你好,我是Text组件,你好,我是Text组件,你好,我是Text组件,你好,我是Text组件,你好,我是Text组件,你好,我是Text组件,你好,我是Text组件,你好,我是Text组件,你好,我是Text组件,你好,我是Text组件,你好,我是Text组件,你好,我是Text组件,你好,我是Text组件,你好,我是Text组件,',
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis, //溢出文字显示点
        maxLines: 2, //最多显示几行
        style: TextStyle(
            color: Colors.red,
            fontSize: 20,
            fontWeight: FontWeight.w900, //字体加粗
            fontStyle: FontStyle.italic, //字体倾斜
            letterSpacing: 2, //字间距
            decoration: TextDecoration.underline //字体修饰线
            ),
      ),
    );
  }
}
