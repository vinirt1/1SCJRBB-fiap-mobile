import 'package:firebase_auth/firebase_auth.dart';

import '../../../../data/usecases/auth/remote_login_with_email.dart';

RemoteLoginWithEmail makeRemoteLoginWithEmail() => RemoteLoginWithEmail(
      firebaseAuth: FirebaseAuth.instance,
    );
