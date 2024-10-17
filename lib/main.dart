import 'package:flutter/material.dart';
import 'package:jeux/screens/login.dart';
import 'package:jeux/screens/register_screen.dart';
import 'screens/login.dart';
import 'screens/tabs_screen.dart';
import 'screens/communities_screen.dart';
import 'screens/communities_posts_screen.dart';
import 'screens/post_detail_screen.dart';
import 'utils/app_routes.dart';
import 'screens/settings_screen.dart';
import 'screens/account_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jeux',
      theme: ThemeData(
        primaryColor: Color(0xFF4C0099),
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(45, 3, 51, 3),
        textTheme: ThemeData.light().textTheme.copyWith(
          titleLarge: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            color: Colors.white,
          ),
        ),
      ),
      home: Login(),
      routes: {
        AppRoutes.COMMUNITIES_POSTS: (ctx) => CommunitiesPostsScreen(),
        AppRoutes.POST_DETAIL: (ctx) => PostDetailScreen(),
        AppRoutes.ACCOUNT: (ctx) => AccountScreen(),
        AppRoutes.SETTINGS: (ctx) => SettingsScreen(),
        AppRoutes.REGISTER: (ctx) => Register(),
        AppRoutes.TABS: (ctx) => TabsScreen(),
      },
    );
  }
}

