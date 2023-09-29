import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_network_img.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'book_rating.dart';

class BookListItem extends StatelessWidget {
  const BookListItem(this.book, {super.key});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, right: 16, left: 16),
      child: Material(
        borderRadius: BorderRadius.circular(14),
        elevation: 15,
        color: Kconst.kPrimaryColor,
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: () {
            GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: book);
          },
          child: SizedBox(
            height: 125,
            child: Row(
              children: [
                CustomNetWorkImg(book.volumeInfo!.imageLinks?.thumbnail ?? ''),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Text(
                          book.volumeInfo!.title!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: KStyles.textStyle20.copyWith(
                            fontFamily: Kconst.kFontGtSectraFine,
                          ),
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        book.volumeInfo!.authors?[0] ?? 'UnKown',
                        style: KStyles.textStyle14
                            .copyWith(color: Kconst.kGreyTextColor),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            book.volumeInfo!.pageCount == 0
                                ? 'Free'
                                : '${book.volumeInfo!.pageCount} €',
                            style: KStyles.textStyle20
                                .copyWith(fontWeight: FontWeight.w900),
                          ),
                          BookRating(
                            rate: book.volumeInfo!.averageRating != null
                                ? book.volumeInfo!.averageRating!.toString()
                                : '4.8',
                            countRate: book.volumeInfo!.ratingsCount != null
                                ? book.volumeInfo!.ratingsCount!.toString()
                                : '2564',
                          )
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
