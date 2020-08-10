class Failure implements Exception {}

class InvalidText extends Failure {
  String message;
  InvalidText({this.message});
}

class NotFound extends Failure {
  String message;
  NotFound({this.message});
}

class DatasourceError extends Failure {
  String message;
  DatasourceError({this.message});
}

class NotFound404 extends DatasourceError {
  String message;
  NotFound404({this.message});
}

class BadRequest400 extends DatasourceError {
  String message;
  BadRequest400({this.message});
}
