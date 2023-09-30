import 'dart:io';

import 'package:get/get.dart';

class GlobalBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HttpClient(), permanent: true);
  }
}
