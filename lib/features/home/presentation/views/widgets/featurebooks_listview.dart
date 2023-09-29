import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/presentation/bloc/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/widgets/custom_error_view.dart';
import '../../../../../core/widgets/custom_loading_view.dart';
import '../../../../../core/widgets/custom_network_img.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccessState) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
            itemCount: state.books.length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              borderRadius: BorderRadius.circular(14),
              onTap: () {
                GoRouter.of(context).push(AppRouter.kBookDetailsView,
                    extra: state.books[index]);
              },
              child: Padding(
                padding:
                    const EdgeInsets.only(right: 4, left: 4, bottom: 2, top: 2),
                child: CustomNetWorkImg(
                    state.books[index].volumeInfo!.imageLinks?.thumbnail ?? ''),
              ),
            ),
          ),
        );
      } else if (state is FeaturedBooksFailureState) {
        return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: CustomErrorView(state.errorMsg));
      } else {
        return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: const CustomLoadingView());
      }
    });
  }
}
