import '../entity/imdb_model.dart';

// ignore: one_member_abstracts
abstract class IImdbRepository {
  Future<ImdbModel> getImdbList();
}