import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitialState());
  static SearchCubit get(context) => BlocProvider.of(context);

  //============================
  TextEditingController searchController = TextEditingController();
  final HomeRepo homeRepo;
  Future<void> fetchSearchBookeRsult({required String searchtext}) async {
    emit(SearchloadingState());

    var result = await homeRepo.fetchSearchBooks(searchTExt: searchtext);

    result.fold((failure) {
      emit(SearchFailureState(failure.errMsg));
    }, (books) {
      emit(SearchSuccessState(books));
    });
  }
}
