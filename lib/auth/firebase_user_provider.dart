import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class RiseAirMobileAndWebDevFirebaseUser {
  RiseAirMobileAndWebDevFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

RiseAirMobileAndWebDevFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<RiseAirMobileAndWebDevFirebaseUser>
    riseAirMobileAndWebDevFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<RiseAirMobileAndWebDevFirebaseUser>(
            (user) => currentUser = RiseAirMobileAndWebDevFirebaseUser(user));
