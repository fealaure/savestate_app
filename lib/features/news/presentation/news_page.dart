import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_state/assets/save_state_strings.dart';
import 'package:save_state/features/news/presentation/controllers/news_controller.dart';

class NewsPage extends GetView<NewsController> {
  const NewsPage({super.key});

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
                  final post = controller.posts[index];
                  return ListTile(
                    title: Text(post.title.rendered),
                    subtitle: Text(post.excerpt.rendered),
                    onTap: () => Get.to(() => {}),
                  );
                },
              ),
      ),
    );
  }
}
