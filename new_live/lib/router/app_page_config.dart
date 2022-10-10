/**
 *@program: new_live
 *@description:
 *@author: Alex.LingJiaHua
 *@create: 2022-09-29
 */

import 'package:fluro/fluro.dart';
import 'package:new_live/login_page.dart';
import 'package:new_live/view/seach_page.dart';
import '../forget_pwd_page.dart';
import '../index_root.dart';
import '../main.dart';
import 'app_page_path.dart';


final Map<String, Handler> pageHandler = {
  AppPagePath.splash:
  Handler(handlerFunc: (context, params) => const FSAD(title: '',)),
  AppPagePath.index:
  Handler(handlerFunc: (context, params) => const IndexRoot()),
  AppPagePath.login:
  Handler(handlerFunc: (context, params) => const LoginPage()),
  AppPagePath.forgetPwd:
  Handler(handlerFunc: (context, params) => const ForgetPwdPage()),
  AppPagePath.searchPage:
      Handler(handlerFunc: (context, params) =>  const SearchPage())
  // AppPagePath.home:
  //     Handler(handlerFunc: (context, params) => const HomeScreen()),
  // AppPagePath.detail: Handler(handlerFunc: (context, params) {
  //   Bundle? bundle = context?.arguments as Bundle;
  //   context?.settings?.arguments;
  //   RecipeModel recipeModel = bundle.get('detail');
  //   log('${DateTime.now()} >>(:32)>>${recipeModel.title}');
  //   return DetailScreen(
  //     recipeModel: recipeModel,
  //   );
  // }),
  // AppPagePath.login:
  //     Handler(handlerFunc: (context, params) => const LoginScreen()),
  // AppPagePath.article:
  //     Handler(handlerFunc: (context, params) => const ArticleScreen()),
  // AppPagePath.settingMessage:
  //     Handler(handlerFunc: (context, params) => const SettingMessage()),
  // AppPagePath.settingStick:
  //     Handler(handlerFunc: (context, params) => const StickyPage()),
  // AppPagePath.share:
  //     Handler(handlerFunc: (context, params) => const ShareScreen()),
  // AppPagePath.settingMessageExternal:
  //     Handler(handlerFunc: (context, params) => const SettingExternalMessage()),
};