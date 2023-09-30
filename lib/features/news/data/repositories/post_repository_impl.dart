import 'dart:io';

import 'package:save_state/features/news/domain/entities/post.dart';
import 'package:save_state/features/news/domain/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final HttpClient client;

  PostRepositoryImpl({required this.client});

  @override
  Future<List<Post>> getPosts() async {
    return List.empty();
  }
}
