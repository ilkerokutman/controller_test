// ignore_for_file: avoid_print

import 'package:controller_test/controller.dart';
import 'package:controller_test/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              final AppController controller = Get.find();
              controller.setIndex(null);
              print('${controller.user?.name}');
            },
          )
        ],
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.list);
            },
            child: const Text('Go to List Screen'),
          ),
          const Divider(),
          GetBuilder<AppController>(builder: (app) {
            return Text(
                'selected: ${app.selectedIndex}, title: ${app.title}\n\n'
                'name: ${app.user?.name}\nemail: ${app.user?.email}');
          }),
        ],
      ),
    );
  }
}
