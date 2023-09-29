import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNetWorkImg extends StatelessWidget {
  const CustomNetWorkImg(this.imgUrl, {super.key, this.aspectRatio});
  final String imgUrl;
  final double? aspectRatio;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio ?? .65,
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(14),
        elevation: 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: CachedNetworkImage(
            imageUrl: imgUrl,
            fit: BoxFit.fill,
            placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(color: Colors.white)),
            errorWidget: (context, url, error) =>
                const Icon(FontAwesomeIcons.image),
          ),
        ),
      ),
    );
  }
}
