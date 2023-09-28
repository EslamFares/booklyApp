import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitialState());
  static FeaturedBooksCubit get(context) => BlocProvider.of(context);
  //========================
  final HomeRepo homeRepo;
  Future<void> fetchFeaturesBooks() async {
    emit(FeaturedBooksLoadingState());

    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeaturedBooksFailureState(failure.errMsg));
    }, (books) {
      emit(FeaturedBooksSuccessState(books));
    });
  }
}
