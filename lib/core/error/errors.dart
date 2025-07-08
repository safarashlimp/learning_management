sealed class Failure {
  final String message;

  Failure({required this.message});

  @override
  String toString() => 'Unknown failure';
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});

  @override
  String toString() => 'Type: ServerFailure, message: $message';
}

class RequestFailure extends Failure {
  RequestFailure({required super.message});

  @override
  String toString() => 'Type: RequestFailure, message: $message';
}

class NoNetworkFailure extends Failure {
  NoNetworkFailure()
    : super(
        message:
            'No network connection available please check your connection and try again',
      );

  @override
  String toString() =>
      'No network connection available please check your connection and try again';
}

class ConnectionTimeOutFailure extends Failure {
  ConnectionTimeOutFailure()
    : super(
        message:
            'Connection timed out please check your connection and try again',
      );

  @override
  String toString() =>
      'Connection timed out please check your connection and try again';
}

class UnknownFailure extends Failure {
  final String? msg;
  UnknownFailure(this.msg)
    : super(message: msg ?? "Some thing went wrong please try again");

  @override
  String toString() => message;
}

class CacheFailure extends Failure {
  CacheFailure({required super.message});

  @override
  String toString() => 'CacheFailure(message: $message)';
}

class LocationFailure extends Failure {
  LocationFailure({required super.message});
}
