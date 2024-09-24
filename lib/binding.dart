import 'package:controller_test/controller.dart';
import 'package:controller_test/second.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  Future<void> dependencies() async {
    await Get.putAsync(
      () async => AppController(),
      permanent: true,
    );

    await Get.putAsync(
      () async => SecondController(),
      permanent: true,
    );
  }
}
