import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _KelasMerakit = false;
  bool _KelasAnimasi = false;
  bool _KelasKoding = false;
  String? _selectedOption;

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
                                        fontStyle: FontStyle.italic,
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
                                fontWeight: FontWeight.normal,
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
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "   Kami menggunakan pendekatan gamifikasi dan tools\n   yang mudah dipahami untuk membuat pembelajaran\n   menjadi seru.",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.02,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  "\u2022 Mentor Berpengalaman: ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.02,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "   Mentor kami adalah profesional yang siap membimbing\n   anak-anak di setiap langkah perjalanan belajar.",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.02,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  "\u2022 Kurikulum Terstruktur:",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.02,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "   Kurikulum kami dirancang agar anak-anak bisa belajar\n    bertahap dan merasakan perkembangan setiap sesinya.",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.02,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  "\u2022 Komunitas yang Mendukung: ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.02,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "   Anak-anak bisa berkolaborasi dengan teman-teman\n   seusia mereka untuk memecahkan masalah dan\n   membangun proyek bersama.",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.02,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
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
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                        color:
                                            Color.fromRGBO(255, 255, 255, 200),
                                        child: Container(
                                          padding: EdgeInsets.all(
                                              deviceWidth * 0.008),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: deviceWidth * 0.03,
                                              ),
                                              Image.asset(
                                                "assets/mrt_logo.png",
                                                width: deviceWidth * 0.15,
                                              ),
                                              SizedBox(
                                                height: deviceWidth * 0.005,
                                              ),
                                              Text(
                                                textAlign: TextAlign.center,
                                                "KELAS MERAKIT ROBOT",
                                                style: TextStyle(
                                                  fontSize: deviceWidth * 0.015,
                                                  fontFamily: "Poppins",
                                                  color: Colors.yellow,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                height: deviceWidth * 0.003,
                                              ),
                                              Text(
                                                textAlign: TextAlign.center,
                                                "Program ini mengajak anak-anak merakit robot dengan blok MRT, meningkatkan logika, kreativitas, dan keterampilan motorik halus.",
                                                style: TextStyle(
                                                  fontSize: deviceWidth * 0.015,
                                                  fontFamily: "Poppins",
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              SizedBox(
                                                height: deviceWidth * 0.05,
                                              ),
                                              ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors.yellow),
                                                  onPressed: () {},
                                                  child: Container(
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.center,
                                                      "SELENGKAPNYA",
                                                      style: TextStyle(
                                                        fontSize:
                                                            deviceWidth * 0.015,
                                                        fontFamily: "Poppins",
                                                        color:
                                                            Color(0xFF16325B),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  )),
                                              SizedBox(
                                                height: deviceWidth * 0.02,
                                              ),
                                            ],
                                          ),
                                        ))),
                                SizedBox(
                                  width: deviceWidth * 0.02,
                                ),
                                Expanded(
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                        color:
                                            Color.fromRGBO(255, 255, 255, 200),
                                        child: Container(
                                          padding: EdgeInsets.all(
                                              deviceWidth * 0.008),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: deviceWidth * 0.03,
                                              ),
                                              Image.asset(
                                                "assets/scratch_logo.png",
                                                width: deviceWidth * 0.15,
                                              ),
                                              SizedBox(
                                                height: deviceWidth * 0.005,
                                              ),
                                              Text(
                                                textAlign: TextAlign.center,
                                                "KELAS ANIMASI ROBOTIK",
                                                style: TextStyle(
                                                  fontSize: deviceWidth * 0.015,
                                                  fontFamily: "Poppins",
                                                  color: Colors.yellow,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                height: deviceWidth * 0.003,
                                              ),
                                              Text(
                                                textAlign: TextAlign.center,
                                                "Scratch adalah platform visual yang ramah anak untuk belajar coding, memungkinkan mereka membuat game interaktif dengan kode blok yang mudah dipahami.",
                                                style: TextStyle(
                                                  fontSize: deviceWidth * 0.015,
                                                  fontFamily: "Poppins",
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              SizedBox(
                                                height: deviceWidth * 0.05,
                                              ),
                                              ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors.yellow),
                                                  onPressed: () {},
                                                  child: Container(
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.center,
                                                      "SELENGKAPNYA",
                                                      style: TextStyle(
                                                        fontSize:
                                                            deviceWidth * 0.015,
                                                        fontFamily: "Poppins",
                                                        color:
                                                            Color(0xFF16325B),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  )),
                                              SizedBox(
                                                height: deviceWidth * 0.02,
                                              ),
                                            ],
                                          ),
                                        ))),
                                SizedBox(
                                  width: deviceWidth * 0.02,
                                ),
                                Expanded(
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                        color:
                                            Color.fromRGBO(255, 255, 255, 200),
                                        child: Container(
                                          padding: EdgeInsets.all(
                                              deviceWidth * 0.008),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: deviceWidth * 0.03,
                                              ),
                                              Image.asset(
                                                "assets/python_logo.png",
                                                width: deviceWidth * 0.15,
                                              ),
                                              SizedBox(
                                                height: deviceWidth * 0.005,
                                              ),
                                              Text(
                                                textAlign: TextAlign.center,
                                                "KELAS KODING",
                                                style: TextStyle(
                                                  fontSize: deviceWidth * 0.015,
                                                  fontFamily: "Poppins",
                                                  color: Colors.yellow,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                height: deviceWidth * 0.003,
                                              ),
                                              Text(
                                                textAlign: TextAlign.center,
                                                "Kelas belajar Python adalah program untuk mempelajari dasar-dasar pemrograman Python, termasuk sintaks, struktur data, dan pembuatan proyek sederhana.",
                                                style: TextStyle(
                                                  fontSize: deviceWidth * 0.015,
                                                  fontFamily: "Poppins",
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              SizedBox(
                                                height: deviceWidth * 0.05,
                                              ),
                                              ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors.yellow),
                                                  onPressed: () {},
                                                  child: Container(
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.center,
                                                      "SELENGKAPNYA",
                                                      style: TextStyle(
                                                        fontSize:
                                                            deviceWidth * 0.015,
                                                        fontFamily: "Poppins",
                                                        color:
                                                            Color(0xFF16325B),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  )),
                                              SizedBox(
                                                height: deviceWidth * 0.02,
                                              ),
                                            ],
                                          ),
                                        ))),
                              ],
                            )
                          ],
                        ),
                      ),
                    ]),
                    //page 5
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
                              "Program Pembelajaran",
                              style: TextStyle(
                                fontSize: deviceWidth * 0.03,
                                fontFamily: "Poppins",
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: deviceWidth * 0.5,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                      child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50))),
                                          color: Color.fromRGBO(
                                              255, 255, 255, 200),
                                          child: Container(
                                            padding: EdgeInsets.all(
                                                deviceWidth * 0.008),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: deviceWidth * 0.03,
                                                ),
                                                Image.asset(
                                                  "assets/picture_6.png",
                                                  width: deviceWidth * 0.15,
                                                ),
                                                SizedBox(
                                                  height: deviceWidth * 0.005,
                                                ),
                                                Text(
                                                  textAlign: TextAlign.center,
                                                  "PRIVAT",
                                                  style: TextStyle(
                                                    fontSize:
                                                        deviceWidth * 0.015,
                                                    fontFamily: "Poppins",
                                                    color: Colors.yellow,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: deviceWidth * 0.003,
                                                ),
                                                Text(
                                                  textAlign: TextAlign.center,
                                                  "Trainer akan datang ke rumah siswa untuk memberikan pembelajaran, memungkinkan bimbingan langsung dan maksimal saat siswa menghadapi kesulitan.",
                                                  style: TextStyle(
                                                    fontSize:
                                                        deviceWidth * 0.015,
                                                    fontFamily: "Poppins",
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: deviceWidth * 0.05,
                                                ),
                                              ],
                                            ),
                                          ))),
                                  SizedBox(
                                    width: deviceWidth * 0.02,
                                  ),
                                  Expanded(
                                      child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50))),
                                          color: Color.fromRGBO(
                                              255, 255, 255, 200),
                                          child: Container(
                                            padding: EdgeInsets.all(
                                                deviceWidth * 0.008),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: deviceWidth * 0.03,
                                                ),
                                                Image.asset(
                                                  "assets/picture_7.png",
                                                  width: deviceWidth * 0.15,
                                                ),
                                                SizedBox(
                                                  height: deviceWidth * 0.005,
                                                ),
                                                Text(
                                                  textAlign: TextAlign.center,
                                                  "ONLINE",
                                                  style: TextStyle(
                                                    fontSize:
                                                        deviceWidth * 0.015,
                                                    fontFamily: "Poppins",
                                                    color: Colors.yellow,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: deviceWidth * 0.003,
                                                ),
                                                Text(
                                                  textAlign: TextAlign.center,
                                                  "Kelas dilakukan secara online menggunakan platform online (Google Meet atau Zoom), memungkinkan siswa belajar dari rumah dengan bimbingan langsung dari instruktur, kapanpun dan dimanapun.",
                                                  style: TextStyle(
                                                    fontSize:
                                                        deviceWidth * 0.015,
                                                    fontFamily: "Poppins",
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: deviceWidth * 0.05,
                                                ),
                                              ],
                                            ),
                                          ))),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
                    //page 6
                    Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Image.asset(
                            "assets/shape_right.png",
                            width: deviceWidth * 0.20,
                          ),
                        ),
                        Container(
                          width: deviceWidth,
                          height: deviceHeight,
                          child: Column(
                            children: [
                              SizedBox(
                                height: deviceWidth * 0.02,
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                "TERTARIK?",
                                style: TextStyle(
                                  fontSize: deviceWidth * 0.05,
                                  fontFamily: "Poppins",
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: deviceWidth * 0.0005,
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                "isi data dibawah ini ya...",
                                style: TextStyle(
                                  fontSize: deviceWidth * 0.02,
                                  fontFamily: "Poppins",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: deviceWidth * 0.05,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 50, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            textAlign: TextAlign.center,
                                            "Nama Orang Tua",
                                            style: TextStyle(
                                              fontSize: deviceWidth * 0.01,
                                              fontFamily: "Poppins",
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Container(
                                            width: deviceWidth * 0.2,
                                            child: TextField(
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              decoration: InputDecoration(
                                                  filled: true,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  fillColor: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            textAlign: TextAlign.center,
                                            "No Telepon",
                                            style: TextStyle(
                                              fontSize: deviceWidth * 0.01,
                                              fontFamily: "Poppins",
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Container(
                                            width: deviceWidth * 0.2,
                                            child: TextField(
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              decoration: InputDecoration(
                                                  filled: true,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  fillColor: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            textAlign: TextAlign.center,
                                            "Email",
                                            style: TextStyle(
                                              fontSize: deviceWidth * 0.01,
                                              fontFamily: "Poppins",
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Container(
                                            width: deviceWidth * 0.2,
                                            child: TextField(
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              decoration: InputDecoration(
                                                  filled: true,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  fillColor: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: deviceWidth * 0.02,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 50, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            textAlign: TextAlign.center,
                                            "Nama Siswa",
                                            style: TextStyle(
                                              fontSize: deviceWidth * 0.01,
                                              fontFamily: "Poppins",
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Container(
                                            width: deviceWidth * 0.2,
                                            child: TextField(
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              decoration: InputDecoration(
                                                  filled: true,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  fillColor: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            textAlign: TextAlign.center,
                                            "Umur Siswa",
                                            style: TextStyle(
                                              fontSize: deviceWidth * 0.01,
                                              fontFamily: "Poppins",
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Container(
                                            width: deviceWidth * 0.1,
                                            child: TextField(
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              decoration: InputDecoration(
                                                  filled: true,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  fillColor: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            textAlign: TextAlign.center,
                                            "Alamat",
                                            style: TextStyle(
                                              fontSize: deviceWidth * 0.01,
                                              fontFamily: "Poppins",
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Container(
                                            width: deviceWidth * 0.3,
                                            child: TextField(
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              decoration: InputDecoration(
                                                  filled: true,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  fillColor: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: deviceWidth * 0.02,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 170, right: 50),
                                width: deviceWidth,
                                child: Text(
                                  "Kelas yang diminati:",
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.01,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 170, right: 50),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Theme(
                                              data: Theme.of(context).copyWith(
                                                  checkboxTheme: CheckboxThemeData(
                                                      side: BorderSide(
                                                          width: 2,
                                                          color: Colors.white),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)))),
                                              child: Checkbox(
                                                  activeColor: Colors.white,
                                                  checkColor: Colors.black,
                                                  value: _KelasMerakit,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      _KelasMerakit =
                                                          value ?? false;
                                                    });
                                                  }),
                                            ),
                                            Text(
                                              textAlign: TextAlign.center,
                                              "Kelas Merakit Robot",
                                              style: TextStyle(
                                                fontSize: deviceWidth * 0.01,
                                                fontFamily: "Poppins",
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: deviceWidth * 0.02,
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Theme(
                                              data: Theme.of(context).copyWith(
                                                  checkboxTheme: CheckboxThemeData(
                                                      side: BorderSide(
                                                          width: 2,
                                                          color: Colors.white),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)))),
                                              child: Checkbox(
                                                  activeColor: Colors.white,
                                                  checkColor: Colors.black,
                                                  value: _KelasAnimasi,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      _KelasAnimasi =
                                                          value ?? false;
                                                    });
                                                  }),
                                            ),
                                            Text(
                                              textAlign: TextAlign.center,
                                              "Kelas Animasi Robotik",
                                              style: TextStyle(
                                                fontSize: deviceWidth * 0.01,
                                                fontFamily: "Poppins",
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: deviceWidth * 0.02,
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Theme(
                                              data: Theme.of(context).copyWith(
                                                  checkboxTheme: CheckboxThemeData(
                                                      side: BorderSide(
                                                          width: 2,
                                                          color: Colors.white),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)))),
                                              child: Checkbox(
                                                  activeColor: Colors.white,
                                                  checkColor: Colors.black,
                                                  value: _KelasKoding,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      _KelasKoding =
                                                          value ?? false;
                                                    });
                                                  }),
                                            ),
                                            Text(
                                              textAlign: TextAlign.center,
                                              "Kelas Koding",
                                              style: TextStyle(
                                                fontSize: deviceWidth * 0.01,
                                                fontFamily: "Poppins",
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                              SizedBox(
                                height: deviceWidth * 0.02,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 170, right: 50),
                                width: deviceWidth,
                                child: Text(
                                  "Metode Pembelajaran:",
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.01,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 170, right: 50),
                                  width: deviceWidth,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: deviceWidth * 0.3,
                                        child: ListTile(
                                          title: Text(
                                            "Private",
                                            style: TextStyle(
                                              fontSize: deviceWidth * 0.01,
                                              fontFamily: "Poppins",
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          leading: Radio<String>(
                                            value: "Privat",
                                            groupValue: _selectedOption,
                                            onChanged: (String? value) {
                                              setState(() {
                                                _selectedOption = value;
                                              });
                                            },
                                            fillColor: WidgetStateProperty
                                                .resolveWith<Color>(
                                                    (Set<WidgetState> states) {
                                              if (states.contains(
                                                  WidgetState.selected)) {
                                                return Colors
                                                    .white; // Color when selected
                                              }
                                              return Colors
                                                  .white; // Color when not selected
                                            }),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: deviceWidth * 0.3,
                                        child: ListTile(
                                          title: Text(
                                            "Online",
                                            style: TextStyle(
                                              fontSize: deviceWidth * 0.01,
                                              fontFamily: "Poppins",
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          leading: Radio<String>(
                                            value: "Online",
                                            groupValue: _selectedOption,
                                            onChanged: (String? value) {
                                              setState(() {
                                                _selectedOption = value;
                                              });
                                            },
                                            fillColor: WidgetStateProperty
                                                .resolveWith<Color>(
                                                    (Set<WidgetState> states) {
                                              if (states.contains(
                                                  WidgetState.selected)) {
                                                return Colors
                                                    .white; // Color when selected
                                              }
                                              return Colors
                                                  .white; // Color when not selected
                                            }),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                height: deviceWidth * 0.02,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.yellow),
                                  onPressed: () {},
                                  child: Container(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Daftar!",
                                      style: TextStyle(
                                        fontSize: deviceWidth * 0.015,
                                        fontFamily: "Poppins",
                                        color: Color(0xFF16325B),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    )
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
