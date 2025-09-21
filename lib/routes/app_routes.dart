import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (_) => const HomeScreen(),
    'nosotros': (_) => const NosotrosScreen(),
    'servicios': (_) => const ServiciosScreen(),
    'noticias': (_) => const NoticiasScreen(),
    'galeria': (_) => const GaleriaScreen(),
    'contacto': (_) => const ContactoScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => const HomeScreen());
  }
}
