import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../generated/l10n.dart';
import '../../json/my_list_json.dart';
import '../../router/app_page_path.dart';
import '../../router/app_router.dart';
import '../settings_page.dart';

///@Description     MyPage
///@author          Alex.Ling
///@create          2022-09-23 23:54

/// 我的  界面
class MyPage extends StatefulWidget {
  const  MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State< MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        actions: [
          IconButton(
              onPressed: (){
                ///TODO
                Navigator.push(context, MaterialPageRoute(builder: (_) => const SettingsPage()));
              },
              icon: const Icon(Icons.settings_outlined, color: Colors.black,))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:getMyBody(),
        ),
      )
    );
  }


  /// 主体
  Widget getMyBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${S.of(context).mine_title} ·\nWWW.TuQi.fun",
            style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
          const SizedBox(
            height: 2,
          ),
          FlatButton(
              minWidth: 120,
              height: 33,
              color: Colors.red,
              shape: const StadiumBorder(),
              onPressed: (){
                doLoginOrSignUp();
              },
              child: Text(
                S.of(context).mine_sign_in_or_up,
                style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),)),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              ///TODO
            },
            child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.orange
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.brown ,
                          borderRadius: BorderRadius.circular(30*0.5)
                        // image: DecorationImage(
                        //   image: NetworkImage(anchorItem[index]["bgImage"].toString()),
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          S.of(context).mine_vip,
                          style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                        const SizedBox(
                          height: 3,
                        ),
                        Container(
                          width: 100,
                          child: Text(
                              S.of(context).mine_goods,
                              style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w300),
                              textAlign: TextAlign.start,softWrap: true, maxLines: 10),
                        ),
                      ],
                    ),
                    // const SizedBox(
                    //   width: 10,
                    // ),

                    const Spacer(),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 130,
                          alignment: Alignment.centerRight,
                          child: Text(
                            S.of(context).mine_goods2,
                            style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                            softWrap: true, maxLines: 10,textAlign: TextAlign.end,),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                )
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          getItemList()
        ],
      )
    );
  }


  /// 列表选项
  Widget getItemList() {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        primary: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index){
          return Container(
            height: 52,
           padding: const EdgeInsets.only(left: 20, right: 10),
           decoration: BoxDecoration(
               color: index == 7 ? Colors.transparent : Colors.white54,
             borderRadius:  index == 0 || index == 3 ? const BorderRadius.only(
               topLeft: Radius.circular(10),
               topRight: Radius.circular(10),
             ) : (index == 2 ?
             BorderRadius.circular(10) : (index == 6 || index == 1 ? const BorderRadius.only(
               bottomLeft: Radius.circular(10),
               bottomRight: Radius.circular(10),
             ) : BorderRadius.circular(0)))
           ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                index == 7 ?
                Container():Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(30*0.5)
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                index == 7 ?
               Container(
                 // width: double.infinity,
                 child: Center(
                   child: Column(mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                       // S.of(context).welcome(""),
                         myItemList[index]["itemTitle"].toString(),
                         style: const TextStyle(color: Colors.black12, fontSize: 14, fontWeight: FontWeight.w500),),
                       Text(
                         myItemList[index]["text"].toString(),
                         style: const TextStyle(color: Colors.black12, fontSize: 14, fontWeight: FontWeight.w500),)
                     ],
                   )
                 ),
               )
                : Text(
                  myItemList[index]["itemTitle"].toString(),
                  style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
                const Spacer(),
                Container(
                  child: Row(
                    children: [
                      index == 0 ?
                      Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(
                          child: Text("Hot"),
                        ),
                      ) : (index == 1 ? Container(
                        width: 60,
                        // height: 30,
                        child: Text(S.of(context).mine_only_time,style: const TextStyle(color: Colors.red, fontSize: 14),),
                      ):(index == 2 ? Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.redAccent[100],
                            borderRadius: BorderRadius.circular(10*0.5)
                        ),
                      ):(
                      index == 3 ? Container(
                        width: 110,
                        height: 20,
                        alignment: Alignment.center,
                        child: const Text("www.FengSu.fun",style: TextStyle(color: Colors.black45, fontSize: 14),),
                      ):(
                      index == 6 ? Container(
                        alignment: Alignment.center,
                        width: 60,
                        height: 30,
                        child: Text(S.of(context).mine_call_our,style: TextStyle(color: Colors.black45, fontSize: 14),),
                      ):(
                      index == 7 ?
                      Container():(index == 4 || index == 5 ?
                      Container():Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(30*0.5)
                        ),
                      ))
                      )
                      )
                      ))),
                      const SizedBox(
                        width: 5,
                      ),
                      index == 7 ?
                      Container():const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.black45,)
                    ],
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index){
          return Stack(
            children: [
              Container(
                height: index == 1 ? 10 : (index == 2 ? 10 : 0),
              ),
              Positioned(child: Container(
                color: index == 1 || index == 2 ? Colors.grey[100] : (index == 6 ? Colors.white :Colors.black12),
                margin: index == 1 ? const EdgeInsets.only(left: 0) : const EdgeInsets.only(left: 20),
                height: index == 1 ? 12 : 0.5,
              ))
            ],
          );
        },
        itemCount: 8);
  }


  /// 进入登录账户界面
  void doLoginOrSignUp() {
    AppRouter.navigateTo(
      context,
      AppPagePath.login,
      transition: TransitionType.inFromBottom,
      transitionBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        return FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: Curves.linear,
            ),
            child: child
        );
      },
      transitionDuration: const Duration(seconds: 1),
    );
  }


}
