import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_app/config/router/app_routes_constants.dart';
import 'package:travel_app/modules/auth/screens/signin.dart';
import 'package:travel_app/modules/auth/screens/signup.dart';
import 'package:travel_app/modules/splash/screens/spalsh_Screen.dart';

final router = GoRouter(
  initialLocation: '/',
 routes: [
  GoRoute(name: AppRouteContants.spalshScreen.name,
  path:AppRouteContants.spalshScreen.path ,
  pageBuilder: (context, state) {
    return MaterialPage(child: SpalshScreen());
  },
  
  ),

   GoRoute(name: AppRouteContants.loginScreen.name,
  path:AppRouteContants.loginScreen.path ,
  pageBuilder: (context, state) {
    return MaterialPage(child: Signin());
  },
  
  ),
  GoRoute(name: AppRouteContants.singupScreen.name,
  path:AppRouteContants.singupScreen.path ,
  pageBuilder: (context, state) {
    return MaterialPage(child: Signup());
  },
  
  ),
],

);