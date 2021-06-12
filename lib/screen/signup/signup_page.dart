import 'package:flutter/material.dart';
import 'package:purwasari_frontend/component/authForm.dart';
import 'package:purwasari_frontend/component/button/button.dart';
import 'package:purwasari_frontend/component/card/card.dart';
import 'package:purwasari_frontend/const.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
            Padding(padding: const EdgeInsets.only(top: 60)),
            Image(
              image: AssetImage(
                "assets/logo.png",
              ),
              height: 200,
            ),
            Center(
              child: Text(
                "SISIHAN PURWASARI",
                style: TextStyle(
                  fontFamily: 'MontserratMedium',
                  fontSize: 20,
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
                  fontSize: 16,
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
                  child: Column(
                    children: [
                      Text("Daftar Akun",
                          style: TextStyle(
                              fontFamily: 'MontserratBold',
                              fontSize: 20,
                              color: Colors.black)),
                      Padding(padding: const EdgeInsets.only(top: 30)),
                      AuthForm(
                        hintText: 'Masukkan nama',
                      ),
                      Padding(padding: const EdgeInsets.only(top: 16)),
                      AuthForm(hintText: 'Masukkan nomor telepon'),
                      Padding(padding: const EdgeInsets.only(top: 16)),
                      AuthForm(hintText: 'Masukkan email'),
                      Padding(padding: const EdgeInsets.only(top: 16)),
                      AuthForm(hintText: 'Masukkan password'),
                      Padding(padding: const EdgeInsets.only(top: 16)),
                      AuthForm(hintText: 'Ulangi masukkan password'),
                      Padding(padding: const EdgeInsets.only(bottom: 20)),
                      MainButton(
                        height: 42,
                        color: PurwasariAppPalette.orange,
                        title: "DAFTAR",
                        textColor: Colors.white,
                        shadow: new BoxShadow(
                            color: Color.fromRGBO(245, 161, 52, 0.3),
                            blurRadius: 6,
                            offset: new Offset(0, 3),
                            spreadRadius: 2),
                      ),
                      Padding(padding: const EdgeInsets.only(bottom: 16)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sudah punya akun?",
                            style: TextStyle(
                                fontFamily: 'MontserratMedium',
                                fontSize: 12,
                                color: Colors.black),
                          ),
                          TextButton(
                              onPressed: null,
                              child: Text(
                                "Masuk ke akun Anda",
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
                )),
          ],
        ),
      ),
    );
  }
}
