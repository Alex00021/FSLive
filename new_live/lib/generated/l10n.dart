// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Popular`
  String get index1_title {
    return Intl.message(
      'Popular',
      name: 'index1_title',
      desc: '',
      args: [],
    );
  }

  /// `Channel`
  String get index2_title {
    return Intl.message(
      'Channel',
      name: 'index2_title',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get index3_title {
    return Intl.message(
      'Favorite',
      name: 'index3_title',
      desc: '',
      args: [],
    );
  }

  /// `Mine`
  String get index4_title {
    return Intl.message(
      'Mine',
      name: 'index4_title',
      desc: '',
      args: [],
    );
  }

  /// `TuqiLive`
  String get hotTitle {
    return Intl.message(
      'TuqiLive',
      name: 'hotTitle',
      desc: '',
      args: [],
    );
  }

  /// `Search streamer`
  String get searchText {
    return Intl.message(
      'Search streamer',
      name: 'searchText',
      desc: '',
      args: [],
    );
  }

  /// `The service scope of this software does not include mainland China, Kuwait and Saudi Arabia. This software serves customers other than the above-mentioned areas, and jointly creates a green and healthy online live broadcast environment. The anchor should live broadcast healthily, and must not live broadcast in violation of third-party agencies and national laws and regulations. Regulations! If you find a live broadcast room that violates regulations, you can click the exclamation mark in the live broadcast process to report the third-party live broadcast content, and we will enter the information and provide it to the third-party live broadcast organization to which the room belongs as soon as possible. Remove this room!`
  String get alarmText {
    return Intl.message(
      'The service scope of this software does not include mainland China, Kuwait and Saudi Arabia. This software serves customers other than the above-mentioned areas, and jointly creates a green and healthy online live broadcast environment. The anchor should live broadcast healthily, and must not live broadcast in violation of third-party agencies and national laws and regulations. Regulations! If you find a live broadcast room that violates regulations, you can click the exclamation mark in the live broadcast process to report the third-party live broadcast content, and we will enter the information and provide it to the third-party live broadcast organization to which the room belongs as soon as possible. Remove this room!',
      name: 'alarmText',
      desc: '',
      args: [],
    );
  }

  /// `Latest channel`
  String get hot_main_newChannel {
    return Intl.message(
      'Latest channel',
      name: 'hot_main_newChannel',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get hot_main_more {
    return Intl.message(
      'More',
      name: 'hot_main_more',
      desc: '',
      args: [],
    );
  }

  /// `Popular anchors`
  String get hot_main_anchor {
    return Intl.message(
      'Popular anchors',
      name: 'hot_main_anchor',
      desc: '',
      args: [],
    );
  }

  /// `anchor`
  String get anchor {
    return Intl.message(
      'anchor',
      name: 'anchor',
      desc: '',
      args: [],
    );
  }

  /// `Channel List`
  String get channel_List {
    return Intl.message(
      'Channel List',
      name: 'channel_List',
      desc: '',
      args: [],
    );
  }

  /// `Continuing to add`
  String get channel_add {
    return Intl.message(
      'Continuing to add',
      name: 'channel_add',
      desc: '',
      args: [],
    );
  }

  /// `58 platforms`
  String get channel_platform {
    return Intl.message(
      '58 platforms',
      name: 'channel_platform',
      desc: '',
      args: [],
    );
  }

  /// `Login to Tuqi account`
  String get login_title {
    return Intl.message(
      'Login to Tuqi account',
      name: 'login_title',
      desc: '',
      args: [],
    );
  }

  /// `country / region`
  String get login_area {
    return Intl.message(
      'country / region',
      name: 'login_area',
      desc: '',
      args: [],
    );
  }

  /// `mobile phone number`
  String get login_phoneNum {
    return Intl.message(
      'mobile phone number',
      name: 'login_phoneNum',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get login_pwd {
    return Intl.message(
      'password',
      name: 'login_pwd',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get login_forget_pwd {
    return Intl.message(
      'Forgot your password?',
      name: 'login_forget_pwd',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get login_sign_in {
    return Intl.message(
      'Sign in',
      name: 'login_sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Register an account now`
  String get login_sign_up {
    return Intl.message(
      'Register an account now',
      name: 'login_sign_up',
      desc: '',
      args: [],
    );
  }

  /// `By logging in, you agree to the following terms`
  String get login_agree_title1 {
    return Intl.message(
      'By logging in, you agree to the following terms',
      name: 'login_agree_title1',
      desc: '',
      args: [],
    );
  }

  /// `《Tuqi Universal Live Aggregation》 software user service and disclaimer`
  String get login_agree_title2 {
    return Intl.message(
      '《Tuqi Universal Live Aggregation》 software user service and disclaimer',
      name: 'login_agree_title2',
      desc: '',
      args: [],
    );
  }

  /// `Reset Account Password`
  String get reset_pwd_title {
    return Intl.message(
      'Reset Account Password',
      name: 'reset_pwd_title',
      desc: '',
      args: [],
    );
  }

  /// `renewed PINs that have been used`
  String get reset_pwd_useInfo {
    return Intl.message(
      'renewed PINs that have been used',
      name: 'reset_pwd_useInfo',
      desc: '',
      args: [],
    );
  }

  /// `new password`
  String get reset_pwd_new_pwd {
    return Intl.message(
      'new password',
      name: 'reset_pwd_new_pwd',
      desc: '',
      args: [],
    );
  }

  /// `confirm Password`
  String get reset_pwd_sure_pwd {
    return Intl.message(
      'confirm Password',
      name: 'reset_pwd_sure_pwd',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get reset_pwd_submit {
    return Intl.message(
      'Reset Password',
      name: 'reset_pwd_submit',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Tuqi`
  String get mine_title {
    return Intl.message(
      'Welcome to Tuqi',
      name: 'mine_title',
      desc: '',
      args: [],
    );
  }

  /// `login/register`
  String get mine_sign_in_or_up {
    return Intl.message(
      'login/register',
      name: 'mine_sign_in_or_up',
      desc: '',
      args: [],
    );
  }

  /// `Tuqi VIP`
  String get mine_vip {
    return Intl.message(
      'Tuqi VIP',
      name: 'mine_vip',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy luxurious privileges`
  String get mine_goods {
    return Intl.message(
      'Enjoy luxurious privileges',
      name: 'mine_goods',
      desc: '',
      args: [],
    );
  }

  /// `Open and enjoy the privilege of browsing all live channels`
  String get mine_goods2 {
    return Intl.message(
      'Open and enjoy the privilege of browsing all live channels',
      name: 'mine_goods2',
      desc: '',
      args: [],
    );
  }

  /// `Limited time offer`
  String get mine_only_time {
    return Intl.message(
      'Limited time offer',
      name: 'mine_only_time',
      desc: '',
      args: [],
    );
  }

  /// `contact us`
  String get mine_call_our {
    return Intl.message(
      'contact us',
      name: 'mine_call_our',
      desc: '',
      args: [],
    );
  }

  /// `welcome`
  String get mine_list_title {
    return Intl.message(
      'welcome',
      name: 'mine_list_title',
      desc: '',
      args: [],
    );
  }

  /// `Language selection`
  String get mine_language {
    return Intl.message(
      'Language selection',
      name: 'mine_language',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
