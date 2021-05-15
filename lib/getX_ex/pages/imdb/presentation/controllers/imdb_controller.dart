import 'package:flutter/material.dart';
import 'package:flutter_demo_blocs/getX_ex/pages/imdb/domain/entity/imdb_model.dart';
import 'package:get/get.dart';

import '../../domain/adapters/repository_adapter.dart';

class ImdbController extends SuperController<ImdbModel> {
  ImdbController({@required this.imdbRepository});

  final IImdbRepository imdbRepository;
  bool isEditingText = false;
  TextEditingController editingController;
  String initialText = "Initial Text";

  @override
  void onInit() {
    super.onInit();
    editingController = TextEditingController(text: initialText);
    //Loading, Success, Error handle with 1 line of code
    append(() => imdbRepository.getImdbList);
  }

  @override
  void onReady() {
    print('The build method is done. '
        'Your controller is ready to call dialogs and snackbars');
    super.onReady();
  }

  @override
  void onClose() {
    print('onClose called');
    super.onClose();
  }

  @override
  void didChangeMetrics() {
    print('the window size did change');
    super.didChangeMetrics();
  }

  @override
  void didChangePlatformBrightness() {
    print('platform change ThemeMode');
    super.didChangePlatformBrightness();
  }

  @override
  Future<bool> didPushRoute(String route) {
    print('the route $route will be open');
    return super.didPushRoute(route);
  }

  @override
  Future<bool> didPopRoute() {
    print('the current route will be closed');
    return super.didPopRoute();
  }

  @override
  void onDetached() {
    print('onDetached called');
  }

  @override
  void onInactive() {
    print('onInative called');
  }

  @override
  void onPaused() {
    print('onPaused called');
  }

  @override
  void onResumed() {
    print('onResumed called');
  }
}