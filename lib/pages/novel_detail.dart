import 'package:flutter/material.dart';
import 'package:i_novel/pages/reader.dart';

class NovelDetail extends StatefulWidget {
  @override
  State createState() {
    return new NovelDetailState();
  }
}

class NovelDetailState extends State<NovelDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.95),
      appBar: AppBar(
        title: Text('书籍详情'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Image.network(
                    'https://www.bqg99.cc/bookimages/7736941.jpg',
                    fit: BoxFit.fill,
                    width: 128.0,
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    height: 128.0,
                    padding: EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '圣墟',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(''),
                        Text('玄幻 | 辰东 | 连载'),
                        Text('4402739字'),
                        Text(''),
                        Text('更新时间：2019-03-10 01:10:42'),
                      ],
                    ),
                  ),
                  flex: 3,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(8.0),
            child: Text(
              '在破败中崛起，在寂灭中复苏。　　沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……',
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              color: Colors.white,
              child: GestureDetector(
                child: ListTile(
                  title: Text('查看目录 第1385章 鼻祖'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: null,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            width: double.infinity,
            height: 240.0,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    '推荐阅读',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Image.network(
                          'https://www.bqg99.cc/bookimages/427895.jpg'),
                      flex: 1,
                    ),
                    Expanded(
                      child: Image.network(
                          'https://www.bqg99.cc/bookimages/1836294558.jpg'),
                      flex: 1,
                    ),
                    Expanded(
                      child: Image.network(
                          'https://www.bqg99.cc/bookimages/7290690.jpg'),
                      flex: 1,
                    ),
                    Expanded(
                      child: Image.network(
                          'https://www.bqg99.cc/bookimages/1836285165.jpg'),
                      flex: 1,
                    ),
                    Expanded(
                      child: Image.network(
                          'https://www.bqg99.cc/bookimages/1141361.jpg'),
                      flex: 1,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Image.network(
                          'https://www.bqg99.cc/bookimages/11038083.jpg'),
                      flex: 1,
                    ),
                    Expanded(
                      child: Image.network(
                          'https://www.bqg99.cc/bookimages/2973015.jpg'),
                      flex: 1,
                    ),
                    Expanded(
                      child: Image.network(
                          'https://www.bqg99.cc/bookimages/1582412.jpg'),
                      flex: 1,
                    ),
                    Expanded(
                      child: Image.network(
                          'https://www.bqg99.cc/bookimages/1836368221.jpg'),
                      flex: 1,
                    ),
                    Expanded(
                      child: Image.network(
                          'https://www.bqg99.cc/bookimages/5241864.jpg'),
                      flex: 1,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              padding: EdgeInsets.all(8.0),
              width: double.infinity,
              height: 240.0,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '相关推荐',
                      style:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Image.network(
                            'https://www.bqg99.cc/bookimages/427895.jpg'),
                        flex: 1,
                      ),
                      Expanded(
                        child: Image.network(
                            'https://www.bqg99.cc/bookimages/1836294558.jpg'),
                        flex: 1,
                      ),
                      Expanded(
                        child: Image.network(
                            'https://www.bqg99.cc/bookimages/7290690.jpg'),
                        flex: 1,
                      ),
                      Expanded(
                        child: Image.network(
                            'https://www.bqg99.cc/bookimages/1836285165.jpg'),
                        flex: 1,
                      ),
                      Expanded(
                        child: Image.network(
                            'https://www.bqg99.cc/bookimages/1141361.jpg'),
                        flex: 1,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Image.network(
                            'https://www.bqg99.cc/bookimages/11038083.jpg'),
                        flex: 1,
                      ),
                      Expanded(
                        child: Image.network(
                            'https://www.bqg99.cc/bookimages/2973015.jpg'),
                        flex: 1,
                      ),
                      Expanded(
                        child: Image.network(
                            'https://www.bqg99.cc/bookimages/1582412.jpg'),
                        flex: 1,
                      ),
                      Expanded(
                        child: Image.network(
                            'https://www.bqg99.cc/bookimages/1836368221.jpg'),
                        flex: 1,
                      ),
                      Expanded(
                        child: Image.network(
                            'https://www.bqg99.cc/bookimages/5241864.jpg'),
                        flex: 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_download),
            title: Text('下载'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('马上阅读'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('加入书架'),
          ),
        ],
        currentIndex: 1,
        onTap: handleTap,
      ),
    );
  }

  void handleTap(index) {
    switch (index) {
      case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return new Reader();
        }));
        break;
      default:
        break;
    }
  }
}
