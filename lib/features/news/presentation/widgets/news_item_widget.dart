import 'package:flutter/material.dart';
import 'package:save_state/features/news/domain/entities/post.dart';

class NewsItemWidget extends StatelessWidget {
  final Post post;
  final bool isLeftAligned;

  const NewsItemWidget({
    Key? key,
    required this.post,
    required this.isLeftAligned,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              post.mediaUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: isLeftAligned ? Alignment.centerRight : Alignment.centerLeft,
                  end: isLeftAligned ? Alignment.centerLeft : Alignment.centerRight,
                  colors: [Colors.black.withOpacity(1.0), Colors.transparent],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: isLeftAligned ? null : 15,
            right: isLeftAligned ? 15 : null,
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5, // Define a largura como 50% da largura da tela
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Ajusta a coluna ao tamanho do conteúdo
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      post.excerpt,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
