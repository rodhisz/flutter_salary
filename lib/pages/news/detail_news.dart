import 'package:flutter/material.dart';
import 'package:flutter_salary/models/news_model.dart';
import 'package:flutter_salary/pages/news/list_item_news.dart';
import 'package:flutter_salary/pages/news/list_item_widget.dart';
import 'package:flutter_salary/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailNews extends StatelessWidget {
  final BeritaModels itemNews;
  DetailNews({required this.itemNews});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: geryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.network(
                    'https://picsum.photos/seed/picsum/200/300',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 15),
                  Text(
                    itemNews.judulBerita!,
                    style: GoogleFonts.montserrat(
                        fontSize: 18, color: blackColor, fontWeight: semibold),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.person),
                        SizedBox(width: 3),
                        Text(
                          itemNews.penerbit!,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 30),
                        Icon(Icons.date_range),
                        SizedBox(width: 3),
                        Text(
                          itemNews.tanggalTerbit!,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      itemNews.isiBerita!,
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Icon(Icons.arrow_back_ios_new, color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
