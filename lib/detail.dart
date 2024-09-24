// ignore_for_file: avoid_print

import 'package:controller_test/controller.dart';
import 'package:controller_test/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (app) {
      return Scaffold(
        appBar: AppBar(),
        body: Row(
          children: [
            Expanded(child: Text('detail ${app.selectedIndex}')),
            const VerticalDivider(),
            Expanded(
              child: Column(
                children: [
                  TextField(
                    controller: app.nameController,
                    decoration: const InputDecoration(labelText: 'name'),
                  ),
                  TextField(
                    controller: app.emailController,
                    decoration: const InputDecoration(labelText: 'email'),
                  ),
                  ElevatedButton(
                    child: const Text('submit'),
                    onPressed: () {
                      final result = app.saveForm();
                      if (result) {
                        Get.offAllNamed(Routes.home);
                      } else {
                        print('error');
                      }
                    },
                  ),
                  const Divider(),
                  TextButton(
                      onPressed: () {
                        app.setTitle('SecondTitle');
                      },
                      child: const Text('test')),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
