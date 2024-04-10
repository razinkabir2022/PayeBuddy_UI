import 'package:currency/view/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then(
    (_) => runApp(
      const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CryptoPay',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xff4BA8E6,
          <int, Color>{
            50: Color(0xff4BA8E6),
            100: Color(0xff4BA8E6),
            200: Color(0xff4BA8E6),
            300: Color(0xff4BA8E6),
            400: Color(0xff4BA8E6),
            500: Color(0xff4BA8E6),
            600: Color(0xff4BA8E6),
            700: Color(0xff4BA8E6),
            800: Color(0xff4BA8E6),
            900: Color(0xff4BA8E6),
          },
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
