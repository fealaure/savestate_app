import 'package:get/get.dart';
import 'package:save_state/features/news/domain/entities/post.dart';
import 'package:save_state/features/news/domain/repositories/post_repository.dart';

class NewsController extends GetxController {
  final PostRepository repository;
  var posts = <Post>[].obs;
  var isLoading = true.obs;

  NewsController({required this.repository});

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }

  void fetchPosts() async {
    try {
      isLoading(true);
      var postList = await repository.fetchPosts();
      posts.value = postList;
    } finally {
      isLoading(false);
    }
  }
}
