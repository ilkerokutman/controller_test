// ignore_for_file: avoid_print

import 'package:controller_test/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  //
  @override
  void onInit() {
    super.onInit();
    print('controller oninit');
  }

  @override
  void onReady() {
    print('controller on ready');
    super.onReady();
  }

  final Rxn<int> _selectedIndex = Rxn();
  int? get selectedIndex => _selectedIndex.value;

  void setIndex(int? value) {
    _selectedIndex.value = value;
    update();
  }

  final Rx<String> _title = 'test'.obs;
  String get title => _title.value;

  void setTitle(String value) {
    _title.value = value;
    update();
  }

  final Rx<User?> _user = Rxn();
  User? get user => _user.value;

  final Rx<TextEditingController> _emailController =
      TextEditingController().obs;
  TextEditingController get emailController => _emailController.value;

  final Rx<TextEditingController> _nameController = TextEditingController().obs;
  TextEditingController get nameController => _nameController.value;

  bool saveForm() {
    String email = emailController.text;
    String name = nameController.text;
    if (name.isEmpty) return false;
    User u = User(name: name, email: email);
    _user.value = u;
    update();
    return true;
  }
}
