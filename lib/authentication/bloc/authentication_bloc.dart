import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:purwasari_frontend/repository/authentication_repository.dart';
import 'package:purwasari_frontend/repository/user_repository/user_repository.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    final AuthenticationRepository authenticationRepository,
    final UserRepository userRepository,
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        super(const AuthenticationState.unknown()) {
    _authenticationStatusSubscription = _authenticationRepository.status.listen(
      (status) => add(AuthenticationStatusChanged(status)),
    );
  }

  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;
  StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AuthenticationStatusChanged) {
      yield await _mapAuthenticationStatusChangedToState(event);
    } else if (event is AuthenticationLogoutRequested) {
      _authenticationRepository.logOut();
    }
  }

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    _authenticationRepository.dispose();
    return super.close();
  }

  Future<AuthenticationState> _mapAuthenticationStatusChangedToState(
    AuthenticationStatusChanged event,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return const AuthenticationState.unauthenticated();
      case AuthenticationStatus.authenticated:
        final user = await _tryGetUser();
        return user != null
            ? AuthenticationState.authenticated(user)
            : const AuthenticationState.unauthenticated();
      default:
        return const AuthenticationState.unknown();
    }
  }

  Future<User> _tryGetUser() async {
    try {
      final user = await _userRepository.getUser();
      return user;
    } on Exception {
      return null;
    }
  }
}