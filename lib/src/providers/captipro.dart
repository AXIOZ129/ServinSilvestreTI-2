import 'package:api_cat/src/models/catpi.dart';
import 'package:dio/dio.dart';

class CatpiPro {
  final _url = 'https://thatcopy.pw/catapi/rest/';
  final _http = Dio();

  Future<List<ApiCat>> catobtain() async {
    final response = await _http.get(_url);
    List<dynamic> data = response.data;
    return data.map((cat) => ApiCat.obtenerData(cat)).toList();
  }
}
