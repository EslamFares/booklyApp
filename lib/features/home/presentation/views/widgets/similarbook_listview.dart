import 'package:bookly/core/widgets/custom_error_view.dart';
import 'package:bookly/core/widgets/custom_loading_view.dart';
import 'package:bookly/features/home/presentation/bloc/simuilar_books_cubit/similuar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/custom_network_img.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimiluarBooksCubit, SimiluarBooksState>(
        builder: (context, state) {
      if (state is SimiluarBooksSuccessState) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 16, bottom: 16),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) => Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: CustomNetWorkImg(
                        state.books[index].volumeInfo!.imageLinks?.thumbnail ??
                            ''),
                  )),
        );
      } else if (state is SimiluarBooksFailureState) {
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
