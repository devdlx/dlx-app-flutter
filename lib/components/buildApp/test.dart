import 'package:dlxapp/components/buildMediaItem/buildMediaItem.dart';
import 'package:dlxapp/components/shellPage/shellPage.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageShell(
        child: testPage(),
      ),
    );
  }
}

List hlist = List.generate(20, (i) {
  return {'title': 'Title name $i', 'sub': '${i * 25}'};
});

class testPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: <Widget>[
    // Row(
    //   children: hlist.map(( dynamic item ) {
    //     print(item);
    //     return MyBox(hlist[item]);
    //   }).toList(),
    // ),

// CustomScrollView(
//             cacheExtent: 20,
//             primary: true,
//             slivers: _comps.map((comp) {
//               //  print(comp['mapValue']['fields']['list']);
//               return BuildComponentFB(comp);
//             }).toList(),
//           )
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            color: Colors.deepPurple,
            height: 500,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: hlist.map((item) {
                return MediaItem(MediaItemModel('', 'John Wicker', '2016'));
              }).toList(),
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        SliverToBoxAdapter(
            child: MediaItem(MediaItemModel('', 'John Wicker', '2016'))),
        SliverToBoxAdapter(
            child: MediaItem(MediaItemModel('', 'John Wicker', '2016'))),
        SliverToBoxAdapter(
            child: MediaItem(MediaItemModel('', 'John Wicker', '2016'))),
        

            SliverToBoxAdapter(
          child: Container(
            color: Colors.deepPurple,
            height: 500,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: hlist.map((item) {
                return MediaItem(MediaItemModel('', 'John Wicker', '2016'));
              }).toList(),
            ),
          ),
        ),


        SliverToBoxAdapter(
            child: MediaItem(MediaItemModel('', 'John Wicker', '2016'))),


            SliverToBoxAdapter(
            child: MediaItem(MediaItemModel('', 'John Wicker', '2016'))),

            
      ],
    )
        //   ],
        // )
        ;
  }
}

class MyBox extends StatelessWidget {
  var data;
  MyBox({this.data = Colors.red});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: data,
      child: Text(
        '${data.toString()}',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
