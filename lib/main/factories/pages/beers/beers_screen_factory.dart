import 'package:flutter/material.dart';
import 'package:flutter_application_1/main/factories/pages/beers/beers_presenter_factory.dart';
import 'package:flutter_application_1/presentation/beer_presenter.dart';
import 'package:flutter_application_1/ui/beers/beer_screen.dart';
import 'package:get/get.dart';

Widget makeBeersScreen() {
  final presenter = Get.put<BeerPresenter>(makeBeersPresenter());
  return BeerScreen(
    presenter: presenter,
  );
}
