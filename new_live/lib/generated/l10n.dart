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

  /// `ToKiLive`
  String get hotTitle {
    return Intl.message(
      'ToKiLive',
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
