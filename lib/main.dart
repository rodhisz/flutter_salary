import 'package:flutter/material.dart';
import 'package:flutter_salary/pages/Auth/signin_page.dart';
import 'package:flutter_salary/pages/home/home_page.dart';
import 'package:flutter_salary/pages/main_page.dart';
import 'package:flutter_salary/pages/salary/detail_salary_page.dart';
import 'package:flutter_salary/pages/splash/splash_screen.dart';
import 'package:flutter_salary/providers/auth_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => AuthProvider())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          '/home-page': (context) => HomePage(),
          '/sign-in': (context) => SignInPage(),
          '/main-page': (context) => MainPage(),
          '/detail-salary': (context) => DetailSalary(),
        },
      ),
    );
  }
}
