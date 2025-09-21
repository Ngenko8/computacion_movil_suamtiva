import 'package:flutter/material.dart';
import '../widgets/app_sidebar.dart';
import '../widgets/custom_appbar.dart';

class NosotrosScreen extends StatelessWidget {
  const NosotrosScreen({super.key});

  static const brandGreen = Color(0xFF2F6E66);
  static const bgAmber = Color(0xFFF9A825);

  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: bgAmber,
              padding: const EdgeInsets.fromLTRB(16, 28, 16, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'NOSOTROS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: brandGreen,
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(height: 8),
                  _GreenBar(),
                  SizedBox(height: 20),
                  Text(
                    'Somos un grupo de profesionales con\n'
                    'amplia experiencia y reconocida\n'
                    'trayectoria en el diseño e\n'
                    'implementación en sistemas de riego\n'
                    'tecnificado.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: brandGreen,
                      fontSize: 16,
                      height: 1.6,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Nos distinguimos por tener\n'
                    'relaciones de largo plazo con\n'
                    'nuestros clientes, ofreciendo\n'
                    'soluciones integrales y\n'
                    'personalizadas.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: brandGreen,
                      fontSize: 16,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),

            Image.network(
              'https://static.wixstatic.com/media/9b636e_721b71c8699b4e99ae59108ab5dd8002~mv2.jpeg/v1/fill/w_980,h_653,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/9b636e_721b71c8699b4e99ae59108ab5dd8002~mv2.jpeg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 220,
            ),
          ],
        ),
      ),
    );
  }
}

class _GreenBar extends StatelessWidget {
  const _GreenBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 4,
      decoration: BoxDecoration(
        color: NosotrosScreen.brandGreen,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
