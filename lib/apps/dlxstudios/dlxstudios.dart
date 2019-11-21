import 'package:dlxapp/components/Page/Page.dart';
import 'package:dlxapp/components/Tiles/Tiles.dart';
import 'package:flutter/material.dart';
import 'package:dlxapp/apps/booking/booking.dart';

List<Map<String, dynamic>> _apps = [
  {'title': 'Admin', 'icon': Icons.theaters, 'widget': BookingApp()},
  {'title': 'SauceTv', 'icon': Icons.beach_access, 'widget': BookingApp()},
  {'title': 'GoTix', 'icon': Icons.delete_outline, 'widget': BookingApp()},
  {'title': 'Booking4', 'icon': Icons.calendar_today, 'widget': BookingApp()},
];

class DlxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.amber,
          accentColor: Colors.white,
          textTheme: TextTheme(title: TextStyle(color: Colors.white))),
      home: PageShell(
        child: Dashboard(),
      ),
      initialRoute: '/',
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      children: _apps.map((app) {
        return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => app['widget']));
            },
            child: ThumbTile(
              cover:
                  'https://static.vinepair.com/wp-content/uploads/2017/03/darts-int.jpg',
              title: app['title'],
              subtitle: app['subtitle'],
            ));
      }).toList(),
      crossAxisCount: 2,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
    );
  }
}
