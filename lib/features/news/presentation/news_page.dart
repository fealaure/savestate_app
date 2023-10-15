import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_state/assets/save_state_strings.dart';
import 'package:save_state/features/news/domain/entities/post.dart';
import 'package:save_state/features/news/presentation/controllers/news_controller.dart';

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
                  final post = controller.posts[index];
                  return index % 2 == 0 ? _buildItemLeft(post, context) : _buildItemRight(post, context);
                },
              ),
      ),
    );
  }

  Widget _buildItemLeft(Post post, BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3, // for larger image
          child: _buildImage(post.mediaUrl),
        ),
        Expanded(
          flex: 4, // for content
          child: _buildContent(post),
        ),
      ],
    );
  }

  Widget _buildItemRight(Post post, BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4, // for content
          child: _buildContent(post),
        ),
        Expanded(
          flex: 3, // for larger image
          child: _buildImage(post.mediaUrl),
        ),
      ],
    );
  }

  Widget _buildImage(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: imageUrl.isNotEmpty
          ? Image.network(
              imageUrl,
              fit: BoxFit.cover,
            )
          : const Placeholder(), // or some placeholder if the URL is empty
    );
  }

  Widget _buildContent(Post post) {
    return ListTile(
      title: Text(post.title),
      subtitle: Text(post.excerpt),
      onTap: () {
        // Navigate to details page or whatever your logic is
      },
    );
  }
}
