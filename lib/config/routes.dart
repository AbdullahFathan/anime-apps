import 'package:anime_app/bottom_nav.dart';
import 'package:anime_app/screens/account_page.dart';
import 'package:anime_app/screens/auth/login_page.dart';
import 'package:anime_app/screens/auth/register_page.dart';
import 'package:anime_app/screens/home_page.dart';
import 'package:anime_app/screens/saved_page.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  "/": (p0) => const LoginPage(),
  "/registerPage": (p0) => const RegisterPage(),
  "/homePage": (p0) => const HomePage(),
  "/savedPage": (p0) => const SavedPage(),
  "/accountPage": (p0) => const AccountPage(),
  "/app": (p0) => const BottomNavWidget(),
};
