import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_state/assets/save_state_strings.dart';
import 'package:save_state/features/news/presentation/controllers/news_controller.dart';

class NewsPage extends GetView<NewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(SaveStateStrings.newsTitle)),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.posts.length,
          itemBuilder: (context, index) {
            final post = controller.posts[index];
            return ListTile(
              title: Text(post.title),
              subtitle: Text(post.excerpt),
            );
          },
        ),
      ),
    );
  }
}
