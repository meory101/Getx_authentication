import 'dart:convert';
import 'package:http/http.dart' as http;

GetMethod(String url) async {
  try {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
  } catch (e) {
    print(e);
  }
}

PostMethod(String url, Map body) async {
  http.Response response = await http.post(Uri.parse(url), body: body);
  return jsonDecode(response.body);
}
