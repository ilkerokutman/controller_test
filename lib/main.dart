import 'package:controller_test/app.dart';
import 'package:controller_test/binding.dart';
import 'package:flutter/material.dart';

void main() async {
  await AppBindings().dependencies();

  runApp(const MainApp());
}
