abstract class CoinState {}

class InitState extends CoinState {}

class LoadingState extends CoinState {}

class SuccessState extends CoinState {}

class ErrorState extends CoinState {
  final String Erorr;

  ErrorState(this.Erorr);
}
