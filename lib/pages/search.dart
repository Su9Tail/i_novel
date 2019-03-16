import 'package:flutter/material.dart';

class Search extends StatefulWidget {

  @override
  State createState() {
    return new SearchState();
  }
}

class SearchState extends State<Search> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(),
        actions: <Widget>[
          FlatButton(child: Text('取消'), onPressed: null,),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Text('大家都在搜'),
          ),
        ],
      ),
    );
  }
}
