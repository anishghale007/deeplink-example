import 'package:auto_route/auto_route.dart';
import 'package:deeplink_example/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: MyHomePage.page,
      path: '/',
    ),
    AutoRoute(
      page: FirstRoute.page,
      path: '/first',
    ),
    AutoRoute(
      page: SecondRoute.page,
      path: '/second',
    ),
  ];
}
