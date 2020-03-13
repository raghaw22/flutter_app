import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';
import 'package:flutterapp/http_utils.dart';
import 'package:getflutter/components/list_tile/gf_list_tile.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

import 'news.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('HomeScreen'),
          centerTitle: true,
        ),


        body: _buildListView()
      /*body: new Center(
        child: new Text('Welcome to Homes.!'),
      ),*/
    );
  }


  Widget _buildListView() {
    return PagewiseListView(
      itemBuilder: (context, entry, index) {
        return Column(
          children: <Widget>[
            InkWell(
              onTap: () async {
                await launch(entry.url);
              },
              child: GFListTile(
                padding: const EdgeInsets.all(10),
                titleText: entry.title,
                subtitleText: entry.description,
                icon: Icon(Icons.chevron_right),
              ),
            ),
            Divider()
          ],
        );
      },
      pageSize: 10,
      pageFuture: (page) {
        return _getNews(page + 1);
      },
    ); // Pagination
  }

  Future<List> _getNews(int page) async {
    http.Response response = await http.get(
        HttpUtils.getUrl("news?page=$page"));
    List newsObjects = jsonDecode(response.body) as List;

    return newsObjects.map((news) => News.fromJson(news)).toList();
  }
}


