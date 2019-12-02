import 'dart:async';
import 'package:flutter_workshop/login/login_event.dart';
import 'package:flutter_workshop/login/login_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_workshop/login/login.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState> {
  

  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginAppInitial) {
      yield* _mapAppStartedToState();
    } 
    if (event is LoginButtonPressed) {
      yield* _mapShowAboutToState(event.email, event.password);
    }
  }

   Stream<LoginState> _mapAppStartedToState() async* {
     yield LoginInitial();
   }
   Stream<LoginState> _mapShowAboutToState(String email, String password) async* {
     yield LoginCheck(email: email, password: password);
   }
}  
