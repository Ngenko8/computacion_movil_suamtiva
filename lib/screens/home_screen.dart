import 'package:flutter/material.dart';
import '../widgets/app_sidebar.dart';
import '../widgets/testimonials_slide.dart';
import '../widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppSidebar(),
      appBar:  CustomAppBar(
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

            // Imagen de la casa
            Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.network(
                  'https://static.wixstatic.com/media/9b636e_042498657ed04119a43bcc3016b3bcff~mv2.png/v1/fill/w_290,h_150,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/%C3%8Dcono.png',
                  height: 40,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            const Spacer(),

            // Icono persona
            const Icon(
              Icons.person_outline,
              size: 22,
              color: Color(0xFF2F6E66),
            ),
            const SizedBox(width: 6),

            // Texto Intranet
            const Text(
              'Intranet',
              style: TextStyle(
                color: Color(0xFF2F6E66),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'https://static.wixstatic.com/media/9b636e_bb199db332f24a5faef2e006e8cf43bf~mv2.jpg/v1/fill/w_600,h_300,al_c,q_85,enc_auto/9b636e_bb199db332f24a5faef2e006e8cf43bf~mv2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: const Color(0xFFF9A825),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SOLUCIONES DE RIEGO TECNIFICADO',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(
                        0xFF2F6E66,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Somos partners de nuestros clientes en proyectos de riego tecnificado, '
                    'con enfoque técnico y agronómico.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(
                        0xFF2F6E66,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            const TestimonialsSlide(),
            const SizedBox(height: 16),

            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, 'contacto'),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFF2F6E66)),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  foregroundColor: const Color(0xFF2F6E66),
                ),
                child: const Text('Contáctanos'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
