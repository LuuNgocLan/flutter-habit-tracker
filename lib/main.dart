import 'package:flutter/material.dart';
import 'package:flutter_habit_tracker/generated/l10n.dart';
import 'package:flutter_habit_tracker/route/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  await S.load(const Locale.fromSubtags(languageCode: 'en'));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: S.current.title,
      routerConfig: _appRouter.config(),
    );
  }
}
