import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:purwasari_frontend/component/authForm.dart';
import 'package:purwasari_frontend/component/button/button.dart';
import 'package:purwasari_frontend/const.dart';
import 'package:purwasari_frontend/login/bloc/login_bloc.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Authentication Failure')),
            );
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              Text("Masuk ke Akun",
                  style: TextStyle(
                      fontFamily: 'MontserratBold',
                      fontSize: 20,
                      color: Colors.black)),
              Padding(padding: const EdgeInsets.only(top: 30)),
              _UsernameInput(),
              Padding(padding: const EdgeInsets.only(top: 16)),
              _PasswordInput(),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: null,
                  child: Text(
                    "Lupa Password?",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontFamily: 'MontserratBold',
                      fontSize: 12,
                      color: PurwasariAppPalette.blue,
                    ),
                  )
                ),
              ),
              Padding(padding: const EdgeInsets.only(bottom: 16)),
              _LoginButton(),
              Padding(padding: const EdgeInsets.only(bottom: 16)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Belum punya akun?",
                    style: TextStyle(
                        fontFamily: 'MontserratMedium',
                        fontSize: 12,
                        color: Colors.black),
                  ),
                  TextButton(
                      onPressed: null,
                      child: Text(
                        "Buat sekarang",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontFamily: 'MontserratBold',
                          fontSize: 12,
                          color: PurwasariAppPalette.blue,
                        ),
                      )),
                ],
              ),
              Padding(padding: const EdgeInsets.only(bottom: 30))
            ],
          ),
        ],
      ),
  );
}
}

class _LoginButton extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return BlocBuilder<LoginBloc, LoginState>(
    buildWhen: (previous, current) => previous.status != current.status,
    builder: (context, state) {
      return state.status.isSubmissionInProgress
        ? const CircularProgressIndicator()
        : MainButton(
          height: 42,
          color: PurwasariAppPalette.orange,
          title: "MASUK",
          textColor: Colors.white,
          shadow: new BoxShadow(
            color: Color.fromRGBO(245, 161, 52, 0.3),
            blurRadius: 6,
            offset: new Offset(0, 3),
            spreadRadius: 2),
          onPress: state.status.isValidated
            ? () {
                context.read<LoginBloc>().add(const LoginSubmitted());
              }
            : null,
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return AuthForm(
          key: const Key('loginForm_passwordInput_textField'),
          hintText: 'Masukkan password', 
          isPassword: true,
          errorText: state.password.invalid ? 'password anda salah' : null,
        );
      }
    );
  }
}

class _UsernameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.username != current.username,
      builder: (context, state) {
        return AuthForm(
          key: const Key('loginForm_usernameInput_textField'),
          hintText: 'Masukkan email',
          errorText: state.username.invalid ? 'email anda salah' : null,
          onChanged: (username) =>
            context.read<LoginBloc>().add(LoginUsernameChanged(username)),
        );
      }
    );
  }
}