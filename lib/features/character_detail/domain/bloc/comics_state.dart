part of 'comics_bloc.dart';

@immutable
class ComicsState {
  final List<Comic> comics;
  final bool loading;
  final bool error;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const ComicsState({
    this.comics = const [],
    this.loading = false,
    this.error = false,
  });

  ComicsState copyWith({
    List<Comic> comics,
    bool loading,
    bool error,
  }) {
    if ((comics == null || identical(comics, this.comics)) &&
        (loading == null || identical(loading, this.loading)) &&
        (error == null || identical(error, this.error))) {
      return this;
    }

    return ComicsState(
      comics: comics ?? this.comics,
      loading: loading ?? this.loading,
      error: error ?? this.error,
    );
  }

  @override
  String toString() {
    return 'ComicsState{comics: $comics, loading: $loading, error: $error}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ComicsState &&
          runtimeType == other.runtimeType &&
          listEquals(other.comics, comics) &&
          loading == other.loading &&
          error == other.error);

  @override
  int get hashCode => comics.hashCode ^ loading.hashCode ^ error.hashCode;

//</editor-fold>

}
