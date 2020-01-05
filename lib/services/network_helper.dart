import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{
  final String url;
  NetworkHelper({this.url});

  Future get() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      return {
        'status': response.statusCode,
        'payload': jsonDecode(response.body)
      };
    } else {
      // TODO: テスト用のモックデータ API出来たらpayloadをnullで返すように変更する
      String jsonMock = '[{name: 平成30年度春季, id: 1}, {name: 平成29年度春季, id: 1}, {name: 平成29年度秋季, id: 3}]';
      return {'status': response.statusCode, 'payload': jsonDecode(jsonMock)};
    }
  }

}

