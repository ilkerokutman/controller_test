import 'package:controller_test/controller.dart';
import 'package:get/get.dart';

class SecondController extends GetxController {
  //
  final Rx<String> _title = 'SecondTitle'.obs;
  String get title => _title.value;

  bool get isTitleEqual {
    final AppController app = Get.find();
    return app.title == title;
  }
}
