import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_state/assets/save_state_strings.dart';
import 'package:save_state/core/global_bindings.dart';

import 'navigation/navigation.dart';

void main() => runApp(const SaveStateApp());

class SaveStateApp extends StatelessWidget {
  const SaveStateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: SaveStateStrings.appName, initialRoute: Navigation.news, initialBinding: GlobalBindings(), getPages: Navigation.getPages());
  }
}
