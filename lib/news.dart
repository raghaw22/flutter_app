import 'package:intl/intl.dart';

class News {
  String name, title, url, description, publishedAt;

  News({this.name, this.title, this.url, this.description, this.publishedAt});

  factory News.fromJson(Map<String, dynamic> json) {
    final description = json['description'];
    final date = DateTime.parse(json['publishedAt']);
    final formattedDate = new DateFormat.yMd().add_jm().format(date);

    return News(
        name: json['name'],
        title: json['title'],
        description: json['description'] + "\n\n" + formattedDate,
        publishedAt: json['publishedAt'],
        url: json['url']);
  }
/*

  String _formatDate(String date) {
    var format = DateFormat.yMMMd('en');
    return format.format(date);
  }
*/

}
