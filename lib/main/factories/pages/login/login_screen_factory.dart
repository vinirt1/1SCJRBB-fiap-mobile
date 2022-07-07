import 'package:flutter/material.dart';

import '../../../../ui/login/login_screen.dart';
import 'login_presenter_factory.dart';

Widget makeLoginScreen() => LoginScreen(presenter: makeLoginPresenter());
