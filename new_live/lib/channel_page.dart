import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@Description     xxxx
///@author          Alex.Ling
///@create          2022-09-23 23:53


class ChannelPage extends StatefulWidget {
  const ChannelPage({Key? key}) : super(key: key);

  @override
  State<ChannelPage> createState() => _ChannelPageState();
}

class _ChannelPageState extends State<ChannelPage> {
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
              color: Colors.yellow,
              width: double.infinity,
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
