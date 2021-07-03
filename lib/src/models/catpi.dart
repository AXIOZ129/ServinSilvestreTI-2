import 'dart:ffi';

class ApiCat {
  int id;
  String? url;
  String? webpurl;
  double? x;
  double? y;

  ApiCat({required this.id, this.url, this.webpurl, this.x, this.y});

  factory ApiCat.obtenerData(Map<String, dynamic> cat) {
    return ApiCat(
      id: cat['id'],
      url: cat['url'],
      webpurl: cat['webpurl'],
      x: cat['x'] / 1,
      y: cat['y'] / 1,
    );
  }
}
