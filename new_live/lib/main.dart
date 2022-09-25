import 'dart:async';

import 'package:flutter/material.dart';

import 'home_main_page.dart';
import 'index_root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FSAD(title: '',),
    );
  }
}

class FSAD extends StatefulWidget {
  const FSAD({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<FSAD> createState() => _FSADState();
}

class _FSADState extends State<FSAD> {
  Timer? timer;
  int count = 8;

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment(1.0, -1.0), // 右上角对齐
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: Image.asset("assets/images/image_01.jpg",//广告图
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 30.0, 10.0, 0.0),
            child: FlatButton(
              color: Color.fromRGBO(0, 0, 0, 0.3),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Text(
                "$count 跳过",
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              onPressed: () {
                navigationPage();
              },
            ),
          )
        ],
      ),
    );
  }

  void startTime() async {
    //设置启动图生效时间
    var _duration = const Duration(seconds: 1);
    Timer(_duration, () {
      // 空等1秒之后再计时
      timer = Timer.periodic(const Duration(milliseconds: 1000), (v) {
        count--;
        if (count == 0) {
          navigationPage();
        } else {
          setState(() {});
        }
      });
      // return timer;
    });
  }

  void navigationPage() {
    timer?.cancel();
    Navigator.of(context).pushReplacement(PageRouteBuilder(
        pageBuilder: (cxt,ani1,ani2){
          return FadeTransition(opacity: ani1, child: const IndexRoot());
        }
    ));
  }
}
