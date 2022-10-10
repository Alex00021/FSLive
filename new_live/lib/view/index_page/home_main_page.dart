import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:new_live/router/app_router.dart';
import 'package:scroll_text/scroll_text.dart';
import '../../generated/l10n.dart';
import '../../json/anchor_json.dart';
import '../../json/channel_json.dart';
import '../../router/app_page_path.dart';
import '../../widget/page_view_indicator.dart';


///@Description     HotMainPage
///@author          Alex.Ling
///@create          2022-09-23 23:14
///熱门界面
class HotMainPage extends StatefulWidget {
  const HotMainPage({Key? key}) : super(key: key);

  @override
  State<HotMainPage> createState() => _HotMainPageState();
}

class _HotMainPageState extends State<HotMainPage> {

  /// 查询数据
  // search(value) {
  //   print("搜索的值为：$value");
  // }
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 70,
                margin: const EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular((40*0.5)),
                      ),
                    ),
                    const SizedBox(width: 10,),
                     Text(S.of(context).hotTitle,style: const TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
                    const SizedBox(width: 25,),
                    GestureDetector(
                      onTap: (){
                        AppRouter.navigateTo(
                          context,
                          AppPagePath.searchPage,
                          transition: TransitionType.inFromRight,
                        );
                      },
                      child: Container(
                        width: 140,
                        height: 33,
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular((20)),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 0.5), // 边色与边宽度
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.search,
                              size: 18,
                              color: Colors.grey,
                            ),
                            Text(S.of(context).searchText, style: const TextStyle(color: Colors.grey, fontSize: 14),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(child: getBody(),)
            ],
          )
        ),
      )
    );
  }


  /// 主体分发
  Widget getBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getTip(),
          const SizedBox(height: 20,),
          const PageViewIndicator(),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(S.of(context).hot_main_newChannel, style: TextStyle(color: Colors.black45, fontSize: 20, fontWeight: FontWeight.bold),),
              GestureDetector(
                onTap: (){
                  ///TODO
                },
                child: Container(
                  child: Row(
                    children: [
                      Text(S.of(context).hot_main_more, style: const TextStyle(color: Colors.black45, fontSize: 20, fontWeight: FontWeight.bold),),
                      const Icon(Icons.arrow_forward_ios, color: Colors.black45)
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20,),
          getChannelList(),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(S.of(context).hot_main_anchor, style: const TextStyle(color: Colors.black45, fontSize: 20, fontWeight: FontWeight.bold),),

            ],
          ),
          const SizedBox(height: 20,),
          getMainStart(),

        ],),
    );
  }


  /// 播音提示
  Widget getTip() {
    return Container(
      width: double.infinity - 10,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular((5)),
      ),
      child: Row(
        children: [
          const SizedBox(width: 5,),
          const Icon(Icons.volume_up, color: Colors.white,),
          const SizedBox(width: 5,),
          Expanded(
              child: Container(
                width: 300,
                child: ScrollText(
                  arrTexts: [S.of(context).alarmText],
                  maxListNum: 1,
                ),
              ))
        ],
      ),
    );
  }


  /// 最新频道
  Widget getChannelList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(channel_json_one.length, (index){
            // List tags = discover_json_three[index]["tags"];
            return Column(
              children: [
                Container(
                    width: 130,
                    height: 160,
                    margin: const EdgeInsets.only(left: 5, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.5),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${channel_json_one[index]["LIVE"]}", style: const TextStyle(color: Colors.white, fontSize: 16),),
                        const SizedBox(height: 10,),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${channel_json_one[index]["num"]}", style: const TextStyle(color: Colors.white, fontSize: 23),),
                            const SizedBox(width: 3,),
                            const Text("主播", style: TextStyle(color: Colors.white, fontSize: 12),),
                            const SizedBox(width: 7,),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey, width: 0.5),
                                borderRadius: BorderRadius.circular(20*0.5),
                                color: Colors.white,
                              ),
                              child: const Center(
                                child: Icon(Icons.arrow_forward_ios, color: Colors.blueAccent, size: 12,),
                              ),
                            )

                          ],
                        )
                      ],
                    )
                )
              ],
            );
          })),
    );
  }


  ///
  Widget getMainStart() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: GridView.builder(
          itemCount: anchorItem.length,
          primary: true,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            // 横轴元素个数
              crossAxisCount: 2,
              // 纵轴间距
              mainAxisSpacing: 10.0,
              // 横轴间距
              crossAxisSpacing: 10.0,
              // 子组件宽高长度比例
              childAspectRatio: 1.0
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              width: 80,
              height: 80,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                // border: Border.all( width: 0.5),
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
                image: DecorationImage(
                  // image: ExactAssetImage('assets/images/time.png'),
                  image: NetworkImage(anchorItem[index]["bgImage"].toString()),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(Icons.favorite, color: Colors.white,)
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 25,
                        padding: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25*0.5),
                                image: DecorationImage(
                                  image: NetworkImage(anchorItem[index]["bgImage"].toString()),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Spacer(),
                            Text(
                              anchorItem[index]["tips"].toString(),
                              style: const TextStyle(color: Colors.white, fontSize: 10,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: (){
                            ///TODO
                          },
                          icon: const Icon(Icons.lock, color: Colors.white))
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        anchorItem[index]["anchorName"].toString(),
                        style: const TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.w400),),
                      const Spacer(),
                      Text(
                        anchorItem[index]["aboutLivers"].toString(),
                        style: const TextStyle(color: Colors.white, fontSize: 10,fontWeight: FontWeight.w400),),
                    ],
                  )

                ],
              ),
            );
          }),
    );
  }
}
