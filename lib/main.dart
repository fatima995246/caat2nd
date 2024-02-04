import 'package:caatsec/my_theme.dart';
import 'package:caatsec/todo_tab/task_widget.dart';
import 'package:caatsec/settings/settings_tab.dart';
import 'package:caatsec/todo_tab/to_do_tab.dart';
import 'package:caatsec/signup/sign_up.dart';
import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'get_started_screen/get_started_screen.dart';
import 'home_tab/home_screen.dart';
import 'login/login_screen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());

  // whenever your initialization is completed, remove the splash screen:
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: GetStartedScreen.routeName,
      routes: {
        GetStartedScreen.routeName: (context) => GetStartedScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignUPScreen.routeName: (context) => SignUPScreen(),
        SettingsTab.routeName: (context) => SettingsTab(),
        HomeScreen.routeName: (context) => HomeScreen(),
        ToDoTab.routeName: (context) => ToDoTab(),


      },
      theme: MyTheme.lightTheme,
    );
  }
}
