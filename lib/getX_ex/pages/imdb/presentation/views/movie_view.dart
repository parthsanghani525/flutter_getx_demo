import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_demo_blocs/getX_ex/pages/imdb/domain/entity/imdb_model.dart';

import 'package:get/get.dart';



class MovieView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final movie = Get.arguments as D;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.linearToSrgbGamma(),
          image: NetworkImage(movie.i.imageUrl),
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
        child: Container(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text('details'.tr),
              backgroundColor: Colors.black12,
              elevation: 0,
              centerTitle: true,
            ),
            body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${movie.l}',
                      style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}