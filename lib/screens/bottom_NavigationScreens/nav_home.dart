import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weva/screens/bottom_NavigationScreens/filter_screen.dart';
import 'package:weva/screens/bottom_NavigationScreens/profile_screen.dart';
import 'package:weva/screens/tab_screens/Aboutus.dart';
import 'package:weva/screens/tab_screens/BillInfo.dart';
import 'package:weva/screens/tab_screens/Nearby.dart';
import 'package:weva/screens/tab_screens/Notification.dart';
import 'package:weva/screens/tab_screens/Pay.dart';
import 'package:weva/screens/tab_screens/Reservation.dart';
import 'package:weva/screens/tab_screens/ServicePageOne.dart';
import 'package:weva/screens/tab_screens/ServicePageProvider.dart';
import 'package:weva/screens/tab_screens/ServiceProviderPage.dart';
import 'package:weva/screens/tab_screens/cardfile.dart';
import 'package:weva/screens/tab_screens/health_screen.dart';
import 'package:weva/screens/tab_screens/home_page.dart';
import 'package:weva/screens/tab_screens/salon_screen.dart';

import '../fav_page.dart';
import '../user_profile.dart';

class NavHome extends StatefulWidget {
  @override
  _NavHomeState createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 17,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,

title: Column(crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Hi Anna',style: TextStyle(fontSize:19 ,color: Colors.black),) ,Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.location_pin,size: 10,color: Colors.grey,),
        Text('New York,US',style: TextStyle(fontSize:11 ,color: Colors.black),),
      ],
    ) ,
  ],),
          leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(backgroundImage: NetworkImage('https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8Z2lybHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80',),
              radius: 14,),
          )
          ,
          bottom: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.red, width: 3),
                  top: BorderSide(color: Colors.red, width: 3)),
            ),
            unselectedLabelColor: Colors.black,
            tabs: <Widget>[
              Tab(
                iconMargin: EdgeInsets.all(0),
                child: Container(
                  child: Text(
                    'Home',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Salon',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Health',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Profile',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'User Profile',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Cart',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Service Provider Page',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'ServicePageeOne',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'ServicePageProvider',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Pay',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Filter',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Bill info',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Reservation',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Notification',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'FavPage',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Aboutus',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Near By',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HomePage(),
            SalonScreen(),
            HealthScreen(),
            UserProfile(),
            Profile(),
            Cardfile(),
            ServiceProviderPage(),
            ServicePageeOne(),
            ServicePageProvider(),
            Pay(),
            Filter(),
            BillInfo(),
            Reservation(),
            Noti(),
            Fpage(),
            PageAboutUS(),
            Nearby(),
          ],
        ),
      ),
    );
  }
}
