import 'package:flutter/material.dart';
import 'package:init_flutter/models/film.dart';
import 'package:provider/provider.dart';

import 'pages/faves_page.dart';
import 'pages/films_page.dart';

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int _selectedIndex = 0;
  final _appBarTitles = [
    const Text('Films'),
    const Text('Faves'),
  ];
  var _appBarTitleText = const Text('Films');
  final _pageOptions = [
    const FilmsPage(),
    const FavesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider(create: (context) => FilmsModel())],
      child: MaterialApp(
        title: 'Trilogies',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: _appBarTitleText,
          ),
          body: _pageOptions[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
                _appBarTitleText = _appBarTitles[index];
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.movie),
                label: 'Films',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'Faves',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
