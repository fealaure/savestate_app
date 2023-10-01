import 'package:dio/dio.dart';
import 'package:save_state/features/news/domain/entities/post.dart';
import 'package:save_state/features/news/domain/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final Dio dio;

  PostRepositoryImpl({required this.dio});

  Future<List<Post>> fetchPosts() async {
    try {
      final response = await dio.get('https://savestate.com.br/wp-json/wp/v2/posts');
      final List<dynamic> postsJson = response.data;
      return postsJson.map((json) => Post.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Falha ao carregar posts: $e');
    }
  }
}
