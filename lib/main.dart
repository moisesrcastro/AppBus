import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_application_1/pages/screen_login.dart';
import 'package:flutter_application_1/data/data.dart';


void main() {
  runApp(
    DevicePreview(enabled: !kReleaseMode, builder: (context) =>  MyApp()),
  );
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: InheritedUser(child: const LoginPage()),
    );
  }
}

//

