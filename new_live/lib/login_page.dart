import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_live/router/app_page_path.dart';
import 'package:new_live/router/app_router.dart';
import 'package:new_live/theme/colors.dart';

/**
 *@program: new_live
 *@description:
 *@author: Alex.LingJiaHua
 *@create: 2022-09-29
 */

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          "登入兔奇賬戶",
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
            child: getLoginBody(),
          ),
        ),
      )
    );
  }

  Widget getLoginBody() {
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
                      "阿拉伯聯合酋長國(+${number})",
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
                height: 2,
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
            cursorColor: Colors.blue,
            controller: _controllerNum,
            style: const TextStyle(color: Colors.white),

            decoration: const InputDecoration(
              // prefixText: "+86 ",

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
            cursorColor: Colors.blue,
            controller: _controllerName,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              labelText: "密碼",
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: white, width: 2)),
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 2)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
             GestureDetector(
               onTap: (){
                 AppRouter.navigateTo(context, transition: TransitionType.inFromRight, AppPagePath.forgetPwd);
                 //ForgetPwdPage
                 // AppRouter.navigateTo(
                 //   context,
                 //   AppPagePath.login,
                 //   transition: TransitionType.inFromRight,
                 //   transitionBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
                 //     return FadeTransition(
                 //         opacity: CurvedAnimation(
                 //           parent: animation,
                 //           curve: Curves.linear,
                 //         ),
                 //         child: child
                 //     );
                 //   },
                 //   transitionDuration: Duration(seconds: 1),
                 // );
               },
               child: Container(
                   child: const Text(
                     "遺忘密碼?",
                     style: TextStyle(color: Colors.white),)
               ),
             )
            ],
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
                "登入",
                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),)),
          const SizedBox(
            height: 20,
          ),
         SizedBox(
           width: double.infinity,
           height: 52,
           child:  OutlinedButton(
               style: OutlinedButton.styleFrom(
                 shape: const StadiumBorder(),
                 side: const BorderSide(width: 1, color: Colors.white),
               ),
               onPressed: (){},
               child: const Text(
                 "馬上註冊賬戶",
                 style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),)),
         ),
          const SizedBox(
            height: 40,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Text(
                  "登入即表示同意以下條款",
                  style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w400),),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
             GestureDetector(
               onTap: (){
                 ///TODO
                 print("《兔奇萬能直播聚合》軟體用戶服務和免責條款");
               },
               child:  Container(
                 child: const Text(
                   "《兔奇萬能直播聚合》軟體用戶服務和免責條款",
                   style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),),
               ),
             )
            ],
          ),
        ],
      ),
    );
  }
}
