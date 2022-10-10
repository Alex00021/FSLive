
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

/**
 *@program: new_live
 *@description:
 *@author: Alex.LingJiaHua
 *@create: 2022-10-10
 */

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_sharp, color: Colors.black45,),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              FlatButton(
                height: 80,
                  minWidth: double.infinity,
                  color: Colors.blue,
                  shape: StadiumBorder(),
                  onPressed: (){
                S.load(Locale('en', 'EN'));
              }, child: Text("English")),
              SizedBox(
                height: 30,
              ),
              FlatButton(
                  height: 80,
                  minWidth: double.infinity,
                  color: Colors.blue,
                  shape: StadiumBorder(),
                  onPressed: (){
                    S.load(Locale('zn', 'ZH'));
                  }, child: Text("Chinese"))
            ],
          ),
        ),
      ),
    );
  }
}
