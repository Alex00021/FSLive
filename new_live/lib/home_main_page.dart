import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@Description     xxxx
///@author          Alex.Ling
///@create          2022-09-23 23:14
class HotMainPage extends StatefulWidget {
  const HotMainPage({Key? key}) : super(key: key);

  @override
  State<HotMainPage> createState() => _HotMainPageState();
}

class _HotMainPageState extends State<HotMainPage> {
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
              color: Colors.blueGrey,
              width: double.infinity,
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
