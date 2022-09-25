import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@Description     xxxx
///@author          Alex.Ling
///@create          2022-09-23 23:54
///
class MyPage extends StatefulWidget {
  const  MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State< MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
