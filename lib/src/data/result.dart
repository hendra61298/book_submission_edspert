
class Result<T> {
    final String error;

    final int total;

    final T? data ;

      Result({
        required this.error,
        required this.total,
        required this.data
      });
}