import 'package:flutter/material.dart';
import 'package:i_novel/models/novel.dart';
import 'package:i_novel/pages/novel_detail.dart';

class Discovery extends StatefulWidget {
  @override
  State createState() {
    return new DiscoveryState();
  }
}

class DiscoveryState extends State<Discovery> {
  var recommends = [
    Novel('https://www.bqg99.cc/bookimages/2640967.jpg', '牧神记', '宅猪', ''),
    Novel('https://www.bqg99.cc/bookimages/6358685.jpg', '我是至尊', '风凌天下', ''),
    Novel('https://www.bqg99.cc/bookimages/1945462.jpg', '黎明之剑', '远瞳', ''),
    Novel('https://www.bqg99.cc/bookimages/659830.jpg', '我的邻居是皇帝', '青史尽成灰', ''),
  ];

  var anotherRecommends = [
    Novel('https://www.bqg99.cc/bookimages/1578546.jpg', '振南明', '一袖乾坤',
        '崇祯十七年闯贼攻破京师，天子自缢殉国。内有贼酋流匪窃玺，外有鞑虏胡儿嚣衅，国破山河在......　　举国同哀之际，一个现代灵魂附身在太子朱慈烺身上。　　值此危急存亡之际，朱慈烺发出振聋发聩的疾呼:我大明不和亲、不赔款、不割地、不纳贡、天子守国门，君王死社稷！汉贼不两立，皇明不偏安！'),
    Novel('https://www.bqg99.cc/bookimages/7736941.jpg', '圣墟', '辰东',
        '在破败中崛起，在寂灭中复苏。　　沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……'),
    Novel('https://www.bqg99.cc/bookimages/1010262.jpg', '深夜书屋', '纯洁滴小龙',
        '一家只在深夜开门营业的书屋，　　欢迎您的光临。　　————————　　《舵主群》：587980337（进群粉丝值验证）　　《读书群》：523978007（无需验证）　　《战斗群》：457654443（无需验证）'),
    Novel('https://www.bqg99.cc/bookimages/7109201.jpg', '道君', '跃千愁',
        '一个地球神级盗墓宗师，闯入修真界的故事……　　桃花源里，有歌声。　　山外青山，白骨山。　　五花马，千金裘，倚天剑。　　应我多情，啾啾鬼鸣，美人薄嗔。　　天地无垠，谁家旗鼓，碧落黄泉，万古高楼。　　为义气争雄！　　为乱世争霸！　　你好，仙侠！　　公布两个老跃官方QQ群：385477176——163628634'),
    Novel('https://www.bqg99.cc/bookimages/1968290.jpg', '全能游戏设计师', '青衫取醉',
        '游戏设计师陈陌穿越到点歪了科技树的平行世界，用一款又一款神级游戏颠覆游戏圈的故事。　　“就以这个时代的游戏设计理念而言，不把整个游戏行业吊起来打那我真是枉受国产免费游戏洗礼了。”——陈陌。　　书友群：558067640　　VIP群：157856787（进群需全订截图）'),
    Novel('https://www.bqg99.cc/bookimages/1477415.jpg', '诡秘之主', '爱潜水的乌贼',
        '蒸汽与机械的浪潮中，谁能触及非凡？历史和黑暗的迷雾里，又是谁在耳语？我从诡秘中醒来，睁眼看见这个世界：　　枪械，大炮，巨舰，飞空艇，差分机；魔药，占卜，诅咒，倒吊人，封印物……光明依旧照耀，神秘从未远离，这是一段“愚者”的传说。'),
    Novel('https://www.bqg99.cc/bookimages/2153719.jpg', '大王饶命', '会说话的肘子',
        '灵气复苏的时代，寂静生活碎掉了，仿佛雷霆贯穿长空，电光直射天心，雨沙沙地落下。　　凡逆我们的终将死去，这就是法则。　　……　　全订验证群号：696087569'),
    Novel('https://www.bqg99.cc/bookimages/1611187.jpg', '凡人修仙之仙界篇', '忘语',
        '凡人修仙，风云再起　　时空穿梭，轮回逆转　　金仙太乙，大罗道祖　　三千大道，法则至尊　　《凡人修仙传》仙界篇，一个韩立叱咤仙界的故事，一个凡人小子修仙的不灭传说。　　特说明下，没有看过前传的书友，并不影响本书的阅读体验，但感兴趣的书友，也可以先去看看《凡人修仙传》，再来看本书哦。'),
    Novel('https://www.bqg99.cc/bookimages/1876884.jpg', '飞剑问道', '我吃西红柿',
        '在这个世界，有狐仙、河神、水怪、大妖，也有求长生的修行者。　　修行者们，　　开法眼，可看妖魔鬼怪。　　炼一口飞剑，可千里杀敌。　　千里眼、顺风耳，更可探查四方。　　……　　秦府二公子‘秦云’，便是一位修行者……'),
  ];

  @override
  Widget build(BuildContext context) {
    var recommendsWidgets = recommends
        .map((novel) => Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      child: Image.network(
                        novel.cover,
                        fit: BoxFit.fill,
                        height: 96.0,
                      ),
                      onTap: handleTap,
                    ),
                    Text(
                      novel.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      novel.author,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              flex: 1,
            ))
        .toList();

    var anotherRecommendsWidgets = anotherRecommends
        .map((novel) => Container(
              width: double.infinity,
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Image.network(
                        novel.cover,
                        fit: BoxFit.fill,
                        height: 128.0,
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        height: 128.0,
                        padding: EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              novel.name,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              novel.description,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              novel.author,
                              style: TextStyle(fontWeight: FontWeight.w200),
                            ),
                          ],
                        ),
                      ),
                      flex: 3,
                    )
                  ],
                ),
                onTap: handleTap,
              ),
            ))
        .toList();

    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Container(
          color: Color.fromRGBO(17, 138, 216, 0.8),
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                    '编辑推荐',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
                  decoration: BoxDecoration(),
                  child: Text(
                    '基于你的阅读历史推荐·每日更新',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Row(
                  children: recommendsWidgets,
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: anotherRecommendsWidgets,
          ),
        ),
      ],
    );
  }

  void handleTap() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return new NovelDetail();
    }));
  }
}
