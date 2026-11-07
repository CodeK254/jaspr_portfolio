import 'package:jaspr/server.dart';

import 'app.dart';

void main() {
  Jaspr.initializeApp();
  runApp(
    Document(
      title: 'Titus Kariuki | Full-stack developer',
      base: const String.fromEnvironment(
        'BASE_PATH',
        defaultValue: '/',
      ),
      viewport: 'width=device-width, initial-scale=1',
      meta: {
        'description':
            'Portfolio of Titus Kariuki, a full-stack developer building useful digital products with Dart, Flutter, PHP and Laravel.',
        'theme-color': '#080b12',
      },
      head: [
        link(rel: 'preconnect', href: 'https://fonts.googleapis.com'),
        link(rel: 'preconnect', href: 'https://fonts.gstatic.com'),
        link(
          rel: 'stylesheet',
          href:
              'https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&display=swap',
        ),
        link(rel: 'stylesheet', href: 'styles.css'),
        script(defer: true, src: 'main.dart.js'),
      ],
      body: App(),
    ),
  );
}
