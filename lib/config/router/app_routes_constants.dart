import 'package:travel_app/modules/splash/screens/spalsh_Screen.dart';

class AppRoute{
final String path;
final String name;

 const AppRoute({required this.name,required this.path});


}


class AppRouteContants{

static const spalshScreen = AppRoute(name: 'splash-screen', path: '/');
static const loginScreen = AppRoute(name: 'login-screen', path: '/login');
static const singupScreen = AppRoute(name: 'singup-screen', path: '/singup');

}