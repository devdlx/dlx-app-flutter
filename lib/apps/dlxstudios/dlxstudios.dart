import 'package:flutter/material.dart';
import 'package:dlxapp/components/shellPage/shellPage.dart';
import 'package:dlxapp/apps/booking/booking.dart';

List<Map<String, dynamic>> _apps = [
  {'title': 'SauceTV', 'icon': Icons.theaters, 'widget': BookingApp()},
  {'title': 'Booking', 'icon': Icons.calendar_today, 'widget': BookingApp()},
  {'title': 'Booking3', 'icon': Icons.calendar_today, 'widget': BookingApp()},
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
        return Container(
          color: Colors.red,
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => app['widget']));
              },
              child: buildTile(app)),
        );
      }).toList(),
      crossAxisCount: 2,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
    );
  }

  buildTile(app) {
    return GridTile(
        footer: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${app['title']}',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        child: Container(
          // color: Colors.pinkAccent,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(app['icon'], size: 200,)]),
        ));
  }
}
