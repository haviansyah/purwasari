import 'package:flutter/material.dart';
import 'package:purwasari_frontend/component/appbar.dart';
import 'package:purwasari_frontend/component/authForm.dart';
import 'package:purwasari_frontend/component/button/button.dart';
import 'package:purwasari_frontend/component/card/card.dart';
import 'package:purwasari_frontend/const.dart';

class UbahProfilPage extends StatefulWidget {
  @override
  _UbahProfilPageState createState() => _UbahProfilPageState();
}

class _UbahProfilPageState extends State<UbahProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PurwasariAppPalette.background,
      appBar: PurwasariAppBar(
        title: 'Ubah Profil',
        textColor: Colors.black,
        iconColor: Colors.black,
      ),
      body: ListView(
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.only(top: 10, left: 24, right: 24),
        children: 
          [Column(
            children: [
              AppCard(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 12,right:12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nomor Induk Kependudukan (NIK)',
                        style: TextStyle(
                          fontFamily: 'MontserratMedium',
                          fontSize: 10,
                          color: Color(0xff989898),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 4)),
                      Text('317400808820003',
                        style: TextStyle(
                          fontFamily: 'MontserratMedium',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text('Nama',
                        style: TextStyle(
                          fontFamily: 'MontserratMedium',
                          fontSize: 10,
                          color: Color(0xff989898),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 4)),
                      AuthForm(
                        hintText: 'Masukkan Nama Anda',
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text('Nomor Telepon',
                        style: TextStyle(
                          fontFamily: 'MontserratMedium',
                          fontSize: 10,
                          color: Color(0xff989898),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 4)),
                      AuthForm(
                        hintText: 'Masukkan Nomor telepon Anda',
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),                
                      Text('Email',
                        style: TextStyle(
                          fontFamily: 'MontserratMedium',
                          fontSize: 10,
                          color: Color(0xff989898),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 4)),
                      AuthForm(
                        hintText: 'Masukkan Email Anda',
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text('Password Sekarang',
                        style: TextStyle(
                          fontFamily: 'MontserratMedium',
                          fontSize: 10,
                          color: Color(0xff989898),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 4)),
                      AuthForm(
                        hintText: 'Masukkan Password Anda Saat Ini',
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text('Password Baru',
                        style: TextStyle(
                          fontFamily: 'MontserratMedium',
                          fontSize: 10,
                          color: Color(0xff989898),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 4)),
                      AuthForm(
                        hintText: 'Masukkan Password Baru Anda',
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text('Ulangi Password Baru',
                        style: TextStyle(
                          fontFamily: 'MontserratMedium',
                          fontSize: 10,
                          color: Color(0xff989898),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 4)),
                      AuthForm(
                        hintText: 'Ulangi Masukkan Password Baru Anda',
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 12)),              
                    ],
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom:30),
                child: MainButton(
                  height: 42,
                  title: 'BUAT LAPORAN',
                  textColor: Colors.white,
                  color: PurwasariAppPalette.orange,
                  shadow: BoxShadow(
                    color: Color.fromRGBO(245, 161, 52, 0.3),
                    blurRadius: 6,
                    offset: Offset(0 , 3)
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}