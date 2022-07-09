import 'package:flutter_application_1/presentation/register_presenter.dart';

import '../../../../presentation/login_presenter.dart';
import '../../usecases/auth/remote_login_with_email_factory.dart';
import '../../usecases/auth/remote_register_with_email.dart';

RegisterPresenter makeRegisterPresenter() => RegisterPresenter(
      loginWithEmail: makeRemoteLoginWithEmail(),
      registerWithEmail: makeRemoteRegisterWithEmail(),
    );
