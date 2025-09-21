import 'package:flutter/material.dart';
import 'package:prueba_sumativa_jam/widgets/custom_appbar.dart';
import '../widgets/app_sidebar.dart';

class NoticiasScreen extends StatelessWidget {
  const NoticiasScreen({super.key});

  static const brandGreen = Color(0xFF2F6E66);
  static const bgAmber = Color(0xFFF9A825);
  static const accentOrange = Color(0xFFF57C00);

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
                alignment: Alignment.centerRight,
                child: Image.network(
                  'https://www.casasviejas.cl/wp-content/uploads/2020/11/cropped-Logo-Casas-Viejas-1.png',
                  height: 40,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: const AppSidebar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              color: bgAmber,
              padding: const EdgeInsets.fromLTRB(16, 28, 16, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'NOTICIAS',
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
                    'Entérate de las últimas novedades\n'
                    'sobre nuestra empresa, la industria y\n'
                    'nuestros clientes',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: brandGreen,
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),
            Image.network(
              'https://static.wixstatic.com/media/nsplsh_75566b3979457036516c4d~mv2_d_3888_2592_s_4_2.jpg/v1/fill/w_1240,h_750,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/Image%20by%20Philip%20Swinburn.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 220,
            ),

            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                '¿Necesitas asesorías legales en derechos de aguas?',
                style: TextStyle(
                  color: accentOrange,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Casas Viejas suma un nuevo servicio para sus clientes: '
                'asesorías de abogados especialistas en Derecho de Aguas.',
                style: TextStyle(color: brandGreen, fontSize: 15, height: 1.5),
              ),
            ),

            const SizedBox(height: 24),
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
        color: NoticiasScreen.brandGreen,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
