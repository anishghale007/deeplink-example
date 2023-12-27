import 'package:deeplink_example/screens/first_screen.dart';
import 'package:deeplink_example/screens/home_screen.dart';
import 'package:deeplink_example/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // final _appRouter = AppRouter();

  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => const MyHomePage(),
        routes: [
          GoRoute(
            path: 'first',
            builder: (_, __) => const FirstScreen(),
          ),
          GoRoute(
            path: 'second',
            builder: (_, __) => const SecondScreen(),
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Deeplink',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: router,
      // routerConfig: _appRouter.config(
      //   // navigatorObservers: () => [MyObserver()],
      //   // deepLinkBuilder: (deepLink) {
      //   //   if (deepLink.path.contains('/first')) {
      //   //     // return deepLink;
      //   //     return const DeepLink([FirstRoute()]);
      //   //   } else if (deepLink.path.contains('/second')) {
      //   //     // return deepLink;
      //   //     return const DeepLink([SecondRoute()]);
      //   //   } else {
      //   //     return DeepLink.defaultPath;
      //   //   }
      //   // },
      // ),
    );
  }
}
