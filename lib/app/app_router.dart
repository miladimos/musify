import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:musify/app/presentation/pages/home/home_page.dart';
import 'package:musify/app/presentation/pages/login/login_page.dart';
import 'package:musify/app/presentation/pages/player/player_page.dart';
import 'package:musify/app/presentation/pages/splash/splash_page.dart';

const String SPLASH_ROUTE = "/";
const String LOGIN_PAGE_ROUTE = "/login";
const String HOME_PAGE_ROUTE = "/home";
const String PLAYER_PAGE_ROUTE = "/player";
const String PLAY_LIST_PAGE_ROUTE = "/playlist";
const String SETTINGS_PAGE_ROUTE = "/settings";
const String MUSICS_PAGE_ROUTE = "/musics";

class AppRouter {
  SharedAxisTransition globalTransaction(
      context, animation, secondaryAnimation, child) {
    return SharedAxisTransition(
      fillColor: Colors.black,
      transitionType: SharedAxisTransitionType.scaled,
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      child: child,
    );
  }

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SPLASH_ROUTE:
      // return PageTransition(child: SplashScreen(), type: PUSH_ANIMATION);
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return SplashPage();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return globalTransaction(
                context, animation, secondaryAnimation, child);
          },
        );
      case LOGIN_PAGE_ROUTE:
      // return PageTransition(child: SignUpScreen(), type: PUSH_ANIMATION);
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return LoginPage();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return globalTransaction(
                context, animation, secondaryAnimation, child);
          },
        );
      case HOME_PAGE_ROUTE:
      // return PageTransition(child: SignInScreen(), type: PUSH_ANIMATION);
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return HomePage();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return globalTransaction(
                context, animation, secondaryAnimation, child);
          },
        );
      case PLAYER_PAGE_ROUTE:
      // return PageTransition(child: PokemonListScreen(Get.find()), type: PUSH_ANIMATION);
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return PlayerPage();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return globalTransaction(
                context, animation, secondaryAnimation, child);
          },
        );
      default:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return SplashPage();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return globalTransaction(
                context, animation, secondaryAnimation, child);
          },
        );
    }
  }
}
