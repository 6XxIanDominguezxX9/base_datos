import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BaceDeDatosFirebaseUser {
  BaceDeDatosFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

BaceDeDatosFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BaceDeDatosFirebaseUser> baceDeDatosFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<BaceDeDatosFirebaseUser>(
        (user) => currentUser = BaceDeDatosFirebaseUser(user));
