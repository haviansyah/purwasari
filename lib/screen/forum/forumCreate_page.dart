import 'package:flutter/material.dart';
import 'package:purwasari_frontend/component/appbar.dart';
import 'package:purwasari_frontend/component/button/button.dart';
import 'package:purwasari_frontend/component/card/card.dart';
import 'package:purwasari_frontend/component/imageUpload.dart';
import 'package:purwasari_frontend/const.dart';


class ForumCreatePage extends StatefulWidget {
  @override
  _ForumCreatePageState createState() => _ForumCreatePageState();
}

class _ForumCreatePageState extends State<ForumCreatePage> {
  String _enteredJudul = '';
  String _enteredKeterangan= '';
  @override
  Widget build(BuildContext context) {
    final maxLines= 7;
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: PurwasariAppPalette.background,
      appBar: PurwasariAppBar(
        iconColor: Colors.black,
        textColor: Colors.black,
        title: "Forum Desa"
      ),
      body: ListView(
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.only(top: 10, left: 24, right:24,),
        children: [
          Column(
            children: [
              AppCard(
                // height: 800,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top:20, left:16, right: 16, bottom: 40),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (value) {
                          setState(() {
                            _enteredJudul = value;
                          });
                        },
                        maxLength: 50,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                        ),
                        decoration: InputDecoration(
                          // counterText: '',
                          counterText: '${_enteredJudul.length.toString()} / 50',
                          counterStyle: TextStyle(
                            fontFamily: 'MontserratMedium',
                            fontSize: 10,
                            color: Colors.black54
                          ),
                          hintText: 'Judul Laporan',
                          hintStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12,
                          ),
                          fillColor: Color(0xffE3E3E3),
                          filled: true,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                        )
                      ),
                      Padding(padding: EdgeInsets.only(top:12),),
                      Container(
                        height: maxLines * 24.0,
                        child: TextField(
                          onChanged: (value) {
                          setState(() {
                            _enteredKeterangan = value;
                          });
                          },
                          maxLines: maxLines,
                          maxLength: 500,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12,
                          ),
                          // maxLines: null,
                          decoration: InputDecoration(
                            counterText: '${_enteredKeterangan.length.toString()} / 500',
                            counterStyle: TextStyle(
                              fontFamily: 'MontserratMedium',
                              fontSize: 10,
                              color: Colors.black54
                            ),
                            hintText: 'Tambahkan keterangan mengenai laporan anda',
                            hintStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                            ),
                            fillColor: Color(0xffE3E3E3),
                            filled: true,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                          )
                        ),
                      ),
                      Container(
                        height: 200,
                        child: SingleImageUpload()
                      ),
                      Padding(padding: EdgeInsets.only(bottom:10)),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top:20.0, bottom: 40),
                  child: MainButton(
                    width: MediaQuery.of(context).size.width - 48,
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}