import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary/models/konten_model.dart';
import 'package:flutter_salary/models/login_karyawan.dart';
import 'package:flutter_salary/providers/auth_provider.dart';
import 'package:flutter_salary/providers/konten_provider.dart';
import 'package:flutter_salary/providers/theme_provider.dart';
import 'package:flutter_salary/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    LoginKaryawanModel loginKaryawanModel = authProvider.loginKaryawanModel;

    ContentProvider contentProvider = Provider.of<ContentProvider>(context);

    List<ContentModels> listKonten = contentProvider.kontenModel;

    final color =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors
            : primaryColor;

    return Container(
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, spreadRadius: 3, blurRadius: 5),
                    ],
                    image: DecorationImage(
                        image: AssetImage('images/img_home2.png'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 155),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey,
                        offset: Offset(0, 5),
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Selamat Datang',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            // 'Fulan',
                            loginKaryawanModel.namaKaryawan!,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                      // Spacer(),
                      SizedBox(width: 63),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Total Gaji Bulan ini',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Rp. 1.000.000',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Konten Harian',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: primaryColor),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                height: 120,
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                viewportFraction: 0.7,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
              ),
              items: listKonten
                  .map(
                    (konten) => Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            offset: Offset(0, 5),
                          ),
                        ],
                        color: Color(0xffF5F5F5),
                        image: DecorationImage(
                            image: AssetImage('images/img_konten2.jpg'),
                            fit: BoxFit.fitWidth),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            // 'Judul Konten',
                            konten.judulKonten!,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              // 'Isi Konten',
                              konten.isiKonten!,
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Karyawan',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.width - 30,
            child: GridView.count(
              primary: false,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              childAspectRatio: 0.8,
              children: <Widget>[
                buildCard('name', 'imgPath', 'employe'),
                buildCard('name', 'imgPath', 'employe'),
                buildCard('name', 'imgPath', 'employe'),
                buildCard('name', 'imgPath', 'employe'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildCard(String name, String imgPath, String employe) {
    return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 5, left: 3, right: 3),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: Colors.grey.withOpacity(0.2),
                offset: Offset(0, 5),
              ),
            ],
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Backend Developer',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(fontWeight: FontWeight.w600)),
            ),
            SizedBox(height: 10),
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/img_person.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Fulan',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(fontWeight: FontWeight.w600)),
            ),
          ],
        ),
      ),
    );
  }
}
