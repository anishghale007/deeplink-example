import 'package:auto_route/auto_route.dart';
import 'package:deeplink_example/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                context.router.push(const SecondRoute());
              },
              icon: const Icon(Icons.route),
              label: const Text(
                'Go to Second Screen',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
