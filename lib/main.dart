import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'core/app_theme.dart';
import 'core/injection.dart';
import 'core/route_generator.dart';
import 'util/constants.dart';

void main() async {
  //initilie my logger
  Fimber.plantTree(DebugTree(useColors: true));

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await setupLocator();

  await Sentry.init((options) {
    options.dsn = SENTRY_DSN;
  }, appRunner: () => runApp(Lodwar()));
}

class Lodwar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lodwar waters',
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(),
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: '/SplashScreen',
    );
  }
}
