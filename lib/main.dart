import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'feature/Login/presenation/view/login_view.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: const Locale("ar"),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const LoginView(),
      // home: const LayOutView(),
    );
  }
}
