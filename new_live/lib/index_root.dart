import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:new_live/router/app_page_path.dart';
import 'package:new_live/router/app_router.dart';
import 'view/index_page/channel_page.dart';
import 'view/index_page/favorite_page.dart';
import 'view/index_page/home_main_page.dart';
import 'view/index_page/my_page.dart';

///@Description     IndexRoot
///@author          Alex.Ling
///@create          2022-09-23 23:44
/// app 底部导航栏菜单
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
    // 熱門
    const HotMainPage(),
    // 頻道
    const ChannelPage(),
    // 喜愛
    const FavoritePage(),
    // 我的
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
    // 熱門
    const BottomNavigationBarItem(
      icon: Icon(Icons.local_fire_department_rounded),
      label: "熱門",
      activeIcon: Icon(Icons.local_fire_department_rounded),
    ),
    // 頻道
    const BottomNavigationBarItem(
      icon: Icon(Icons.play_circle_outline_sharp),
      label: "頻道",
      activeIcon: Icon(Icons.play_circle_outline_sharp),
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.favorite_border),
      label: "喜愛",
      activeIcon: Icon(Icons.favorite_border),
    ),
    // "我的"页
    const BottomNavigationBarItem(
      icon: Icon(Icons.tag_faces),
      label: "我的",
      activeIcon: Icon(Icons.tag_faces),
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepPurpleAccent,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          selectedFontSize: 12,
          unselectedFontSize: 10,
          items: bottomNavItems,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            index == 2 ? AppRouter.navigateTo(
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
            ):
            changePage(index);
          }),
      body: pageControllers[currentIndex],
    );
  }
}
