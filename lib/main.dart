import 'package:flutter/material.dart';
import 'package:layouts/pages/detail_page.dart';
import 'package:layouts/providers/pokemons_provider.dart';
// import 'package:layouts/routes.dart';
import 'package:layouts/widgets/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider(create: (context) => PokemonRepository(),),
          ChangeNotifierProvider<PokemonRepository>(create: (context) => PokemonRepository())
        ],
        child: MaterialApp(
          color: Colors.white,
          title: 'Pokedex',
          theme: ThemeData(
            primarySwatch: Colors.red,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => HomePage(title: 'Pokedex'),
            DetailPage.routeName: (context) => DetailPage(title: '',)
          }
          // home: HomePage(title: 'Pokedex'),
          // navigatorKey: Routes.sailor.navigatorKey,
          // onGenerateRoute: Routes.sailor.generator(),
        )
    );
  }
}