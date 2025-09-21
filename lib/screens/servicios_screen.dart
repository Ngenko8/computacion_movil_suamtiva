import 'package:flutter/material.dart';
import '../widgets/app_sidebar.dart';
import '../widgets/custom_appbar.dart';

class ServiciosScreen extends StatelessWidget {
  const ServiciosScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final items = const [
      (
        Icons.water,
        'Soluciones de riego agrícola',
        'Diseño hidráulico y montaje de proyectos.',
      ),
      (
        Icons.ac_unit,
        'Control de heladas',
        'Sistemas de mojamiento sobre canopia y alta eficiencia.',
      ),
      (
        Icons.swap_horiz,
        'Conducciones de agua',
        'Impulsiones, uso domiciliario y APR.',
      ),
      (
        Icons.science_outlined,
        'Tratamiento de agua',
        'Plantas con alta tecnología y uso eficiente.',
      ),
      (
        Icons.design_services,
        'Diseño e ingeniería',
        'Planos, memoria de cálculo y cubicaciones.',
      ),
    ];

    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'CASAS',
                    style: TextStyle(
                      color: Color(0xFF2F6E66),
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'VIEJAS',
                    style: TextStyle(
                      color: Color(0xFF2F6E66),
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Ingeniería en Riego',
                    style: TextStyle(
                      color: Color(0xFF2F6E66),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 8),
            Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.network(
                  'https://static.wixstatic.com/media/9b636e_042498657ed04119a43bcc3016b3bcff~mv2.png/v1/fill/w_290,h_150,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/%C3%8Dcono.png',
                  height: 40,
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: const AppSidebar(),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (_, i) => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(items[i].$1, size: 28),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    items[i].$2,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  Text(items[i].$3),
                ],
              ),
            ),
          ],
        ),
        separatorBuilder: (_, __) => const Divider(height: 24),
        itemCount: items.length,
      ),
    );
  }
}
