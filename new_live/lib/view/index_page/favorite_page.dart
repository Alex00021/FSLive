import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@Description     xxxx
///@author          Alex.Ling
///@create          2022-09-23 23:54
///


class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
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
              color: Colors.red,
              width: double.infinity,
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
