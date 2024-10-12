import 'package:flutter_application_1/app/modules/dashboard/views/dash_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.Dashboard;

  static final routes = [
    GetPage(
      name: _Paths.Dashboard,
      page: () => Dashboard(),
    ),
  ];
}
