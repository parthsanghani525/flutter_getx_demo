

import 'package:flutter_demo_blocs/getX_ex/pages/home/bindings/home_binding.dart';
import 'package:flutter_demo_blocs/getX_ex/pages/home/presentation/views/country_view.dart';
import 'package:flutter_demo_blocs/getX_ex/pages/home/presentation/views/details_view.dart';
import 'package:flutter_demo_blocs/getX_ex/pages/home/presentation/views/home_view.dart';
import 'package:flutter_demo_blocs/getX_ex/pages/imdb/bindings/imdb_binding.dart';
import 'package:flutter_demo_blocs/getX_ex/pages/imdb/presentation/views/imdb_view.dart';
import 'package:flutter_demo_blocs/getX_ex/pages/imdb/presentation/views/movie_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static const INITIAL = Routes.IMDB;

  static final routes = [
    GetPage(
        name: Routes.HOME,
        page: () => HomeView(),
        binding: HomeBinding(),
        children: [
          GetPage(
            name: Routes.COUNTRY,
            page: () => CountryView(),
            children: [
              GetPage(
                name: Routes.DETAILS,
                page: () => DetailsView(),
              ),
            ],
          ),
        ]),
    GetPage(
        name: Routes.IMDB,
        page: () => ImdbView(),
        binding: ImdbBinding(),
        children: [
          GetPage(
            name: Routes.MOVIE,
            page: () => MovieView(),
          ),
        ]),

  ];
}