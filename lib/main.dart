import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'about.dart';
import 'songs.dart';
import 'styles.dart';
import 'package:firebase_core/firebase_core.dart';
import 'song_books.dart';
import 'providers/song_settings.dart';
import 'providers/song_book_settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => SongSettings()),
    ListenableProvider(create: (context) => SongBookSettings())
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  static const String _title = 'Believers Songbook';
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Styles.themeColor,
      ),
      debugShowCheckedModeBanner: false,
      title: _title,
      home: FutureBuilder(
        future: _fbApp,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            // print('You have an error! ${snapshot.error.toString()}');
            return const Text('Loading songbooks failed, please try again later');
          } else if (snapshot.hasData) {
            return const MyStatefulWidget();
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Songs(),
    SongBooks(),
    const AboutPage(),
  ];

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) {
      final songSettings = context.read<SongSettings>();
      songSettings.setFontSize(prefs.getDouble('fontSize') ?? 30);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedIndex: _selectedIndex,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.lyrics),
              label: 'Songs',
            ),
            NavigationDestination(
              icon: Icon(Icons.book),
              label: 'Songbooks',
            ),
            NavigationDestination(
              icon: Icon(Icons.info),
              label: 'About',
            ),
          ],
        ));
  }
}
