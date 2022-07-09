import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/register/register_screen.dart';
import 'register_presenter_factory.dart';

Widget makeRegisterScreen() =>
    RegisterScreen(presenter: makeRegisterPresenter());
