import 'package:flutter/material.dart';
import 'package:movie_app/screen/login.dart';
import 'package:movie_app/screen/movies.dart';
import 'package:movie_app/screen/wishlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> _totalPage = [
    MoviesPage(),
    WishListPage(),
    LoginPage(),
  ];

  void setCurrentIndex(int val) {
    setState(() {
      _currentIndex = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff36393f),
      body: SafeArea(
        child: _totalPage[_currentIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: setCurrentIndex,
        backgroundColor: Colors.black26,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: "Movie",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
