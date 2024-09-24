// ignore_for_file: avoid_print

import 'package:controller_test/binding.dart';
import 'package:controller_test/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBindings(),
      initialRoute: Routes.home,
      getPages: pages,
      onReady: () {
        print('app onready');
      },
    );
  }
}
