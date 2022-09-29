import 'package:flutter/cupertino.dart';

/**
 *@program: new_live
 *@description:
 *@author: Alex.LingJiaHua
 *@create: 2022-09-29
 */

abstract class RedirectInterceptor {
  Future<bool> needRedirect();

  Future navigateTo(BuildContext context);
}
