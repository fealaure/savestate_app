import 'package:dio/dio.dart';
import 'package:get/get.dart';

class GlobalBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Dio(), permanent: true);
  }
}
