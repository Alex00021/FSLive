import 'package:flutter/material.dart';

/**
 *@program: new_live
 *@description:
 *@author: Alex.LingJiaHua
 *@create: 2022-09-26
 */

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("輸入閣下要搜尋的主播名稱", style: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            ///
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black45,),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
