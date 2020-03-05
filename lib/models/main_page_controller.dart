import 'package:flutter/material.dart';
import 'package:mess/screens/bill.dart';
import 'package:mess/screens/marking.dart';
import 'package:mess/screens/thalaivar.dart';
import 'package:mess/widgets/app_nav_bar.dart';
import '../screens/home.dart';

class MainPageController extends StatefulWidget {

final List<String> _imageUrls = [
    'https://cdn.grabon.in/gograbon/images/category/1546252575451.png',
    'https://i1.wp.com/www.theimpulsivebuy.com/wordpress/wp-content/uploads/2015/04/KFC-Chicken-Rice-Bowls.jpg',
    'https://ibsmaverick.files.wordpress.com/2015/05/kfc-website.jpg',
  ];

  @override
 _MainPageController createState() => _MainPageController();
}

class _MainPageController extends State<MainPageController> {
  int _selectedPage = 0;
  void onTabChangedListener(position) {
    setState(() {
      _selectedPage = position;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widList = [
      //The First Page Home Page of the App
      HomePage(widget._imageUrls),
      //The Marking of the App
      MarkingPage(),
      //The Bill Page
      BillPage(),
      //The Thalaivar Page
      Thalaivar(),
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Mess Da'),),
      backgroundColor: Colors.white,
      body: SafeArea(child: Center(child:  widList[_selectedPage],)),
      bottomNavigationBar: AppNavBar(
        selectedPage: _selectedPage,
        onTabChangedListener: onTabChangedListener,
      ),
    );
  }
}