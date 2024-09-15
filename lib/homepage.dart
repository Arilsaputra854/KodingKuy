import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    if (deviceWidth > 1000) {
      return Scaffold(
          floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.transparent,
              elevation: 0,
              hoverElevation: 0,
              hoverColor: Colors.transparent,
              onPressed: () {
                goToWhatsapp();
              },
              child: Container(
                child: Image.asset(
                  "assets/wa_logo.png",
                  fit: BoxFit.contain,
                ),
              )),
          body: Container(
              width: deviceWidth,
              height: deviceHeight,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFF16325B), Color(0xFF1E4A8B)])),
              child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                    //page 1
                    Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Image.asset(
                                "assets/logo.png",
                                width: deviceWidth * 0.15,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Text.rich(
                                TextSpan(
                                  text: 'Gali ', // First part (white, italic)
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontSize: deviceWidth * 0.05,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          'Potensi ', // "Potensi" (bold, yellow)
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle
                                            .italic, // Remove italic for bold text
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'Masa\nDepan Anak dengan\n', // Next part (white, italic)
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'Koding & Robotik', // "Koding & Robotik" (bold, yellow)
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Text(
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: deviceWidth * 0.02),
                                  "Belajar koding dan robotik dengan cara\nmenyenangkan, interaktif, dan relevan\nuntuk anak-anak dan remaja."),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Text(
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFF000),
                                      fontSize: deviceWidth * 0.02),
                                  "Cek Sekarang!"),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                        (Positioned(
                          right: 0,
                          bottom: 0,
                          child: Image.asset(
                            "assets/woman.png",
                            width: deviceWidth * 0.38,
                          ),
                        )),
                      ],
                    ),
                    //page 2
                    Stack(children: [
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Image.asset(
                          "assets/shape_left.png",
                          width: deviceWidth * 0.20,
                        ),
                      ),
                      Container(
                        width: deviceWidth,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Tentang KodingYuk!",
                              style: TextStyle(
                                fontSize: deviceWidth * 0.04,
                                fontFamily: "Poppins",
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                                // Remove italic for bold text
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Di era digital ini, koding dan robotik bukan lagi keterampilan masa depan,\ntapi keterampilan saat ini! KodingYuk hadir untuk membimbing anak-anak\ndan remaja dalam memahami dan menguasai teknologi, sehingga mereka\nsiap menghadapi tantangan dunia digital. Kami menawarkan program\npembelajaran yang menyenangkan dan mudah dipahami, cocok untuk\npemula hingga yang lebih mahir.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: deviceWidth * 0.02,
                                fontFamily: "Poppins",
                                color: Colors.white,
                                fontWeight: FontWeight
                                    .normal, // Remove italic for bold text
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/picture_4.png",
                                  width: deviceWidth * 0.20,
                                ),
                                Stack(
                                  children: [
                                    Image.asset(
                                      "assets/picture_3.png",
                                      width: deviceWidth * 0.30,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: deviceWidth * 0.2),
                                      child: Image.asset(
                                        "assets/picture_1.png",
                                        width: deviceWidth * 0.30,
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  "assets/picture_2.png",
                                  width: deviceWidth * 0.25,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ]),
                    //page 3
                    Stack(children: [
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset(
                          "assets/shape_right.png",
                          width: deviceWidth * 0.3,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset(
                          "assets/picture_5.png",
                          width: deviceWidth * 0.3,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50),
                        width: deviceWidth,
                        height: deviceHeight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Kenapa pilih KodingYuk?",
                              style: TextStyle(
                                fontSize: deviceWidth * 0.03,
                                fontFamily: "Poppins",
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                                // Remove italic for bold text
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "\u2022 Belajar yang Menyenangkan: ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.02,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontWeight: FontWeight
                                        .bold, // Remove italic for bold text
                                  ),
                                ),
                                Text(
                                  "   Kami menggunakan pendekatan gamifikasi dan tools\n   yang mudah dipahami untuk membuat pembelajaran\n   menjadi seru.",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.02,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontWeight: FontWeight
                                        .normal, // Remove italic for bold text
                                  ),
                                ),
                                Text(
                                  "\u2022 Mentor Berpengalaman: ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.02,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontWeight: FontWeight
                                        .bold, // Remove italic for bold text
                                  ),
                                ),
                                Text(
                                  "   Mentor kami adalah profesional yang siap membimbing\n   anak-anak di setiap langkah perjalanan belajar.",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.02,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontWeight: FontWeight
                                        .normal, // Remove italic for bold text
                                  ),
                                ),
                                Text(
                                  "\u2022 Kurikulum Terstruktur:",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.02,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontWeight: FontWeight
                                        .bold, // Remove italic for bold text
                                  ),
                                ),
                                Text(
                                  "   Kurikulum kami dirancang agar anak-anak bisa belajar\n    bertahap dan merasakan perkembangan setiap sesinya.",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.02,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontWeight: FontWeight
                                        .normal, // Remove italic for bold text
                                  ),
                                ),
                                Text(
                                  "\u2022 Komunitas yang Mendukung: ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.02,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontWeight: FontWeight
                                        .bold, // Remove italic for bold text
                                  ),
                                ),
                                Text(
                                  "   Anak-anak bisa berkolaborasi dengan teman-teman\n   seusia mereka untuk memecahkan masalah dan\n   membangun proyek bersama.",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.02,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontWeight: FontWeight
                                        .normal, // Remove italic for bold text
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
                    //page 4
                    Stack(children: [
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset(
                          "assets/shape_right.png",
                          width: deviceWidth * 0.20,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50, right: 50),
                        width: deviceWidth,
                        height: deviceHeight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Program Kami",
                              style: TextStyle(
                                fontSize: deviceWidth * 0.03,
                                fontFamily: "Poppins",
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                                // Remove italic for bold text
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/mrt_logo.png",
                                        width: deviceWidth * 0.2,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        textAlign: TextAlign.center,
                                        "Program ini mengajak anak-anakuntuk merakit robot menggunakan blok MRT. Selain meningkatkan keterampilan logika, kegiatan ini juga merangsang kreativitas dan keterampilan motorik halus",
                                        style: TextStyle(
                                          fontSize: deviceWidth * 0.015,
                                          fontFamily: "Poppins",
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                          // Remove italic for bold text
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                    child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/scratch_logo.png",
                                      width: deviceWidth * 0.2,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      "Scratch adalah platform visual yang sangat cocok untuk anak-anak yang baru mulai belajar coding. Dalam program ini, anak-anak akan belajar membuat game interaktif sendiri dengan kode blok yang mudah dipahami.",
                                      style: TextStyle(
                                        fontSize: deviceWidth * 0.015,
                                        fontFamily: "Poppins",
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        // Remove italic for bold text
                                      ),
                                    ),
                                  ],
                                )),
                                Expanded(
                                    child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/python_logo.png",
                                      width: deviceWidth * 0.2,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      "Python adalah bahasa pemrograman yang banyak digunakan di dunia nyata. Dalam program ini, anak-anak dan remaja akan diajarkan bagaimana membuat program sederhana dengan Python yang dapat membantu mereka memahami logika coding lebih mendalam.",
                                      style: TextStyle(
                                        fontSize: deviceWidth * 0.015,
                                        fontFamily: "Poppins",
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        // Remove italic for bold text
                                      ),
                                    ),
                                  ],
                                )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ]),
                  ]))));
    } else {
      return Scaffold(
        body: Container(
            width: deviceWidth,
            height: deviceHeight,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF16325B), Color(0xFF1E4A8B)])),
            child: Center(
              child: Text(
                "Saat ini website hanya tersedia untuk mode Desktop.",
                style: TextStyle(
                  fontSize: deviceWidth * 0.03,
                  fontFamily: "Poppins",
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
      );
    }
  }
}

void goToWhatsapp() async {
  final String url = "https://wa.me/6285813166017";

  Uri uri = Uri.parse(url);

  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  }
}
