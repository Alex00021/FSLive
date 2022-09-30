import 'package:flutter/material.dart';
import 'package:scroll_text/scroll_text.dart';

import '../../json/anchor_json.dart';
import '../../json/channel_json.dart';
import '../../json/platForm_json.dart';
import '../../widget/page_view_indicator.dart';

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
      backgroundColor: Colors.grey[100],
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
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "兔奇Live",
                          style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
                        Spacer(),
                        const Text(
                          "頻道列表",
                          style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  Expanded(child: getChannelBody(),)
                ],
              )
          ),
        )
    );
  }



  /// 主体分发
  Widget getChannelBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getTip(),
          const SizedBox(
            height: 20,
          ),
          const PageViewIndicator(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "持續新增中",
                style: TextStyle(color: Colors.black45, fontSize: 20, fontWeight: FontWeight.bold),),
              GestureDetector(
                onTap: (){
                  ///TODO
                },
                child: Container(
                  child: Row(
                    children: const [
                      Text(
                        "49個平台",
                        style: TextStyle(color: Colors.black45, fontSize: 20, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          getAllPlatform()

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
          const SizedBox(
            width: 5,
          ),
          const Icon(Icons.volume_up, color: Colors.white,),
          const SizedBox(
            width: 5,
          ),
          Expanded(
              child: Container(
                width: 300,
                child: ScrollText(
                  arrTexts: const [
                    "本軟體的服務範圍不包含中國大陸、科威特和沙特阿拉伯地區，"
                        "本軟體服務除上述區域以外的客戶，共同打造綠色健康的網路直播環境，主播應該健康直播，不得違反第三方機構和國家法令直播條例！"
                        "如果閣下發現違規的直播房間，閣下可以在直播過程中點擊直播流播放過程中的驚嘆標誌舉報該第三方直播內容，"
                        "我們會盡快將信息錄入並提供給該房間所屬的第三方直播機構盡快移除該房間！"],
                  maxListNum: 1,
                ),
              ))
        ],
      ),
    );
  }


  /// 主播平台
  Widget getAllPlatform() {
    return PhysicalModel(//PhysicalModel切圆角
      borderRadius: BorderRadius.circular(10),
      color: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      child: GridView.builder(
          itemCount: anchorItem.length,
          primary: true,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            // 横轴元素个数
            crossAxisCount: 3,
            // 纵轴间距
            mainAxisSpacing: 1.0,
            // 横轴间距
            crossAxisSpacing: 1.0,
            // 子组件宽高长度比例
            childAspectRatio: 0.7
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              width: 80,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                            image: NetworkImage(platFormData[index]["bgImage"].toString()),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    anchorItem[index]["anchorName"].toString(),
                    style: const TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold),),
                  const SizedBox(
                    height: 8
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 20,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.videocam, color: Colors.white, size: 15,),
                            Spacer(),
                            Text(
                              "472",
                              style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
