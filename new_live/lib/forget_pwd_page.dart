import 'package:flutter/material.dart';
import 'package:new_live/theme/colors.dart';

/**
 *@program: new_live
 *@description:
 *@author: Alex.LingJiaHua
 *@create: 2022-09-29
 */

class ForgetPwdPage extends StatefulWidget {
  const ForgetPwdPage({Key? key}) : super(key: key);

  @override
  State<ForgetPwdPage> createState() => _ForgetPwdPageState();
}

class _ForgetPwdPageState extends State<ForgetPwdPage> {


  var number = 128;

  /// 账号输入框编辑控制器
  final TextEditingController _controllerNum = TextEditingController();

  /// 密码输入框编辑控制器
  final TextEditingController _controllerName = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.backspace_outlined,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "重置賬戶密碼",
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                ///TODO
              },
              icon: const Icon(
                Icons.settings_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: GestureDetector(
        onTap: (){
          // 触摸收起键盘,撤销编辑聚焦
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: getForgetPwdBody(),
          ),
        ),
      )
    );
  }

 Widget getForgetPwdBody() {
   return SingleChildScrollView(
     scrollDirection: Axis.vertical,
     child: Column(
       children: [
         const SizedBox(
           height: 40,
         ),
         Container(
             child: Column(
               children: [
                 Row(
                   children: [
                     Container(
                       width: 80,
                       child: const Text(
                         "國家地區",
                         style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
                       ),
                     ),
                     const SizedBox(
                       width: 20,
                     ),
                     Container(
                       alignment: Alignment.centerRight,
                       width: 200,
                       child: Text(
                         "阿拉伯聯合酋長國(+$number)",
                         style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
                       ),
                     ),
                     const Spacer(),
                     const Icon(
                       Icons.arrow_forward_ios,
                       color: Colors.white,
                       size: 18,
                     )
                   ],
                 ),
                 const SizedBox(
                   height: 10,
                 ),
                 Container(
                   height: 1,
                   width: double.infinity,
                   color: Colors.grey,
                 )
               ],
             )),
         const SizedBox(
           height: 20,
         ),
         TextField(
           keyboardType: TextInputType.phone,
           cursorColor: primary,
           controller: _controllerNum,
           decoration: const InputDecoration(
             enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: white, width: 2)),
             focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 2)),
             hintStyle: TextStyle(color: Colors.white),
             labelText: "行動手機號碼",
             labelStyle: TextStyle(color: Colors.white),
           ),
         ),
         const SizedBox(
           height: 30,
         ),
         TextField(
           keyboardType: TextInputType.emailAddress,
           cursorColor: primary,
           controller: _controllerNum,
           decoration: const InputDecoration(
             enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: white, width: 2)),
             focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 2)),
             hintStyle: TextStyle(color: Colors.white),
             labelText: "曾使用過的續期卡密",
             labelStyle: TextStyle(color: Colors.white),
           ),
         ),
         const SizedBox(
           height: 30,
         ),
         TextField(
           keyboardType: TextInputType.emailAddress,
           // obscureText: !isShowPassword,
           cursorColor: primary,
           controller: _controllerName,
           decoration: const InputDecoration(
             enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: white, width: 2)),
             focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 2)),
             hintStyle: TextStyle(color: Colors.white),
             labelText: "新密碼",
             labelStyle: TextStyle(color: Colors.white),
           ),
         ),
         const SizedBox(
           height: 30,
         ),
         TextField(
           keyboardType: TextInputType.emailAddress,
           // obscureText: !isShowPassword,
           cursorColor: primary,
           controller: _controllerName,
           decoration: const InputDecoration(
             enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: white, width: 2)),
             focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 2)),
             hintStyle: TextStyle(color: Colors.white),
             labelText: "確認密碼",
             labelStyle: TextStyle(color: Colors.white),
           ),
         ),
         const SizedBox(
           height: 20,
         ),
         const SizedBox(
           height: 40,
         ),
         FlatButton(
             minWidth: double.infinity,
             height: 52,
             shape: const StadiumBorder(),
             color: Colors.red,
             onPressed: (){},
             child: const Text(
               "重置密碼",
               style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),)),
         const SizedBox(
           height: 20,
         ),
         const SizedBox(
           height: 40,
         ),

       ],
     ),
   );
 }
}
