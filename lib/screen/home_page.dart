import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:purwasari_frontend/component/button/rectangleButton.dart';
import 'package:purwasari_frontend/component/card/bewaraCard.dart';
import 'package:purwasari_frontend/component/card/card.dart';
import 'package:purwasari_frontend/component/card/purwasariCard.dart';
import 'package:purwasari_frontend/const.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:purwasari_frontend/screen/purwasariMap_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  List<String> listPaths = [
    "assets/pengumuman.png",
    "assets/pengumuman.png",
    "assets/pengumuman.png",
    "assets/pengumuman.png",
    "assets/pengumuman.png",
  ];
  CarouselController _carouselController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PurwasariAppPalette.background,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Halo,",
                      style: TextStyle(
                        fontFamily: 'MontserratBold',
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      "Rahmat S",
                      style: TextStyle(
                        fontFamily: 'MontserratBold',
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                RectangleButton(
                  onPressed: (){
                    Navigator.pushNamed(context, notificationPageRoute);
                  },
                  color: Colors.white,
                  iconColor: Colors.black,
                  icon: Icons.notifications_outlined,
                  width: 40,
                  height: 40,
                ),
                Padding(padding: const EdgeInsets.only(right: 10)),
                RectangleButton(
                  onPressed: (){
                    Navigator.pushNamed(context, pengaturanPageRoute);
                  },
                  color: Colors.white,
                  iconColor: Colors.black,
                  icon: Icons.person_outlined,
                  width: 40,
                  height: 40,
                )
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.only(top: 20)),
          CarouselSlider.builder(
            itemCount: listPaths.length,
            options: CarouselOptions(
                aspectRatio: 16 / 6,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            itemBuilder: (context, index) {
              return MyImageView(listPaths[index]);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(listPaths.length, (index) {
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(0, 0, 0, 0.35)
                      : Color.fromRGBO(0, 0, 0, 0.1),
                ),
              );
            }),
          ),
          Padding(padding: const EdgeInsets.only(top: 12)),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Row(
              children: <Widget>[
                Text(
                  "Bewara Desa",
                  style: TextStyle(
                      fontFamily: 'MontserratBold',
                      fontSize: 14,
                      color: Colors.black),
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, bewaraPageRoute);
                  },
                  child: Text(
                    "Lihat Semua",
                    style: TextStyle(
                        fontFamily: 'MontserratMedium',
                        fontSize: 10,
                        color: PurwasariAppPalette.lightBlue),
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.only(top: 12)),
          SizedBox(
            height: 162.0,
            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) => Padding(
                padding: EdgeInsets.only(
                    left: (index == 0) ? 16 : 4,
                    right: (index == 4) ? 16 : 4,
                    bottom: 12),
                child: Container(
                  width: 160,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, bewaraDetailPageRoute);
                    },
                    child: BewaraCard(
                      image: AssetImage("assets/pengumuman.png"),
                      title: "Tutorial tata cara menggunakan aplikasi SISIHAN PURWASARI",
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 8)),
                Text(
                  "Layanan",
                  style: TextStyle(
                      fontFamily: 'MontserratBold',
                      fontSize: 14,
                      color: Colors.black),
                ),
                Padding(padding: EdgeInsets.only(top: 12)),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, listSuratPageRoute);
                        },
                        child: PurwasariCard(
                          title: "Layanan Surat",
                          color: PurwasariAppPalette.green,
                          icon: FontAwesomeIcons.envelopeOpenText,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, forumPageRoute);
                        },
                        child: PurwasariCard(
                          title: "Forum Desa",
                          color: PurwasariAppPalette.lightBlue,
                          icon: FontAwesomeIcons.solidComments,
                        ),
                      )
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 18)),
                Text(
                  "Peta Desa",
                  style: TextStyle(
                      fontFamily: 'MontserratBold',
                      fontSize: 14,
                      color: Colors.black),
                ),
                Padding(padding: EdgeInsets.only(top: 12)),
                AppCard(
                  height: 200,
                  child: Stack(
                    children: [
                      GoogleMap(
                        initialCameraPosition: CameraPosition(
                          target: LatLng(-6.6164275 , 106.7153655),
                          zoom: 15,
                        ),
                        mapType: MapType.normal,
                        // markers: _markers,
                        zoomControlsEnabled: true,
                        zoomGesturesEnabled: true,
                        myLocationButtonEnabled: false,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 40,
                            width: 40,
                            child: FittedBox(
                              child: FloatingActionButton(
                                onPressed: () {
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PurwasariMapPage()),
                                  );
                                },
                                materialTapTargetSize: MaterialTapTargetSize.padded,
                                backgroundColor: PurwasariAppPalette.green,
                                child: FaIcon(FontAwesomeIcons.expandAlt, size: 20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 18)),
                Text(
                  "Informasi Desa",
                  style: TextStyle(
                      fontFamily: 'MontserratBold',
                      fontSize: 14,
                      color: Colors.black),
                ),
                Padding(padding: EdgeInsets.only(top: 12)),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, dataPendudukPageRoute);
                        },
                        child: PurwasariCard(
                          title: "Data Penduduk",
                          color: PurwasariAppPalette.green,
                          icon: FontAwesomeIcons.chartBar,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, potensiDesaPageRoute);
                        },
                        child: PurwasariCard(
                          title: "Sumber Daya dan Potensi",
                          color: PurwasariAppPalette.lightBlue,
                          icon: FontAwesomeIcons.chartLine,
                        ),
                      )
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 12)),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, daftarKadesPageRoute);
                        },
                        child: PurwasariCard(
                          title: "Daftar Kepala Desa",
                          color: PurwasariAppPalette.pink,
                          icon: FontAwesomeIcons.users,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                    ),
                    Expanded(
                        child: PurwasariCard(
                      title: "Struktur Desa",
                      color: PurwasariAppPalette.orange,
                      icon: FontAwesomeIcons.sitemap,
                    )),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 12)),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

