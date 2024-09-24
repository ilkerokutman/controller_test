import 'package:controller_test/controller.dart';
import 'package:controller_test/routes.dart';
import 'package:controller_test/second.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (app) {
      return GetBuilder<SecondController>(
        builder: (sc) {
          return Scaffold(
            appBar: AppBar(title: Text('${sc.isTitleEqual}'),),
            body: ListView.builder(
              itemBuilder: (context, index) => ListTile(
                title: Text('item $index'),
                onTap: () {
                  app.setIndex(index);
                  app.setTitle('test $index');
                  Get.toNamed(Routes.detail);
                },
              ),
              itemCount: 100,
            ),
          );
        }
      );
    });
  }
}
