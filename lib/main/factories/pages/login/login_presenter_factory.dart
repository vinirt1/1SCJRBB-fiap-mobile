import '../../../../presentation/login_presenter.dart';
import '../../usecases/auth/remote_login_with_email_factory.dart';
import '../../usecases/auth/remote_register_with_email.dart';

LoginPresenter makeLoginPresenter() => LoginPresenter(
      loginWithEmail: makeRemoteLoginWithEmail(),
      registerWithEmail: makeRemoteRegisterWithEmail(),
    );
