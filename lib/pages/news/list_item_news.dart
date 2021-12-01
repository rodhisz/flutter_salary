//class ini sebagai model untuk class news page
//umtuk data yang akan dipakai oleh news page

class ListItemNews {
  String? imgPath;
  String? title;
  String? author;
  String? date;
  String? content;

  ListItemNews({
    required this.imgPath,
    required this.title,
    required this.author,
    required this.date,
    required this.content,
  });
}
