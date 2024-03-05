import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_api/models/article_model.dart';
import 'weib_view.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return WebView(
                    url: articleModel.url!,
                    name: articleModel.name!,
                  );
                },
              ));
            },
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              child: CachedNetworkImage(
                imageUrl: articleModel.image!,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
        ),
        Text(
          articleModel.titel_1 ?? 'ERROR',
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            articleModel.suptitel ?? 'ERROR',
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        )
      ],
    );
  }
}
