part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitialState extends SearchState {}

final class SearchloadingState extends SearchState {}

class SearchFailureState extends SearchState {
  final String errorMsg;
  const SearchFailureState(this.errorMsg);
}

class SearchSuccessState extends SearchState {
  final List<BookModel> books;
  const SearchSuccessState(this.books);
}
