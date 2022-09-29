import 'app_page_config.dart';
import 'app_router.dart';

/**
 *@program: new_live
 *@description:
 *@author: Alex.LingJiaHua
 *@create: 2022-09-29
 */

class ApplicationRouter {
  static setupRouter() {
    pageHandler.forEach((path, handler) {
      AppRouter.define(path, handler: handler);
    });
  }
}