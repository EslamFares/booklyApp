part of 'featured_books_cubit.dart';

sealed class FeaturedbooksState extends Equatable {
  const FeaturedbooksState();

  @override
  List<Object> get props => [];
}

class FeaturedbooksInitialState extends FeaturedbooksState {}

class FeaturedbooksLoadingState extends FeaturedbooksState {}

class FeaturedbooksFailureState extends FeaturedbooksState {
  final String errorMsg;
  const FeaturedbooksFailureState(this.errorMsg);
}

class FeaturedbooksSuccessState extends FeaturedbooksState {
  final List<BookModel> books;
  const FeaturedbooksSuccessState(this.books);
}
