import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_demo_blocs/getX_ex/pages/imdb/presentation/controllers/imdb_controller.dart';
import 'package:get/get.dart';

class ImdbView extends GetView<ImdbController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.linearToSrgbGamma(),
              image: NetworkImage("https://images.pexels.com/photos/3902882/pexels-photo-3902882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"))),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
        child: Container(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text('Imdb movie list'),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
            ),
            body: Center(
                child: controller.obx(
                  // ignore: missing_return
                  (state) {
                    child:
                    return ListView.builder(
                        itemCount: state.d.length,
                        itemBuilder: (context, index) {
                          final movie = state.d[index];
                          return ListTile(
                            onTap: () {
                              Get.toNamed('/imdb/movie', arguments: movie);
                            },
                            trailing: CircleAvatar(
                              backgroundImage: NetworkImage(movie.i.imageUrl),
                            ),
                            title: Text(movie.l),
                            subtitle: Text(
                                // ignore: lines_longer_than_80_chars
                                '${'Movie : '}${' ${movie.q}'}'),
                          );
                        });
                  },
                )),
          ),
        ),
      ),
    );
  }

  Widget _editTitleTextField() {
    if (controller.isEditingText)
      return Center(
        child: Obx(
          () => TextField(
            onSubmitted: (newValue) {
              controller.initialText = newValue;
              controller.isEditingText = false;
            },
            autofocus: true,
            controller: controller.editingController,
          ),
        ),
      );
    return InkWell(
      onTap: () {
        controller.isEditingText = true;
      },
      child: Text(
        controller.initialText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
