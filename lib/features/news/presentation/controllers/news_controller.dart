import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:save_state/features/news/domain/entities/post.dart';
import 'package:save_state/features/news/domain/repositories/post_repository.dart';

class NewsController extends GetxController {
  final PostRepository repository;
  RxList<Post> posts = RxList(List.empty());

  NewsController({required this.repository});

  @override
  void onInit() {
    super.onInit();
    _loadPosts();
  }

  Future<void> _loadPosts() async {
    try {
      posts.value = await repository.getPosts();
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
