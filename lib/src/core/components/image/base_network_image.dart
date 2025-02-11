import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BaseNetworkImage extends StatelessWidget {
  const BaseNetworkImage({super.key, required this.url});

  //String?url
  final String? url;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url ??
          'https://cdn3.iconfinder.com/data/icons/design-n-code/100/272127c4-8d19-4bd3-bd22-2b75ce94ccb4-512.png',
      fit: BoxFit.contain,
      placeholder: (context, url) => const AspectRatio(
        aspectRatio: 2 / 3,
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
