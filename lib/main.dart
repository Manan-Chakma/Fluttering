import 'package:flutter/material.dart';
import 'package:test_flutter_application/routing/route_generator.dart';
import 'package:test_flutter_application/widgets/standingsui/standings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
/*      routes: {
        '/standings': (_) => StandingsUi(data: 'Hello from Home Page')
      },*/
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline4,
            ),
            RaisedButton(
              child: Text('Go to Second UI'),
              onPressed: () {
                //gotoSecondUi(); // this is the basic routing
                //gotoSecondUiUsingNamedRoute(); // named routing
                gotoSecondUiUsingGenerator(); // using generator
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // basic one
  gotoSecondUi() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>
            StandingsUi(
              data: 'Hello from first page',
            )));
  }

  // named routing
  void gotoSecondUiUsingNamedRoute() {
    Navigator.of(context).pushNamed('/standings');
  }

  void gotoSecondUiUsingGenerator() {
    Navigator.of(context).pushNamed('/standings', arguments: 'Hello there from first page');
  }
}
// 1. Basic Route
// 2. Named Route
// 3. onGenerateRoutes