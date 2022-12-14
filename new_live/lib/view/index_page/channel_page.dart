import 'package:flutter/material.dart';
import 'package:scroll_text/scroll_text.dart';

import '../../generated/l10n.dart';
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
                        Text(
                          S.of(context).hotTitle,
                          style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text(
                          S.of(context).anchor,
                          style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w400),)
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



  /// ????????????
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
              Text(
                S.of(context).channel_add,
                style: const TextStyle(color: Colors.black45, fontSize: 20, fontWeight: FontWeight.bold),),
              GestureDetector(
                onTap: (){
                  ///TODO
                },
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        S.of(context).channel_add,
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


  /// ????????????
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
                    "????????????????????????????????????????????????????????????????????????????????????"
                        "????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????"
                        "??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????"
                        "?????????????????????????????????????????????????????????????????????????????????????????????????????????"],
                  maxListNum: 1,
                ),
              ))
        ],
      ),
    );
  }


  /// ????????????
  Widget getAllPlatform() {
    return PhysicalModel(//PhysicalModel?????????
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
            // ??????????????????
            crossAxisCount: 3,
            // ????????????
            mainAxisSpacing: 1.0,
            // ????????????
            crossAxisSpacing: 1.0,
            // ???????????????????????????
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
