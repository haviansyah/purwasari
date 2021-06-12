import 'package:flutter/material.dart' hide Router;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:purwasari_frontend/screen/bewara/bewaraDetail_page.dart';
import 'package:purwasari_frontend/screen/bewara/bewara_page.dart';
import 'package:purwasari_frontend/const.dart';
import 'package:purwasari_frontend/router.dart';
import 'package:purwasari_frontend/screen/daftarKades_page.dart';
import 'package:purwasari_frontend/screen/dataPenduduk/dataPenduduk_page.dart';
import 'package:purwasari_frontend/screen/forum/forumCreate_page.dart';
import 'package:purwasari_frontend/screen/forum/forumDetail_page.dart';
import 'package:purwasari_frontend/screen/forum/forum_page.dart';
import 'package:purwasari_frontend/screen/home_page.dart';
import 'package:purwasari_frontend/screen/layananSurat/layananSurat_page.dart';
import 'package:purwasari_frontend/screen/layananSurat/listSurat_page.dart';
import 'package:purwasari_frontend/screen/layananSurat/suratCreate_page.dart';
import 'package:purwasari_frontend/screen/layananSurat/suratView_page.dart';
import 'package:purwasari_frontend/login/view/login_page.dart';
import 'package:purwasari_frontend/screen/signup/signup_page.dart';
import 'package:purwasari_frontend/screen/notification_page.dart';
import 'package:purwasari_frontend/screen/pengaturan/pengaturan_page.dart';
import 'package:purwasari_frontend/screen/pengaturan/ubahProfil_page.dart';
import 'package:purwasari_frontend/screen/potensiDesa/potensiDesa_page.dart';
import 'package:purwasari_frontend/screen/purwasariMap_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('id')
      ],

      onGenerateRoute: Router.generateRoute,
      initialRoute: homePageRoute,


      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline1: TextStyle(
              fontFamily: 'MontserratBold', fontSize: 14, color: Colors.black),
          headline2: TextStyle(
              fontFamily: 'MontserratBold', fontSize: 12, color: Colors.black),
          bodyText1: TextStyle(
              fontFamily: 'Montserrat', fontSize: 12, color: Colors.black),

        ),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
