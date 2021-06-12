import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:purwasari_frontend/component/card/card.dart';
import 'package:purwasari_frontend/const.dart';

class ForumCardAnswered extends StatelessWidget {
  final String nama;
  final String tanggal;
  final String judul;
  final String balasan;
  const ForumCardAnswered({
    this.nama,
    this.tanggal,
    this.judul,
    this.balasan,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: Colors.white,
      height: 82,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:12.0),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: PurwasariAppPalette.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.solidComments,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 12)),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(this.nama,
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 10,
                                color: Colors.black87
                              ),
                            ),
                            Spacer(),
                            Text(this.tanggal,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Colors.black87
                            ),
                            )
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top:4),),
                        Text(this.judul,
                          style: TextStyle(
                            fontFamily: 'MontserratBold',
                            fontSize: 12,
                            color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FaIcon(FontAwesomeIcons.reply,
                    color: Colors.black54,
                    size: 10, 
                  ),
                  Padding(padding: EdgeInsets.only(right:4)),
                  Text(this.balasan,
                   style: TextStyle(
                      fontFamily: 'MontserratMedium',
                      fontSize: 10,
                      color: Colors.black87
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ForumCard extends StatelessWidget {
  final String nama;
  final String tanggal;
  final String judul;
  final String balasan;
  const ForumCard({
    this.nama,
    this.tanggal,
    this.judul,
    this.balasan,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: Colors.white,
      height: 82,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:12.0),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.solidComments,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 12)),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(this.nama,
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 10,
                                color: Colors.black87
                              ),
                            ),
                            Spacer(),
                            Text(this.tanggal,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Colors.black87
                            ),
                            )
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top:4),),
                        Text(this.judul,
                          style: TextStyle(
                            fontFamily: 'MontserratBold',
                            fontSize: 12,
                            color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FaIcon(FontAwesomeIcons.reply,
                    color: Colors.black54,
                    size: 10, 
                  ),
                  Padding(padding: EdgeInsets.only(right:4)),
                  Text(this.balasan,
                   style: TextStyle(
                      fontFamily: 'MontserratMedium',
                      fontSize: 10,
                      color: Colors.black87
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}