import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:purwasari_frontend/component/appbar.dart';
import 'package:purwasari_frontend/component/authForm.dart';
import 'package:purwasari_frontend/component/button/button.dart';
import 'package:purwasari_frontend/component/card/card.dart';
import 'package:purwasari_frontend/const.dart';

class SuratCreatePage extends StatefulWidget {
  const SuratCreatePage({ Key, key }) : super(key: key);

  @override
  _SuratCreatePageState createState() => _SuratCreatePageState();
}

class _SuratCreatePageState extends State<SuratCreatePage> {
  // String _selectedDate = 'Masukkan Tanggal Lahir Anda';
  DateTime _selectedDate;
  TextEditingController _textEditingController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime newSelectedDate = await showDatePicker(
      context: context,
      locale : const Locale("id","ID"),
      initialDate: DateTime.now(),
      firstDate: DateTime(1920),
      lastDate: DateTime.now().add(Duration(days: 365)),
      errorFormatText: 'Format Tanggal Lahir Salah',

    );
   if (newSelectedDate != null) {
      _selectedDate = newSelectedDate;
      _textEditingController
        ..text = DateFormat.yMMMMd("id_ID").format(_selectedDate)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: _textEditingController.text.length,
            affinity: TextAffinity.upstream)
        );
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PurwasariAppPalette.background,
      appBar: PurwasariAppBar(
        title: 'Buat Surat',
        textColor: Colors.black,
        iconColor: Colors.black,
      ),
      body: ListView(
        padding: EdgeInsets.only(top:10, left: 24, right: 24),
        children: [
          Column(
            children: [
              AppCard(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top:12.0, left: 12, right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Data Diri',
                      style: Theme.of(context).textTheme.headline1,),
                      Padding(padding: EdgeInsets.only(top:16)),
                      Text('Nomor Induk Kependudukan (NIK)',
                      style: Theme.of(context).textTheme.bodyText1
                      ),
                      Padding(padding: EdgeInsets.only(top: 4)),
                      Text('317400808820003',
                        style: TextStyle(
                          fontFamily: 'MontserratMedium',
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top:12)),
                      Text('Nama',
                      style: Theme.of(context).textTheme.bodyText1,),
                      Padding(padding: EdgeInsets.only(top:6)),
                      AuthForm(
                        hintText: 'Masukkan Nama Anda',
                      ),
                      Padding(padding: EdgeInsets.only(top:12)),
                      Text('Tempat Lahir',
                      style: Theme.of(context).textTheme.bodyText1,),
                      Padding(padding: EdgeInsets.only(top:6)),
                      AuthForm(
                        hintText: 'Masukkan Tempat Lahir Anda',
                      ),
                      Padding(padding: EdgeInsets.only(top:12)),
                      Text('Tanggal Lahir',
                      style: Theme.of(context).textTheme.bodyText1,),
                      Padding(padding: EdgeInsets.only(top:6)),
                      AuthForm(
                        controller: _textEditingController,
                        hintText: 'Tanggal Lahir',
                        icon: SizedBox(
                          child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.solidCalendarAlt,),
                            iconSize: 20,
                            color: PurwasariAppPalette.lightBlue,
                            onPressed: (){
                          _selectDate(context);
                          },
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top:12)),
                      Text('Pekerjaan',
                      style: Theme.of(context).textTheme.bodyText1,),
                      Padding(padding: EdgeInsets.only(top:6)),
                      AuthForm(
                        hintText: 'Masukkan Pekerjaan Anda',
                      ),
                      Padding(padding: EdgeInsets.only(top:12)),
                      Text('Alamat',
                      style: Theme.of(context).textTheme.bodyText1,),
                      Padding(padding: EdgeInsets.only(top:6)),
                      AuthForm(
                        hintText: 'Masukkan Alamat Anda',
                        maxLines: 4,
                      ),
                      Padding(padding: EdgeInsets.only(top:12)),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top:20)),
              AppCard(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top:12.0, left: 12, right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Data Usaha',
                      style: Theme.of(context).textTheme.headline1,),
                      Padding(padding: EdgeInsets.only(top:12)),
                      Text('Jenis Usaha',
                      style: Theme.of(context).textTheme.bodyText1,),
                      Padding(padding: EdgeInsets.only(top:6)),
                      AuthForm(
                        hintText: 'Masukkan Jenis Usaha',
                      ),
                      Padding(padding: EdgeInsets.only(top:12)),
                      Text('Lokasi Usaha',
                      style: Theme.of(context).textTheme.bodyText1,),
                      Padding(padding: EdgeInsets.only(top:6)),
                      AuthForm(
                        hintText: 'Masukkan Lokasi Usaha',
                        canEdit: false,
                      ),
                      Padding(padding: EdgeInsets.only(top:12)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 40),
                child: MainButton(
                  height: 42,
                  title: 'BUAT SURAT',
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