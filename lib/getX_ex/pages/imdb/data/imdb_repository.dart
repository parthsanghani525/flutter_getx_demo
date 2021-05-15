import 'package:flutter/material.dart';
import 'package:flutter_demo_blocs/getX_ex/pages/imdb/domain/adapters/repository_adapter.dart';
import 'package:flutter_demo_blocs/getX_ex/pages/imdb/domain/entity/imdb_model.dart';

import 'imdb_api_provider.dart';



class ImdbRepository implements IImdbRepository {
  ImdbRepository({@required this.provider});
  final IImdbProvider provider;

  @override
  Future<ImdbModel> getImdbList() async {
    final cases = await provider.getMovieList("game of thr");

    if (cases.status.hasError) {
      return Future.error(cases.statusText);
    } else {
      return cases.body;
    }
  }
}