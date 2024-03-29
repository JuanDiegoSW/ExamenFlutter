/****
 - Cesar Acjota Merma
 - Andre Guevara Layme
 - Nicole Puma Zapata
 - Romulo Huaman Cusi
 - Juan Lazaro Mayta
****/

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:componentes/src/pages/alert_page.dart';


 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings ){

        print( 'Ruta llamda: ${ settings.name }' );

        return MaterialPageRoute(
          builder: ( BuildContext context ) => AlertPage()
        );
      },
    );
    
  }
}