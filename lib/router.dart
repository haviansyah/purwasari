
import 'package:flutter/material.dart' hide Router;
import 'package:purwasari_frontend/const.dart';
import 'package:purwasari_frontend/screen/bewara/bewaraDetail_page.dart';
import 'package:purwasari_frontend/screen/bewara/bewara_page.dart';
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
import 'package:purwasari_frontend/screen/notification_page.dart';
import 'package:purwasari_frontend/screen/pengaturan/pengaturan_page.dart';
import 'package:purwasari_frontend/screen/pengaturan/ubahProfil_page.dart';
import 'package:purwasari_frontend/screen/potensiDesa/potensiDesa_page.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePageRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case bewaraPageRoute:
        return MaterialPageRoute(builder: (_) => BewaraPage());
      case bewaraDetailPageRoute:
        return MaterialPageRoute(builder: (_) => BewaraDetailPage());
      case notificationPageRoute:
        return MaterialPageRoute(builder: (_) => NotificationPage());
      case pengaturanPageRoute:
        return MaterialPageRoute(builder: (_) => PengaturanPage());
      case ubahProfilPageRoute:
        return MaterialPageRoute(builder: (_) => UbahProfilPage());
      case listSuratPageRoute:
        return MaterialPageRoute(builder: (_) => ListSuratPage());
      case layananSuratPageRoute:
        return MaterialPageRoute(builder: (_) => LayananSuratPage());
      case suratCreatePageRoute:
        return MaterialPageRoute(builder: (_) => SuratCreatePage());
      case suratViewPageRoute:
        return MaterialPageRoute(builder: (_) => SuratViewPage());
      case forumPageRoute:
        return MaterialPageRoute(builder: (_) => ForumPage());
      case forumCreatePageRoute:
        return MaterialPageRoute(builder: (_) => ForumCreatePage());
      case forumDetailPageRoute:
        return MaterialPageRoute(builder: (_) => ForumDetailPage());
      case dataPendudukPageRoute:
        return MaterialPageRoute(builder: (_) => DataPendudukPage());
      case potensiDesaPageRoute:
        return MaterialPageRoute(builder: (_) => PotensiDesaPage());
      case daftarKadesPageRoute:
        return MaterialPageRoute(builder: (_) => DaftarKadesPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
                child: Text('No route defined for ${settings.name}')),
          )
        );
    }
  }
}