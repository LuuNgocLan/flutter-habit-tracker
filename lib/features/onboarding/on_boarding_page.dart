import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_habit_tracker/route/app_router.dart';

@RoutePage()
class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.router.push(const HomeRoute());
          },
          child: const Text(
            'Go to Home Page',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
