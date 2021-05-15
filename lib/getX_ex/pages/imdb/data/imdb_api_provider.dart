import 'package:flutter_demo_blocs/getX_ex/pages/imdb/domain/entity/imdb_model.dart';
import 'package:get/get.dart';


// ignore: one_member_abstracts
abstract class IImdbProvider {
  Future<Response<ImdbModel>> getMovieList(String path);
}

class ImdbProvider extends GetConnect implements IImdbProvider {
  @override
  void onInit() {
    httpClient.defaultDecoder =
        (val) => ImdbModel.fromJson(val as Map<String, dynamic>);
    httpClient.baseUrl = 'https://imdb8.p.rapidapi.com/auto-complete?q=';
    httpClient.addRequestModifier((request) {
      request.headers['x-rapidapi-key'] = '755d24fa3fmsh7dd1e7b75e3b8c3p14218ajsnc04f4e0db870';
      request.headers['x-rapidapi-host'] = 'imdb8.p.rapidapi.com';
      return request;
    });
  }

  @override
  Future<Response<ImdbModel>> getMovieList(String path) => get(path);
}
