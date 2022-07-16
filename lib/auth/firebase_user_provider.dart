import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Radio7EstrellasDeDavidFirebaseUser {
  Radio7EstrellasDeDavidFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

Radio7EstrellasDeDavidFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Radio7EstrellasDeDavidFirebaseUser>
    radio7EstrellasDeDavidFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Radio7EstrellasDeDavidFirebaseUser>(
            (user) => currentUser = Radio7EstrellasDeDavidFirebaseUser(user));
