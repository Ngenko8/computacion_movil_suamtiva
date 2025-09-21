import 'package:flutter/material.dart';

class TestimonialsSlide extends StatelessWidget {
  const TestimonialsSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final testimonials = [
      {
        'text':
            'Recomiendo Casas Viejas porque siempre han dado una rápida respuesta a nuestras solicitudes. El trato es muy cercano y profesional, destacando por su conocimiento en terreno de las inquietudes que se proponen, para mejoras o proyectos nuevos. Siempre están preocupados por obtener la información técnica de los equipos, catálogos, curvas y topografías.',
        'author': 'Osvaldo Elizondo Zúñiga / Agromarchigüe',
      },
      {
        'text':
            'Recomiendo a Casas Viejas por su profesionalismo, seriedad y capacidad técnica. Llevamos años trabajando juntos y la experiencia ha sido muy positiva. Los primeros proyectos siguen funcionando tal como se diseñaron, con una comunicación fluida y oportuna para nuevos requerimientos.\n\nCasas Viejas nos da confianza, tanto en su equipo como en la fiabilidad en que se diseña tal como se requieren los proyectos.',
        'author': 'Juan Pablo Vicente / Agrícola Victoria, Rodario',
      },
      {
        'text':
            'Trabajo hace muchos años con Casas Viejas, lo que para mí se traduce en continuidad y confianza. Es una empresa joven, liderada por personas con vasta experiencia en proyectos de riego.',
        'author': 'Eduardo Alfaro / Agrícola Portezuelo, Los Andes',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'QUÉ DICEN NUESTROS CLIENTES',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 200,
          child: PageView.builder(
            itemCount: testimonials.length,
            itemBuilder: (context, index) {
              final item = testimonials[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Text(
                            item['text']!,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        item['author']!,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
