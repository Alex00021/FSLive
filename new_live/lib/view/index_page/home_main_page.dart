import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:scroll_text/scroll_text.dart';
import '../../json/discover_json.dart';
import '../../theme/colors.dart';
import '../../widget/page_view_indicator.dart';
import '../seach_page.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 70,
                margin: EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    const Text("风速Live",style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
                    const SizedBox(width: 25,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) =>  const SearchPage()));
                        // Navigator.push(context, MaterialPageRoute(builder: (_) => const SignUpPage()));
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
                          children: const [
                            Icon(
                              Icons.search,
                              size: 18,
                              color: Colors.grey,
                            ),
                            Text("搜索喜愛的主播", style: TextStyle(color: Colors.grey, fontSize: 14),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                width: double.infinity - 10,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular((5)),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 5,),
                    Icon(Icons.volume_up, color: Colors.white,),
                    SizedBox(width: 5,),
                    Container(
                      width: 300,
                      child: ScrollText(
                        arrTexts: const [
                          "本軟體的服務範圍不包含中國大陸、科威特和沙特阿拉伯地區，"
                              "本軟體服務除上述區域以外的客戶，共同打造綠色健康的網路直播環境，主播應該健康直播，不得違反第三方機構和國家法令直播條例！"
                              "如果閣下發現違規的直播房間，閣下可以在直播過程中點擊直播流播放過程中的驚嘆標誌舉報該第三方直播內容，"
                              "我們會盡快將信息錄入並提供給該房間所屬的第三方直播機構盡快移除該房間！"],
                        maxListNum: 1,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const PageViewIndicator(),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("最新頻道", style: TextStyle(color: Colors.black45, fontSize: 20, fontWeight: FontWeight.bold),),
                  GestureDetector(
                    onTap: (){
                      ///TODO
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Text("更多", style: TextStyle(color: Colors.black45, fontSize: 20, fontWeight: FontWeight.bold),),
                          Icon(Icons.arrow_forward_ios, color: Colors.black45)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
              getSliderLists()
            ],
          ),
        ),
      )
    );
  }

  Widget getSliderImages(item) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 180,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: 180,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(item['img_video']), fit: BoxFit.cover)),
          ),
          Container(
            width: size.width,
            height: 180,
            decoration: BoxDecoration(color: black.withOpacity(0.2)),
          ),
          Container(
            width: size.width,
            height: 180,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "LIVE",
                        style: TextStyle(
                            color: white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "${item['viewers']} viewers",
                        style: TextStyle(color: white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getSliderLists() {
    var size = MediaQuery.of(context).size;
    return CarouselSlider(
        items: List.generate(discover_json_one.length, (index) {
          List tags = discover_json_one[index]['tags'];
          return Column(
            children: [
              getSliderImages(discover_json_one[index]),
              Expanded(
                child: Container(
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              discover_json_one[index]['name'],
                              style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              discover_json_one[index]['type'],
                              style: TextStyle(
                                  fontSize: 16, color: white.withOpacity(0.7)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: List.generate(tags.length, (index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 2, bottom: 2),
                                  child: Text(
                                    tags[index],
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: white.withOpacity(0.7)),
                                  ),
                                ),
                              ),
                            );
                          }),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        }),
        options: CarouselOptions(height: 240));
  }
}
