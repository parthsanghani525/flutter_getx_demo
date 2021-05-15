import 'package:flutter_demo_blocs/getX_ex/pages/imdb/data/imdb_api_provider.dart';
import 'package:flutter_demo_blocs/getX_ex/pages/imdb/data/imdb_repository.dart';
import 'package:flutter_demo_blocs/getX_ex/pages/imdb/domain/adapters/repository_adapter.dart';
import 'package:flutter_demo_blocs/getX_ex/pages/imdb/presentation/controllers/imdb_controller.dart';
import 'package:get/get.dart';

class ImdbBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IImdbProvider>(() => ImdbProvider());
    Get.lazyPut<IImdbRepository>(() => ImdbRepository(provider: Get.find()));
    Get.lazyPut(() => ImdbController(imdbRepository: Get.find()));
  }
}
