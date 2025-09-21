import 'package:flutter/material.dart';
import '../widgets/app_sidebar.dart';
import '../widgets/custom_appbar.dart';

class ContactoScreen extends StatelessWidget {
  const ContactoScreen({super.key});


  static const brandGreen = Color(0xFF2F6E66);
  static const bgAmber = Color(0xFFF9A825);
  static const underlineRed = Color(0xFFE57373);

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
                child: Image.asset(
                  'assets/images/casa_logo.png',
                  height: 40,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: const AppSidebar(),


      body: Container(
        width: double.infinity,
        color: bgAmber,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              const Text(
                'Si tienes alguna duda o quieres cotizar alguno de nuestros servicios, '
                'llena el formulario a continuación.',
                style: TextStyle(color: brandGreen, fontSize: 14, height: 1.4),
              ),
              const SizedBox(height: 24),


              const Text(
                'Nombre *',
                style: TextStyle(color: brandGreen, fontSize: 16),
              ),
              const Divider(color: brandGreen, thickness: 2),
              const SizedBox(height: 20),

              const Text(
                'Apellido *',
                style: TextStyle(color: brandGreen, fontSize: 16),
              ),
              const Divider(color: brandGreen, thickness: 2),
              const SizedBox(height: 20),

              const Text(
                'Email *',
                style: TextStyle(color: brandGreen, fontSize: 16),
              ),
              const Divider(color: brandGreen, thickness: 2),
              const SizedBox(height: 20),

              const Text(
                'Teléfono',
                style: TextStyle(color: brandGreen, fontSize: 16),
              ),
              const Divider(color: brandGreen, thickness: 2),
              const SizedBox(height: 20),

              const Text(
                'Motivo del contacto *',
                style: TextStyle(color: brandGreen, fontWeight: FontWeight.w600),
              ),
              const ListTile(
                dense: true,
                leading: Icon(Icons.circle_outlined, color: brandGreen),
                title: Text('Cotización', style: TextStyle(color: brandGreen)),
              ),
              const ListTile(
                dense: true,
                leading: Icon(Icons.circle_outlined, color: brandGreen),
                title: Text('Consulta', style: TextStyle(color: brandGreen)),
              ),
              const SizedBox(height: 20),

              const Text(
                'Mensaje *',
                style: TextStyle(color: brandGreen, fontWeight: FontWeight.w600),
              ),
              const Divider(color: brandGreen, thickness: 2),
              const SizedBox(height: 24),


              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: brandGreen,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {
  Navigator.pushNamedAndRemoveUntil(context, 'home', (route) => false);
},

                  child: const Text('Enviar'),
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
