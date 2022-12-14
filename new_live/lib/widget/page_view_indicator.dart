/**
 *@program: new_live
 *@description:
 *@author: Alex.LingJiaHua
 *@create: 2022-09-26
 */

import 'dart:async';
import 'package:flutter/material.dart';
import 'jump_dot/indecator_dot.dart';
import 'jump_dot/page_indicator.dart';

class PageViewIndicator extends StatefulWidget {
  const PageViewIndicator({Key? key}) : super(key: key);

  @override
  _PageViewIndicatorState createState() => _PageViewIndicatorState();
}

class _PageViewIndicatorState extends State<PageViewIndicator> {
  late int _currentPageIndex;

  // 轮播图 PageView 使用的控制器
  late PageController _pageController;

  // 定时器自动轮播
  late Timer _timer;

  // 当前显示的索引
  int currentIndex = 1000;

  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  List<String> imagesList = [
    "assets/images/image_06.webp",
    "assets/images/image_07.webp",
    "assets/images/person_02.webp",
  ];

  @override
  void initState() {
    super.initState();
    _currentPageIndex = 0;
    // initialPage 为初始化显示的子Item
    _pageController = PageController(initialPage: _currentPageIndex);

    /// 当前页面绘制完第一帧后回调
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      startTimer();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      height: 170,
      child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView.builder(
              // PageView滑动时回调
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              controller: _pageController,
              itemCount: imagesList.length * 10000,
              itemBuilder: (BuildContext context, int index) {
                return pageViewItem(index);
              },
            ),
            Positioned(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: PageIndicator(
                                  controller: _pageController,
                                  count: imagesList.length,
                                  effect: const JumpingDotEffect(
                                    dotHeight: 10,
                                    dotWidth: 10,
                                    jumpScale: .7,
                                    verticalOffset: 15,
                                  )))
                        ])))
          ]),
    );
  }

  // 轮播显示图片
  Widget pageViewItem(int index) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(10)),
        clipBehavior: Clip.antiAlias,
        child: Image.asset(
          imagesList[index % imagesList.length],
          fit: BoxFit.fill,
        )
    );
  }

  void startTimer() {
    // 间隔两秒时间
    _timer = Timer.periodic(const Duration(seconds: 5), (value) {
      // print("定时器 + $_currentPageIndex");
      _currentPageIndex++;

      // 触发轮播切换
      _pageController.animateToPage(_currentPageIndex,
          duration: const Duration(seconds: 5), curve: Curves.ease);//milliseconds

      // 刷新
      setState(() {

      });
    });
  }
}