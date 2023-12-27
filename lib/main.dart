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
        // deepLinkBuilder: (deepLink) {
        //   if (deepLink.path.contains('/first')) {
        //     // return deepLink;
        //     return const DeepLink([FirstRoute()]);
        //   } else if (deepLink.path.contains('/second')) {
        //     // return deepLink;
        //     return const DeepLink([SecondRoute()]);
        //   } else {
        //     return DeepLink.defaultPath;
        //   }
        // },
      ),
    );
  }
}
