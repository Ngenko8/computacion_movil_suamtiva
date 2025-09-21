import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required Color backgroundColor, required int elevation, required Row title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: true,
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
                fit: BoxFit.contain,
              ),
            ),
          ),

          const Spacer(),
          const Icon(Icons.person_outline, size: 22, color: Color(0xFF2F6E66)),
          const SizedBox(width: 6),
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
