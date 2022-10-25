import 'package:ditonton/presentation/pages/watchlist_movies_page.dart';
import 'package:ditonton/presentation/pages/watchlist_tv_page.dart';
import 'package:flutter/material.dart';

import 'home_movie_page.dart';
import 'home_tv_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Widget> _option = <Widget>[
    HomeMoviePage(),
    HomeSeriesPage(),
    WatchlistMoviesPage(),
    WatchlistSeriesPage(),
  ];

  void _onTapped(int Index) {
    setState(() {
      _selectedIndex = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text('Netclick'))),
      body: _option.elementAt(_selectedIndex),
      bottomNavigationBar: _makeBottomNavigationBar(),
    );
  }

  Widget _makeBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black.withOpacity(0.5),
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: const [
        BottomNavigationBarItem(label: 'movie', icon: Icon(Icons.movie)),
        BottomNavigationBarItem(label: 'series', icon: Icon(Icons.tv)),
        BottomNavigationBarItem(
            label: 'watchlistmovie', icon: Icon(Icons.local_movies)),
        BottomNavigationBarItem(
            label: 'watchlisttv', icon: Icon(Icons.reset_tv)),
      ],
      onTap: (Index) {
        _onTapped(Index);
      },
    );
  }
}
