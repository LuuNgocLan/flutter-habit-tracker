import 'package:auto_route/auto_route.dart';
import 'package:flutter_habit_tracker/features/home/home_page.dart';
import 'package:flutter_habit_tracker/features/onboarding/on_boarding_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnBoardingRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
      ];
}
