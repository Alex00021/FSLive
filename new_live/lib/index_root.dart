import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'channel_page.dart';
import 'favorite_page.dart';
import 'home_main_page.dart';
import 'my_page.dart';

///@Description     xxxx
///@author          Alex.Ling
///@create          2022-09-23 23:44
///
class IndexRoot extends StatefulWidget {
  const IndexRoot({Key? key}) : super(key: key);

  @override
  State<IndexRoot> createState() => _IndexRootState();
}

class _IndexRootState extends State<IndexRoot> {
  ///bottomTab栏控制器
  late TabController bottomTabController;

  ///当前页面
  late int currentIndex;

  ///视图view
  final pageControllers = [
    // 热门
    const HotMainPage(),
    // 频道
    const ChannelPage(),
    // 喜爱
    const FavoritePage(),
    // 我的 页
    const MyPage(),
  ];

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }


  @override
  void dispose() {
    super.dispose();
  }


  ///@description: 切换页面
  ///@program: {int index}
  void changePage(int index) {
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }


  /// 底部导航图标
  final List<BottomNavigationBarItem> bottomNavItems = [
    // 首页
    const BottomNavigationBarItem(
      icon: Icon(Icons.book),
      label: "热门",
      activeIcon: Icon(Icons.book),
    ),
    // 推荐页
    const BottomNavigationBarItem(
      icon: Icon(Icons.menu_book_sharp),
      label: "频道",
      activeIcon: Icon(Icons.menu_book_sharp),
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.library_books_outlined),
      label: "喜爱",
      activeIcon: Icon(Icons.library_books_outlined),
    ),
    // "我的"页
    const BottomNavigationBarItem(
      icon: Icon(Icons.account_circle),
      label: "我的",
      activeIcon: Icon(Icons.face),
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          selectedFontSize: 12,
          unselectedFontSize: 10,
          items: bottomNavItems,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            changePage(index);
          }),
      body: pageControllers[currentIndex],
    );
  }
}
