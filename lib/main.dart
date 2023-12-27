import 'package:auto_route/auto_route.dart';
import 'package:deeplink_example/app_router.dart';
import 'package:deeplink_example/my_observer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Deeplink',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _appRouter.config(
        navigatorObservers: () => [MyObserver()],
        deepLinkBuilder: (deepLink) {
          if (deepLink.path.startsWith('/first')) {
            return deepLink;
          } else if (deepLink.path.startsWith('/second')) {
            return deepLink;
          } else {
            return DeepLink.defaultPath;
          }
        },
      ),
    );
  }
}
