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
        title: Text(S.of(context).mine_language, style: const TextStyle(color: Colors.black45, fontSize: 20),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_sharp, color: Colors.black45,),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              FlatButton(
                height: 53,
                  minWidth: double.infinity,
                  color: Colors.blueGrey,
                  shape: const StadiumBorder(),
                  onPressed: (){
                S.load(const Locale('en', 'EN'));
              }, child: const Text("English", style: TextStyle(color: Colors.white))),
              const SizedBox(
                height: 30,
              ),
              FlatButton(
                  height: 53,
                  minWidth: double.infinity,
                  color: Colors.blueGrey,
                  shape: const StadiumBorder(),
                  onPressed: (){
                    S.load(const Locale('zh', 'CN'));
                  }, child: const Text("Chinese", style: TextStyle(color: Colors.white),))
            ],
          ),
        ),
      ),
    );
  }
}
