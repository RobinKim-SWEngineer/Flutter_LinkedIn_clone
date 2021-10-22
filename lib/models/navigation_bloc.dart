import 'package:rxdart/rxdart.dart';

enum NavBarItem { Profile, MyNetwork, Post, Notification, Jobs }

class NavigationBloc {
  NavBarItem defaultItem = NavBarItem.Profile;

  final BehaviorSubject<NavBarItem> _navigationSubject =
      BehaviorSubject.seeded(NavBarItem.Profile);

  Stream<NavBarItem> get navigationSubject => _navigationSubject.stream;

  void _updateNavigation(NavBarItem screen) {
    if (_isDisposed) {
      return;
    }
    _navigationSubject.add(screen);
  }

  void pickItem(int i) {
    switch (i) {
      case 0:
        _updateNavigation(NavBarItem.Profile);
        break;
      case 1:
        _updateNavigation(NavBarItem.MyNetwork);
        break;
      case 2:
        _updateNavigation(NavBarItem.Post);
        break;
      case 3:
        _updateNavigation(NavBarItem.Notification);
        break;
      case 4:
        _updateNavigation(NavBarItem.Jobs);
        break;
    }
  }

  bool _isDisposed = false;

  void dispose() {
    _navigationSubject.close();
    _isDisposed = true;
  }
}
