import 'package:http/http.dart' as http;

class BaseClient {
  var client = http.Client();
  Future<dynamic> getStockBarang(String api) async {
    var url = Uri.parse("http://162.0.223.55:8008/api/");
    var headers = {
      "Accept": "application/json",
      "Content-Type": 'application/json',
    };

    var response = await client.get(url, headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      //throw exception anc catch it in UI
    }

    client.get(url);
  }
}
