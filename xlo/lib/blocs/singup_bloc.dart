import 'package:rxdart/rxdart.dart';
import 'package:xlo/models/user.dart';

enum SignUpState { IDLE, LOADING, ERROR }

class SignUpBlocState {
  SignUpBlocState(this.state, {this.errorMessage});

  SignUpState state;
  String errorMessage;
}

class SignUpBloc {
  final BehaviorSubject<SignUpBlocState> _stateContoller =
      BehaviorSubject<SignUpBlocState>.seeded(
          SignUpBlocState(SignUpState.IDLE));

  Stream<SignUpBlocState> get outState => _stateContoller.stream;

  User user = User();

  void signUp() async {
    _stateContoller.add(SignUpBlocState(SignUpState.LOADING));

    await Future.delayed(Duration(seconds: 3));

    _stateContoller.add(SignUpBlocState(SignUpState.IDLE));
  }

  void setName(String name) {
    user.name = name;
  }

  void setEmail(String email) {
    user.email = email;
  }

  void setPassword(String password) {
    user.password = password;
  }

  void dispose() {
    _stateContoller.close();
  }
}
