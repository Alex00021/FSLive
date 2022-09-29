import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:new_live/router/redirect_interceptor.dart';

import 'app_bundle.dart';

/**
 *@program: new_live
 *@description:
 *@author: Alex.LingJiaHua
 *@create: 2022-09-29
 */

class _AppRouter extends FluroRouter {
  ///bundle and routeSettings only one
  ///Both can use bundle.=>>routeSettings.arguments=bundle
  @override
  Future navigateTo(BuildContext context, String path,
      {bool replace = false,
        bool clearStack = false,
        bool maintainState = true,
        bool rootNavigator = false,
        RedirectInterceptor? interceptor,
        String? name,
        Bundle? bundle,
        TransitionType? transition,
        Duration? transitionDuration,
        RouteTransitionsBuilder? transitionBuilder,
        RouteSettings? routeSettings}) async {
    if (await interceptor?.needRedirect() ?? false) {
      return interceptor!.navigateTo(context);
    }
    if (bundle != null) {
      routeSettings = RouteSettings(arguments: bundle, name: name ?? path);
    }
    return super.navigateTo(context, path,
        replace: replace,
        clearStack: clearStack,
        maintainState: maintainState,
        rootNavigator: rootNavigator,
        transition: transition,
        transitionDuration: transitionDuration,
        transitionBuilder: transitionBuilder,
        routeSettings: routeSettings);
  }

  ///back home and clear other page
  ///example:Home ->A->B->C:popToHome ->Home
  void popToHome(BuildContext context) {
    popUntil(context, (route) => route.isFirst);
  }

  @override
  void pop<T>(BuildContext context, [T? result]) {
    if (canPop(context)) {
      super.pop(context, result);
    }
  }

  void popUntil(BuildContext context, RoutePredicate predicate) {
    Navigator.popUntil(context, predicate);
  }

  bool canPop(BuildContext context) {
    return Navigator.canPop(context);
  }

  _AppRouter createNewAppRouter() => _AppRouter();
}

final AppRouter = _AppRouter();

