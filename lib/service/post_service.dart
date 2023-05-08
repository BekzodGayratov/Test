import 'package:appn3/model/post_model.dart';
import 'package:dio/dio.dart';

class PostService {
  Future<dynamic> getPosts() async {
    try {
      Response response =
          await Dio().get("https://jsonplaceholder.typicode.com/posts");
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((e) => PostModel.fromJson(e))
            .toList();
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return e.message.toString();
    }
  }
}
