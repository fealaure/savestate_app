import 'package:get/get.dart';
import 'package:save_state/features/news/binding/news_binding.dart';
import 'package:save_state/features/news/presentation/news_page.dart';

abstract class Navigation {
  static const news = "/";

  static getPages() => [
        GetPage(name: news, page: () => NewsPage(), binding: NewsBinding()),
      ];
}
