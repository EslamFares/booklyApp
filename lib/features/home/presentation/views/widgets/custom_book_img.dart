import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookImg extends StatelessWidget {
  const CustomBookImg(this.imgUrl, {super.key});
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .65,
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
