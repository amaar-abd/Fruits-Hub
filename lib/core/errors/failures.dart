class Failures {
  final String message;
  Failures(this.message);
}

class ServerFailure extends Failures {
  ServerFailure( super.message); //for request failures
  
}