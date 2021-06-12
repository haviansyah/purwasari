import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:purwasari_frontend/component/authForm.dart';
import 'package:purwasari_frontend/component/button/button.dart';
import 'package:purwasari_frontend/component/card/card.dart';
import 'package:purwasari_frontend/const.dart';
import 'package:purwasari_frontend/login/bloc/login_bloc.dart';
import 'package:purwasari_frontend/login/view/login_form.dart';
import 'package:purwasari_frontend/repository/authentication_repository.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: const EdgeInsets.only(left:16, right: 16),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg_splash.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.only(top: 40)),
            Image(
              image: AssetImage(
                "assets/logo.png",
              ),
              height: 150,
            ),
            Center(
              child: Text(
                "SISIHAN PURWASARI",
                style: TextStyle(
                  fontFamily: 'MontserratMedium',
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 16.0, right: 16),
              child: Text(
                "Sistem Informasi Hantaran\nPelayanan Desa Purwasari",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'MontserratMedium',
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
            ),
            Spacer(),
            AppCard(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                color: Colors.white,
                // height: 200,
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 40.0, right: 40, top: 30),
                  child: BlocProvider(
                    create: (context) {
                      return LoginBloc(
                        authenticationRepository:
                            RepositoryProvider.of<AuthenticationRepository>(context),
                      );
                    },
                    child: LoginForm()
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
