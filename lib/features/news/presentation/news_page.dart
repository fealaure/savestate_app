import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_state/assets/save_state_strings.dart';
import 'package:save_state/features/news/presentation/controllers/news_controller.dart';
import 'package:save_state/features/news/presentation/widgets/news_item_widget.dart';

class NewsPage extends GetView<NewsController> {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SaveStateStrings.newsTitle),
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: controller.posts.length,
                itemBuilder: (context, index) {
                  return NewsItemWidget(
                    post: controller.posts[index],
                    isLeftAligned: index % 2 == 0,
                  );
                },
              ),
      ),
    );
  }
}
