import 'package:appn3/model/album_model.dart';
import 'package:dio/dio.dart';

class AlbumService {
  Future<dynamic> getAlbums() async {
    try {
      Response response =
          await Dio().get("https://jsonplaceholder.typicode.com/albums");
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((e) => AlbumModel.fromJson(e))
            .toList();
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return e.message.toString();
    }
  }
}
