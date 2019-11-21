import 'package:dlxapp/components/Page/Page.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
//     show CalendarCarousel;

Map<String, dynamic> dates;

var offers = [
  {
    'title': 'BLOW OUT, STYLING, & TREATMENTS',
    'cover':
        'https://cdn.shopify.com/s/files/1/2511/6314/files/hair-model-jobs-perth_large.png?v=1520840401',
    'pricing': [
      {'title': 'Stylist Consultation', 'price': 20, 'time': 15},
      {'title': 'Wash + Blowout', 'price': 30, 'time': 45},
      {'title': 'Deep Conditioning Treatment', 'price': 40, 'time': 25},
      {'title': 'Scalp Scrub Treatment', 'price': 10, 'time': 10},
      {'title': 'Formal Styling / Up-do', 'price': 70, 'time': 75},
    ]
  },
  {
    'title': 'HAIRCUT',
    'cover':
        'https://dta0yqvfnusiq.cloudfront.net/envyh55518958/2018/10/Screenshot-73-5bda15532c148-241x300.png',
    'pricing': [
      {'title': 'Haircut ', 'price': 30, 'time': 30},
      {'title': 'Kid’s 12-under Haircut', 'price': 20, 'time': 20},
      {'title': 'Wash, cut, blowdry', 'price': 50, 'time': 45},
      {'title': 'Wash + Blowout', 'price': 50, 'time': 60},
    ]
  },
  {
    'title': 'COLOR SERVICES',
    'cover':
        'https://dta0yqvfnusiq.cloudfront.net/envyh55518958/2018/08/Screenshot-42-5b7d8329ab669-245x300.png',
    'pricing': [
      {'title': 'Toner', 'price': 10, 'time': 15},
      {'title': 'Root Color Retouch', 'price': 55, 'time': 180},
      {'title': 'Full Head Color / Color Glossing', 'price': 80, 'time': 120},
      {'title': 'Partial Highlight', 'price': 80, 'time': 180},
      {'title': 'Full Head Highlight', 'price': 125, 'time': 150},
    ]
  },
  {
    'title': 'FULL CHEMICAL TREATMENT SERVICES',
    'cover':
        'https://dta0yqvfnusiq.cloudfront.net/envyh55518958/2018/10/Screenshot-68-5bda0ac270a55-300x277.png',
    'pricing': [
      {'title': 'RELAXERS ', 'price': 180, 'time': 0},
      {'title': 'Permanent Wave', 'price': 90, 'time': 0},
      {'title': 'Deep Conditioning Treatment', 'price': '\$40', 'time': 25},
      {
        'title': 'Keratin Full Service Smoothing Treatment',
        'price': 180,
        'time': 0
      },
      {'title': 'Keratin Express Treatment', 'price': 80, 'time': 0},
    ]
  },
  {
    'title': 'WAXING & SPA SERVICES',
    'cover':
        'https://dta0yqvfnusiq.cloudfront.net/envyh55518958/2018/10/Screenshot-67-5bda0ab7c7814-300x300.png',
    'pricing': [
      {'title': 'Eyebrow shaping', 'price': 15, 'time': 20},
      {'title': 'Brow maintence, lip, chin', 'price': 10, 'time': 20},
      {'title': 'Sideburn', 'price': 10, 'time': 20},
      {'title': 'Full Face', 'price': 40, 'time': 20},
      {'title': 'Brazilian ', 'price': 50, 'time': 20},
    ]
  },
];

class BookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black, accentColor: Colors.white),
      home: BookingPage(),
      initialRoute: '/',
    );
  }
}

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  int _currentIndex;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _currentIndex = 0;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
        controller: _pageController,
        children: <Widget>[
          BookingPageServices(),
          BookingPageServices(),
          BookingPageServices(),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).accentColor,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.view_module), title: Text('Services')),
          BottomNavigationBarItem(
              icon: Icon(Icons.timelapse), title: Text('Orders')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text('Cart')),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (_pageController.hasClients) {
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 10),
        curve: Curves.easeInOut,
      );
    }
  }
}

class BookingPageServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Select your style',
            style: TextStyle(
                fontSize: 30,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w300)),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Theme.of(context).accentColor,
          ),
          CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(22.0),
                sliver: SliverGrid.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.051,
                  children: offers.map((offer) {
                    return BuildOffer(offer);
                  }).toList(),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class BuildOffer extends StatelessWidget {
  final Map<String, Object> offer;
  const BuildOffer(this.offer);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => OfferDetailsPage(this.offer)));
      },
      child: GridTile(
        footer: Container(
          padding: EdgeInsets.all(16),
          color: Colors.black.withOpacity(.6),
          child: Text('${this.offer['title']}',
              style: TextStyle(fontSize: 24, color: Colors.white)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            offer['cover'],
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class OfferDetailsPage extends StatefulWidget {
  final Map<String, Object> offer;

  OfferDetailsPage(this.offer);

  @override
  _OfferDetailsPageState createState() => _OfferDetailsPageState(this.offer);
}

class _OfferDetailsPageState extends State<OfferDetailsPage> {
  final Map<String, Object> offer;

  _OfferDetailsPageState(this.offer) {
    for (var price in this.offer['pricing']) {
      _pricing.add(buildPricingTile(price));
    }
  }

  ListTile buildPricingTile(price) {
    return ListTile(
      key: Key(price['title']),
      leading: Text(
        '${price['title']}',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (bool value) {
          print(price['title']);
          setState(() {
            // _throwShotAway = newValue;
          });
        },
      ),
    );
  }

  List<Widget> _pricing = [];

  @override
  Widget build(BuildContext context) {
    return PageShell(
      color: Colors.white,
      dialog: true,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 280,
                width: 800,
                child: Image.network(
                  this.offer['cover'],
                  fit: BoxFit.fitWidth,
                ),
              ),
              Positioned(
                bottom: -10,
                right: 20,
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.add),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Container(
            // color: Colors.deepOrange,
            padding: EdgeInsets.all(16),
            
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Text(
                    '${this.offer['title']}',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                Expanded(
                  child: Text('4.3', style: TextStyle(fontSize: 18),),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          for (var i = 0; i < _pricing.length; i++) _pricing[i],
          SizedBox(
            height: 190,
            child: Container(
              color: Colors.redAccent,
              child: Text('shrink'),
            ),
          ),
        ],
      ),
    );
  }
}

// CalendarCarousel(
//       current: DateTime.now(),
//       onDayPressed: (DateTime date) {
//         this.setState(() => _currentDate = date);
//       },
//       thisMonthDayBorderColor: Colors.grey,
//       height: 420.0,
//       selectedDateTime: _currentDate,
//       daysHaveCircularBorder: false, /// null for not rendering any border, true for circular border, false for rectangular border
//       markedDatesMap: _markedDateMap,
//          weekendStyle: TextStyle(
//            color: Colors.red,
//          ),
//          weekDays: null, /// for pass null when you do not want to render weekDays
//          headerText: Container( /// Example for rendering custom header
//            child: Text('Custom Header'),
//          ),
//     ),
