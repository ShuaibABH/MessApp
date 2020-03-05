import 'package:flutter/material.dart';



class AppNavBar extends StatelessWidget {

 final int selectedPage;
  final Function onTabChangedListener;

  AppNavBar({
    Key key,
    @required this.selectedPage,
    @required this.onTabChangedListener,
  }) ;


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('Marking'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.attach_money),
          title: Text('Bill'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('തലൈവർ'),
        ),
      ],
      currentIndex: selectedPage,
      selectedItemColor: Theme.of(context).primaryColor,
      onTap: onTabChangedListener,
    );
  }
}
