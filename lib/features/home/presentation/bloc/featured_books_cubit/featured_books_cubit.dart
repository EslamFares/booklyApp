import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'featured_books_state.dart';

class FeaturedbooksCubit extends Cubit<FeaturedbooksState> {
  FeaturedbooksCubit(this.homeRepo) : super(FeaturedbooksInitialState());
  static FeaturedbooksCubit get(context) => BlocProvider.of(context);
  //========================

  final HomeRepo homeRepo;
  Future<void> fetchFeaturesBooks() async {
    emit(FeaturedbooksLoadingState());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedbooksFailureState(failure.errMsg));
    }, (books) {
      emit(FeaturedbooksSuccessState(books));
    });
  }
}
