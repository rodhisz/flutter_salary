import 'package:flutter/material.dart';
import 'package:flutter_salary/models/news_model.dart';
import 'package:flutter_salary/pages/news/list_item_news.dart';
import 'package:flutter_salary/theme/theme.dart';

Widget listItem(BeritaModels itemnews) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Container(
              width: 80,
              height: 59,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://picsum.photos/seed/picsum/200/300'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    itemnews.judulBerita!,
                    style: boldFont,
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Icon(Icons.person),
                          SizedBox(width: 3),
                          Text(
                            itemnews.penerbit!,
                            style: fontPrimary,
                          ),
                          SizedBox(width: 30),
                          Icon(Icons.date_range),
                          SizedBox(width: 5),
                          Text(
                            itemnews.tanggalTerbit!,
                            style: fontPrimary,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
