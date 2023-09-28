part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitialState extends NewestBooksState {}

class NewestBooksLoadingState extends NewestBooksState {}

class NewestBooksFailureState extends NewestBooksState {
  final String errorMsg;
  const NewestBooksFailureState(this.errorMsg);
}

class NewestBooksSuccessState extends NewestBooksState {
  final List<BookModel> books;
  const NewestBooksSuccessState(this.books);
}
