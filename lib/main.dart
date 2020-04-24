import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'T\'20',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

@override
Widget build(BuildContext context) {
  return Scaffold(
    key: _drawerKey, // assign key to Scaffold
    drawer: Drawer(),
    floatingActionButton: FloatingActionButton(
      onPressed: () => _drawerKey.currentState.openDrawer(), // open drawer
    ),
  );
}

class HomePage extends StatelessWidget {
  // const AgendaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        // primaryColor: Colors.black
      ),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          drawerEdgeDragWidth: 150,
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                    child: Column(
                  children: <Widget>[Text('Huraken'), Text('NITC')],
                )),
                ListTile(
                  leading: Icon(IconData(59389, fontFamily: 'MaterialIcons')),
                  title: Text('My ID'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(IconData(59639, fontFamily: 'MaterialIcons')),
                  title: Text('My Tickets'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(IconData(58153, fontFamily: 'MaterialIcons')),
                  title: Text('QR Scanner'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(IconData(59513, fontFamily: 'MaterialIcons')),
                  title: Text('Logout'),
                  onTap: () {},
                )
              ],
            ),
          ),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            leading: Icon(Icons.person_outline),
            title: Text(
              'Tathva \'20',
              style: TextStyle(fontSize: 16.0),
            ),
            bottom: PreferredSize(
                child: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.white.withOpacity(0.9),
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text('Events'),
                      ),
                      Tab(
                        child: Text('Workshops'),
                      ),
                      Tab(
                        child: Text('Lectures'),
                      ),
                      Tab(
                        child: Text('Schedule'),
                      ),
                      Tab(
                        child: Text('Maps'),
                      ),
                    ]),
                preferredSize: Size.fromHeight(30.0)),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(Icons.add_alert),
              ),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Events(),
              ),
              Container(
                child: Center(
                  child: Workshops(),
                ),
              ),
              Container(
                child: Center(
                  child: Lectures(),
                ),
              ),
              Container(
                child: Center(child: Schedules()),
              ),
              Container(
                child: Center(
                  child: Maps(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Events extends StatelessWidget {
  // const Events({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Card(
              child: Container(
                  width: 1000000000,
                  height: 250,
                  child: Center(child: Text('Event 1'))),
            ),
            Card(
              child: Container(
                  width: 1000000000,
                  height: 250,
                  child: Center(child: Text('Event 2'))),
            ),
            Card(
              child: Container(
                  width: 1000000000,
                  height: 250,
                  child: Center(child: Text('Event 3'))),
            ),
            Card(
              child: Container(
                  width: 100000000,
                  height: 250,
                  child: Center(child: Text('Event 4'))),
            ),
          ],
        ),
      ),
    );
  }
}

class Workshops extends StatelessWidget {
  // const Workshops({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Card(
              child: Container(
                  width: 1000000000,
                  height: 250,
                  child: Center(child: Text('Workshop 1'))),
            ),
            Card(
              child: Container(
                  width: 1000000000,
                  height: 250,
                  child: Center(child: Text('Workshop 2'))),
            ),
            Card(
              child: Container(
                  width: 1000000000,
                  height: 250,
                  child: Center(child: Text('Workshop 3'))),
            ),
            Card(
              child: Container(
                  width: 100000000,
                  height: 250,
                  child: Center(child: Text('Workshop 4'))),
            ),
          ],
        ),
      ),
    );
  }
}

class Lectures extends StatelessWidget {
  // const Events({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Card(
              child: Container(
                  width: 1000000000,
                  height: 250,
                  child: Center(child: Text('Lecture 1'))),
            ),
            Card(
              child: Container(
                  width: 1000000000,
                  height: 250,
                  child: Center(child: Text('Lecture 2'))),
            ),
            Card(
              child: Container(
                  width: 1000000000,
                  height: 250,
                  child: Center(child: Text('Lecture 3'))),
            ),
            Card(
              child: Container(
                  width: 100000000,
                  height: 250,
                  child: Center(child: Text('Lecture 4'))),
            ),
          ],
        ),
      ),
    );
  }
}

class Schedules extends StatelessWidget {
  // const Events({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              child: Center(
                child: Text('Notification'),
              ),
            ),
            Card(
              child: Container(
                  width: 1000000000,
                  height: 175,
                  child: Center(
                      child: Column(
                    children: <Widget>[
                      Card(
                        child: Container(
                            width: 100000000,
                            height: 50,
                            child: Center(child: Text('Notification 1'))),
                      ),
                      Card(
                        child: Container(
                            width: 100000000,
                            height: 50,
                            child: Center(child: Text('Notification 2'))),
                      ),
                      Card(
                        child: Container(
                            width: 100000000,
                            height: 50,
                            child: Center(child: Text('Notification 3'))),
                      ),
                    ],
                  ))),
            ),
            Container(
              child: Center(
                child : Text('Schedule')
              ),
            ),
            Card(
              child: Container(
                  width: 1000000000,
                  height: 100,
                  child: ListTile(
                    title: Text('Schedule 1'),
                    subtitle: Center(child: Text('00:00-00:00')),
                  )),
            ),
            Card(
              child: Container(
                  width: 1000000000,
                  height: 100,
                  child: ListTile(
                    title: Text('Schedule 2'),
                    subtitle: Center(child: Text('00:00-00:00')),
                  )),
            ),
            Card(
              child: Container(
                  width: 1000000000,
                  height: 100,
                  child: ListTile(
                    title: Text('Schedule 3'),
                    subtitle: Center(child: Text('00:00-00:00')),
                  )),
            ),
            Card(
              child: Container(
                  width: 1000000000,
                  height: 100,
                  child: ListTile(
                    title: Text('Schedule 4'),
                    subtitle: Center(child: Text('00:00-00:00')),
                  )),
            ),
            Card(
              child: Container(
                  width: 1000000000,
                  height: 100,
                  child: ListTile(
                    title: Text('Schedule 5'),
                    subtitle: Center(child: Text('00:00-00:00')),
                  )),
            ),
            Card(
              child: Container(
                  width: 1000000000,
                  height: 100,
                  child: ListTile(
                    title: Text('Schedule 6'),
                    subtitle: Center(child: Text('00:00-00:00')),
                  )),
            ),
            Card(
              child: Container(
                  width: 1000000000,
                  height: 100,
                  child: ListTile(
                    title: Text('Schedule 7'),
                    subtitle: Center(child: Text('00:00-00:00')),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class Maps extends StatelessWidget {
  // const Events({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
