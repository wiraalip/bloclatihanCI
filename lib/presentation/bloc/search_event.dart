part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class onQueryChanged extends SearchEvent {
  final String query;

  onQueryChanged(this.query);

  @override
  List<Object> get props => [query];
}
