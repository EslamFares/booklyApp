part of 'similuar_books_cubit.dart';

sealed class SimiluarBooksState extends Equatable {
  const SimiluarBooksState();

  @override
  List<Object> get props => [];
}

final class SimiluarBooksInitialState extends SimiluarBooksState {}

final class SimiluarBooksloadingState extends SimiluarBooksState {}

class SimiluarBooksFailureState extends SimiluarBooksState {
  final String errorMsg;
  const SimiluarBooksFailureState(this.errorMsg);
}

class SimiluarBooksSuccessState extends SimiluarBooksState {
  final List<BookModel> books;
  const SimiluarBooksSuccessState(this.books);
}
