import 'package:flutter/material.dart';
import 'package:flutter_salary/pages/news/detail_news.dart';
import 'package:flutter_salary/pages/news/list_item_news.dart';
import 'package:flutter_salary/pages/news/list_item_widget.dart';
import 'package:flutter_salary/providers/news_provider.dart';
import 'package:provider/provider.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  // List<ListItemNews> _listItem = [
  //   ListItemNews(
  //       imgPath: 'images/img_news.jpeg',
  //       title: 'Gajian Bulan Mei',
  //       author: 'Bendahara',
  //       date: '30-04-2021',
  //       content:
  //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  //   ListItemNews(
  //       imgPath: 'images/img_news.jpeg',
  //       title: 'Gajian Bulan Juni',
  //       author: 'Bendahara',
  //       date: '30-05-2021',
  //       content:
  //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  //   ListItemNews(
  //       imgPath: 'images/img_news.jpeg',
  //       title: 'Gajian Bulan Juli',
  //       author: 'Bendahara',
  //       date: '30-06-2021',
  //       content:
  //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  //   ListItemNews(
  //       imgPath: 'images/img_news.jpeg',
  //       title: 'Gajian Bulan Agustus',
  //       author: 'Bendahara',
  //       date: '30-07-2021',
  //       content:
  //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  //   ListItemNews(
  //       imgPath: 'images/img_news.jpeg',
  //       title: 'Gajian Bulan Oktober',
  //       author: 'Bendahara',
  //       date: '30-08-2021',
  //       content:
  //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  //   ListItemNews(
  //       imgPath: 'images/img_news.jpeg',
  //       title: 'Gajian Bulan November',
  //       author: 'Bendahara',
  //       date: '30-09-2021',
  //       content:
  //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  //   ListItemNews(
  //       imgPath: 'images/img_news.jpeg',
  //       title: 'Gajian Bulan Desember',
  //       author: 'Bendahara',
  //       date: '30-10-2021',
  //       content:
  //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  // ];

  @override
  Widget build(BuildContext context) {
    BeritaProvider beritaProvider = Provider.of<BeritaProvider>(context);

    final allBerita = beritaProvider.BeritaModel;

    return Container(
      child: ListView.builder(
          itemCount: allBerita.length,
          itemBuilder: (context, index) {
            var berita = allBerita[index];
            return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailNews(itemNews: berita),
                    ),
                  );
                },
                child: listItem(allBerita[index]));
          }),
    );
  }
}
