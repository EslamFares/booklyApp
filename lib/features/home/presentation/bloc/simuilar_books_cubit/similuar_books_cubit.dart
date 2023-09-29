import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similuar_books_state.dart';

class SimiluarBooksCubit extends Cubit<SimiluarBooksState> {
  SimiluarBooksCubit(this.homeRepo) : super(SimiluarBooksInitialState());
  //============================
  final HomeRepo homeRepo;
  Future<void> fetchSimiluarBooks({required String category}) async {
    emit(SimiluarBooksloadingState());

    var result = await homeRepo.fetchSimilerBooks(category: category);

    result.fold((failure) {
      emit(SimiluarBooksFailureState(failure.errMsg));
    }, (books) {
      emit(SimiluarBooksSuccessState(books));
    });
  }
}
