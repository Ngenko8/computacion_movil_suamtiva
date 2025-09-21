import 'package:flutter/material.dart';
import '../widgets/app_sidebar.dart';
import '../widgets/custom_appbar.dart';

class GaleriaScreen extends StatelessWidget {
  const GaleriaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrls = [
      'https://static.wixstatic.com/media/9b636e_4ac45a5454b442c49dbce1c0197553c0~mv2.jpg/v1/fill/w_490,h_653,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/9b636e_4ac45a5454b442c49dbce1c0197553c0~mv2.jpg',
      'https://static.wixstatic.com/media/aa77e462b16b5fb036bd7426a7127ab3.jpg/v1/fill/w_490,h_306,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/aa77e462b16b5fb036bd7426a7127ab3.jpg',
      'https://static.wixstatic.com/media/nsplsh_75566b3979457036516c4d~mv2_d_3888_2592_s_4_2.jpg/v1/fill/w_620,h_375,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/Image%20by%20Philip%20Swinburn.jpg',
    ];

    return Scaffold(
      appBar: const CustomAppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text(
              'Galería',
              style: TextStyle(
                color: Color(0xFF2F6E66),
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      drawer: const AppSidebar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isNarrow = constraints.maxWidth < 600;

            if (isNarrow) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (int i = 0; i < imageUrls.length; i++) ...[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                        imageUrls[i],
                        fit: BoxFit.cover,
                      ),
                    ),
                    if (i < imageUrls.length - 1) const SizedBox(height: 12),
                  ],
                ],
              );
            }

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < imageUrls.length; i++) ...[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                        imageUrls[i],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  if (i < imageUrls.length - 1) const SizedBox(width: 12),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
