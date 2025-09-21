import 'package:flutter/material.dart';

class AppSidebar extends StatelessWidget {
  const AppSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'MENÚ',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
            const Divider(),
            _item(context, 'Inicio', 'home'),
            _item(context, 'Nosotros', 'nosotros'),
            _item(context, 'Servicios', 'servicios'),
            _item(context, 'Noticias', 'noticias'),
            _item(context, 'Galería', 'galeria'),
            const Divider(),
            _item(context, 'Contacto', 'contacto'),
          ],
        ),
      ),
    );
  }

  ListTile _item(BuildContext context, String label, String route) {
    return ListTile(
      title: Text(label),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushReplacementNamed(context, route);
      },
    );
  }
}
