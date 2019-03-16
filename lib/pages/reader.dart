import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Reader extends StatefulWidget {
  @override
  State createState() {
    return new ReaderState();
  }
}

class ReaderState extends State<Reader> {
  bool showMenu = false;

  @override
  void initState() {
    super.initState();
    if (!showMenu) {
      SystemChrome.setEnabledSystemUIOverlays([]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(220, 214, 193, 1.0),
      appBar: showMenu
          ? AppBar(
              iconTheme: IconThemeData(color: Colors.white),
//              backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.file_download,
                  ),
                  onPressed: null,
                ),
              ],
            )
          : null,
      body: GestureDetector(
        child: ListView(
          children: <Widget>[
            Text(
                '321123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n1244444\n123\n123\n123\n123\n123\n123\n123\n123\n123444\n123\n123\n123\n123\n1235555\n123\n123\n123\n123\n123\n12388888\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123\n123')
          ],
        ),
        onTap: triggerMenu,
      ),
      bottomNavigationBar: showMenu ? Container(
        padding: EdgeInsets.all(8.0),
        width: double.infinity,
        height: 56.0,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.format_list_bulleted),),
            IconButton(icon: Icon(Icons.file_download),),
            IconButton(icon: Icon(Icons.settings),),
            IconButton(icon: Icon(Icons.comment),),
          ],
        ),
        
      ) : null,
    );
  }

  void triggerMenu() {
    setState(() {
      showMenu = !showMenu;
    });
    if (showMenu) {
      SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    } else {
      SystemChrome.setEnabledSystemUIOverlays([]);
    }
  }
}
