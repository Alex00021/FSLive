import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:new_live/router/app_router.dart';
import 'package:new_live/router/application_router.dart';
import 'package:new_live/view/seach_page.dart';
import 'generated/l10n.dart';
import 'index_root.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ApplicationRouter.setupRouter();

  runApp(const MyApp());

  ///设置状态栏背景色为透明色
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  SystemUiOverlayStyle systemUiOverlayStyle =
  const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.transparent, // 点击时的高亮效果设置为透明
        highlightColor: Colors.transparent, // 长按时的扩散效果设置为透明
      ),
      onGenerateRoute: AppRouter.generator,

        // 设置语言
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        // 讲zh设置为第一项,没有适配语言时，英语为首选项
        supportedLocales: S.delegate.supportedLocales,

    );
  }
}


/// splash --- 开屏广告界面
class FSAD extends StatefulWidget {
  const FSAD({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<FSAD> createState() => _FSADState();
}

class _FSADState extends State<FSAD> {

  Timer? timer;
  int count = 6;

  @override
  void initState() {
    super.initState();
    startTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: const Alignment(1.0, -1.0), // 右上角对齐
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.asset("assets/images/image_01.jpg",//广告图
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 30.0, 10.0, 0.0),
            child: FlatButton(
              color: const Color.fromRGBO(0, 0, 0, 0.3),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Text(
                "$count 跳过",
                style: const TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              onPressed: () {
                navigationPage();
              },
            ),
          )
        ],
      ),
    );
  }


  /// 设置开启时间
  void startTime() async {
    //设置启动图生效时间
    var duration = const Duration(seconds: 1);
    Timer(duration, () {
      // 空等1秒之后再计时
      timer = Timer.periodic(const Duration(milliseconds: 1000), (v) {
        count--;
        if (count == 0) {
          navigationPage();
        } else {
          setState(() {});
        }
      });
      // return timer;
    });
  }


  /// 跳转界面
  void navigationPage() {
    timer?.cancel();
    Navigator.of(context).pushReplacement(PageRouteBuilder(
        pageBuilder: (cxt,ani1,ani2){
          return FadeTransition(opacity: ani1, child: const IndexRoot());
        }
    ));
  }
}
