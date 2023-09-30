import 'package:get/get.dart';
import 'package:save_state/features/news/data/repositories/post_repository_impl.dart';
import 'package:save_state/features/news/domain/repositories/post_repository.dart';
import 'package:save_state/features/news/presentation/controllers/news_controller.dart';

class NewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostRepository>(
      () => PostRepositoryImpl(client: Get.find()),
    );
    Get.lazyPut(
      () => NewsController(repository: Get.find()),
    );
  }
}
