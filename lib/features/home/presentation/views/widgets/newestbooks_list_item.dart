import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'book_rating.dart';

class BookListItem extends StatelessWidget {
  const BookListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16, right: 16, left: 16),
        child: Material(
          borderRadius: BorderRadius.circular(8),
          elevation: 15,
          color: Kconst.kPrimaryColor,
          child: SizedBox(
            height: 125,
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 2.6 / 4,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(Kconst.imgUrlTest),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Text(
                          'Bottar and the Goblet Fire',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: KStyles.textStyle20.copyWith(
                            fontFamily: Kconst.kFontGtSectraFine,
                          ),
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'J.K. Rowling',
                        style: KStyles.textStyle14
                            .copyWith(color: Kconst.kGreyTextColor),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '19.99 €',
                            style: KStyles.textStyle20
                                .copyWith(fontWeight: FontWeight.w900),
                          ),
                          const BookRating()
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
