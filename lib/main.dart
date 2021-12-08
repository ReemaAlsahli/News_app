import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:udemy_flutter/layout/News_app/News_layout.dart';
import 'package:udemy_flutter/modules/bmi/bmi_screen.dart';
import 'package:udemy_flutter/modules/counter/counter_screen.dart';
import 'package:udemy_flutter/modules/login/login_screen.dart';
import 'package:udemy_flutter/modules/messenger/messenger_screen.dart';
import 'package:udemy_flutter/modules/users/users_screen.dart';
import 'package:udemy_flutter/shared/bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(MyApp());
}

// Stateless
// Stateful

// class MyApp

class MyApp extends StatelessWidget {
  // constructor
  // build

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.light,
          ),
          textTheme: TextTheme(
            bodyText1: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          actionsIconTheme: IconThemeData(color: Colors.black, size: 20.0),
          color: Colors.white,
          elevation: 0.0,
        ),
      ),
      home: NewsScreen(),
    );
  }
}
