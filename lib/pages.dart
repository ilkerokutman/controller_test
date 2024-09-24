import 'package:controller_test/detail.dart';
import 'package:controller_test/home.dart';
import 'package:controller_test/list.dart';
import 'package:controller_test/routes.dart';
import 'package:get/get.dart';

final List<GetPage> pages = [
  GetPage(name: Routes.home, page: () => const HomeScreen()),
  GetPage(name: Routes.list, page: () => const ListScreen()),
  GetPage(name: Routes.detail, page: () => const DetailScreen()),
];
