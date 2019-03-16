import 'package:dio/dio.dart';
import 'package:html/dom.dart';

class Transcoder {
  Document coder;

  Transcoder(String html) {
    coder = Document.html(html);
  }

  String text(String rule){
    return coder.querySelector(rule) != null ? coder.querySelector(rule).text : null;
  }
  String href(String rule){
    return coder.querySelector(rule).attributes['href'];
  }
  String src(String rule){
    return coder.querySelector(rule).attributes['src'];
  }
  String html(String rule){
    return coder.querySelector(rule).outerHtml;
  }
}

void main() async {
  Response response = await new Dio().get('https://www.bqg99.cc/');
  Transcoder transcoder = Transcoder(response.toString());

//  print(transcoder.text('body > div.wrap > div.hot > div.l.bd > div:nth-child(1) > div > dl > dt > a'));
  print(transcoder.html('body > div.wrap > div.hot > div.l.bd > div.item'));
}
