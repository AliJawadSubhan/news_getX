class AppExceptions implements Exception {
  final String? message;
  AppExceptions([this.message]);
  @override
  String toString() {
    return message.toString();
  }
}

class InternetException extends AppExceptions {
  InternetException([String? message]) : super('No Internet Exception');
}

class TimeOutExceptions extends AppExceptions {
  TimeOutExceptions([String? message]) : super('Time out Exceptions');
}

class ServerException extends AppExceptions {
  ServerException([String? message]) : super('Internal Server Exceptions');
}

class InvalidUrl extends AppExceptions {
  InvalidUrl([String? message]) : super('Invalid Url Exceptions');
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message]) : super('Fetch Data Exceptions');
}
