import 'package:jaspr/jaspr.dart';

class Project {
  const Project({
    required this.title,
    required this.description,
    required this.image,
    required this.tags,
    required this.url,
    required this.number,
  });

  final String title;
  final String description;
  final String image;
  final List<String> tags;
  final String url;
  final String number;
}

const projects = [
  Project(
    title: 'AskGPT',
    description:
        'A conversational assistant built around the OpenAI API, designed to make useful answers feel one tap away.',
    image: 'assets/projects/askgpt.png',
    tags: ['Flutter', 'OpenAI API'],
    url: 'https://github.com/CodeK254/Flutter-ChatGPT-App',
    number: '01',
  ),
  Project(
    title: 'Notepad',
    description:
        'A focused notes and todo experience with search, authentication and a thoughtful dark mode.',
    image: 'assets/projects/notepad.png',
    tags: ['Flutter', 'Firebase', 'UX'],
    url: 'https://github.com/CodeK254/Notepad-Flutter-App',
    number: '02',
  ),
  Project(
    title: 'Pick & Drop',
    description:
        'A location-aware delivery concept connecting practical workflows with a simple mobile experience.',
    image: 'assets/projects/pick_drop.png',
    tags: ['Dart', 'Maps', 'Product'],
    url: 'https://github.com/CodeK254',
    number: '03',
  ),
  Project(
    title: "Farmer's Survey",
    description:
        'A field-focused tool exploring how technology can make data collection more useful for local teams.',
    image: 'assets/projects/farmers.png',
    tags: ['Flutter', 'Research'],
    url: 'https://github.com/CodeK254',
    number: '04',
  ),
];

class Experience {
  const Experience({
    required this.period,
    required this.role,
    required this.organization,
    required this.description,
    required this.tags,
  });

  final String period;
  final String role;
  final String organization;
  final String description;
  final List<String> tags;
}

const experience = [
  Experience(
    period: 'Dec 2025 - Present',
    role: 'Software developer',
    organization: 'ReTrade Marketplace · Nairobi, Kenya',
    description:
        'Contributing to a Flutter product that brings together authentication, marketplace workflows and connected backend services. I work across the mobile experience and supporting systems, turning product requirements into reliable features and helping keep the platform maintainable as it grows.',
    tags: ['Flutter', 'Product', 'Golang', 'Backend', 'APIs', 'MySQL', 'VPS'],
  ),
  Experience(
    period: 'Dec 2024 - September 2026',
    role: 'Software developer',
    organization: 'Volane International · Karen, Kenya',
    description:
        'Building and supporting digital products across Android and iOS, from implementation through store release. My work combines mobile engineering, product thinking and practical delivery, with attention to the details that make an app dependable for the people using it.',
    tags: ['Software', 'Mobile', 'Android', 'iOS', 'AppStore & PlayStore', 'Product'],
  ),
  Experience(
    period: 'May 2023 — Sep 2023',
    role: 'IT support attaché · Nairobi, Kenya',
    organization: 'LAPSSET Corridor Development Authority · Nairobi',
    description:
        'Supported the IT team with day-to-day technical assistance, troubleshooting and systems support. The attachment strengthened my foundation in practical IT operations, structured problem solving and the communication needed to help people work effectively with technology.',
    tags: ['IT support', 'Systems', 'Troubleshooting'],
  ),
];

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) => div(
        classes: 'site-shell',
        [
          header(
            id: 'top',
            classes: 'site-nav container',
            [
              a(href: '#top', classes: 'brand', [
                span(classes: 'brand-mark', [text('TK')]),
                span([text('Titus Kariuki')]),
              ]),
              nav([
                a(href: '#work', [text('Work')]),
                a(href: '#experience', [text('Experience')]),
                a(href: '#about', [text('About')]),
                a(href: '#contact', [text('Contact')]),
              ]),
              a(
                href: 'assets/Titus Kariuki Kinyanjui - CV.pdf',
                classes: 'nav-cta',
                attributes: {'download': 'Titus Kariuki Kinyanjui - CV.pdf'},
                [text('Résumé'), span(classes: 'arrow', [text('↗')])],
              ),
            ],
          ),
          main_([
            section(
              id: 'about',
              classes: 'hero container',
              [
                div(classes: 'hero-copy', [
                  p(classes: 'hero-name', [text('Titus Kariuki')]),
                  p(classes: 'eyebrow section-kicker', [text('Nairobi, Kenya · Available for work')]),
                  h1([
                    text('Building useful'),
                    br(),
                    span(classes: 'accent-text', [text('digital products.')]),
                  ]),
                  p(
                    classes: 'hero-intro',
                    [
                      text(
                        'I’m Titus, a full-stack developer who turns thoughtful ideas into reliable, human-centred experiences.',
                      ),
                    ],
                  ),
                  div(classes: 'hero-actions', [
                    a(href: '#work', classes: 'button button-primary', [
                      text('See selected work'),
                      span(classes: 'arrow', [text('↘')]),
                    ]),
                    a(href: '#contact', classes: 'button button-quiet', [
                      text('Let’s talk'),
                    ]),
                  ]),
                ]),
                div(classes: 'hero-orbit', [
                  div(classes: 'orbit orbit-one', []),
                  div(classes: 'orbit orbit-two', []),
                  div(classes: 'hero-card', [
                    span(classes: 'card-kicker', [text('Currently exploring')]),
                    strong([text('Dart · Flutter · Jaspr')]),
                    p([text('Crafting fast, expressive web experiences.')]),
                    span(classes: 'status-dot', [text('Open to new opportunities')]),
                  ]),
                ]),
              ],
            ),
            section(classes: 'ticker', [
              div(classes: 'container ticker-inner', [
                span([text('01 / Selected work')]),
                span([text('02 / What I do')]),
                span([text('03 / The human behind the code')]),
              ]),
            ]),
            section(id: 'work', classes: 'section container', [
              div(classes: 'section-heading', [
                div([
                  p(classes: 'eyebrow section-kicker', [text('A few things I’ve made')]),
                  h2([text('Selected work')]),
                ]),
                p(classes: 'section-note', [
                  text('Small, useful products with room to grow.'),
                ]),
              ]),
              div(
                classes: 'project-grid',
                projects.map((project) => ProjectCard(project: project)).toList(),
              ),
            ]),
            section(id: 'services', classes: 'section section-services', [
              div(classes: 'container', [
                div(classes: 'section-heading', [
                  div([
                    p(classes: 'eyebrow section-kicker', [text('From first sketch to shipped product')]),
                    h2([text('What I do')]),
                  ]),
                ]),
                div(classes: 'service-grid', [
                  ServiceItem(
                    number: '01',
                    title: 'Product development',
                    description:
                        'Cross-platform apps and responsive web experiences built around real user needs.',
                  ),
                  ServiceItem(
                    number: '02',
                    title: 'Backend & APIs',
                    description:
                        'Clear, dependable services with PHP, Laravel, databases and thoughtful integrations.',
                  ),
                  ServiceItem(
                    number: '03',
                    title: 'Creative problem solving',
                    description:
                        'I enjoy the messy middle: shaping a direction, simplifying complexity and making it work.',
                  ),
                ]),
              ]),
            ]),
            section(id: 'experience', classes: 'section experience-section container', [
              div(classes: 'section-heading', [
                div([
                  p(classes: 'eyebrow section-kicker', [text('Where I’ve been learning and building')]),
                  h2([text('Experience')]),
                ]),
                p(classes: 'section-note', [
                  text('A practical path through support, apps and freelance work.'),
                ]),
              ]),
              div(
                classes: 'experience-list',
                experience
                    .map((item) => ExperienceItem(experience: item))
                    .toList(),
              ),
              div(classes: 'experience-footer', [
                div([
                  span(classes: 'service-number', [text('EDUCATION')]),
                  strong([text('BSc. Computer Science')]),
                  span([text('Karatina University · 2020 — 2024')]),
                ]),
                div([
                  span(classes: 'service-number', [text('HIGHLIGHT')]),
                  strong([text('Africa’s Talking mini summit')]),
                  span([text('First position · Hackathon competition')]),
                ]),
                div([
                  span(classes: 'service-number', [text('HIGHLIGHT')]),
                  strong([text('KAPS Inter-University hackathon')]),
                  span([text('Second best in the IOT & Embedded Systems category')]),
                ]),
                div([
                  span(classes: 'service-number', [text('SPEAKING')]),
                  strong([text('FlutterCok Kenya Conference')]),
                  span([
                    text(
                      'Third annual conference · Speaker on “Beyond the API Call: On-Device AI in Flutter with LiteRT and Offline-First Architecture”',
                    ),
                  ]),
                ]),
              ]),
            ]),
            section(classes: 'section about-section container', [
              div(classes: 'about-quote', [
                span(classes: 'quote-mark', [text('“')]),
                p([
                  text(
                    'Technology should feel like a bridge, not a barrier. I care about the details that make a product feel clear, useful and worth coming back to.',
                  ),
                ]),
              ]),
              div(classes: 'about-details', [
                p(classes: 'eyebrow', [text('The human behind the code')]),
                p([
                  text(
                    'My work sits at the intersection of engineering and curiosity. From mobile products to Arduino experiments, I’m always learning, testing and looking for a better way to solve the next problem.',
                  ),
                ]),
                a(href: 'https://github.com/CodeK254', classes: 'text-link', [
                  text('Explore GitHub '),
                  span([text('↗')]),
                ]),
              ]),
            ]),
            section(id: 'contact', classes: 'contact-section', [
              div(classes: 'container contact-inner', [
                p(classes: 'eyebrow', [text('Have a project in mind?')]),
                h2([text('Let’s make it real.')]),
                p([
                  text(
                    'I’m always happy to hear about ambitious ideas, interesting problems and meaningful work.',
                  ),
                ]),
                a(
                  href: 'mailto:codekarma1003@gmail.com',
                  classes: 'email-link',
                  [text('codekarma1003@gmail.com'), span([text('↗')])],
                ),
              ]),
            ]),
          ]),
          footer(classes: 'site-footer container', [
            span([text('© 2026 Titus Kariuki')]),
            span([text('Designed & built with Dart')]),
            div(classes: 'footer-links', [
              a(href: 'https://github.com/CodeK254', [text('GitHub')]),
              a(href: 'https://www.linkedin.com/in/titus-kariuki-b69a79218/', [
                text('LinkedIn'),
              ]),
            ]),
          ]),
        ],
      );
}

class ProjectCard extends StatelessComponent {
  const ProjectCard({required this.project, super.key});

  final Project project;

  @override
  Component build(BuildContext context) => article(classes: 'project-card', [
        div(classes: 'project-image', [
          img(src: project.image, alt: '${project.title} project preview'),
          span(classes: 'project-number', [text(project.number)]),
          a(href: project.url, classes: 'project-link', [
            text('View project '),
            span([text('↗')]),
          ]),
        ]),
        div(classes: 'project-content', [
          h3([text(project.title)]),
          p([text(project.description)]),
          div(
            classes: 'tags',
            project.tags.map((tag) => span([text(tag)])).toList(),
          ),
        ]),
      ]);
}

class ServiceItem extends StatelessComponent {
  const ServiceItem({
    required this.number,
    required this.title,
    required this.description,
    super.key,
  });

  final String number;
  final String title;
  final String description;

  @override
  Component build(BuildContext context) => article(classes: 'service-item', [
        span(classes: 'service-number', [text(number)]),
        h3([text(title)]),
        p([text(description)]),
      ]);
}

class ExperienceItem extends StatelessComponent {
  const ExperienceItem({required this.experience, super.key});

  final Experience experience;

  @override
  Component build(BuildContext context) => article(classes: 'experience-item', [
        div(classes: 'experience-period', [text(experience.period)]),
        div(classes: 'experience-main', [
          h3([text(experience.role)]),
          strong([text(experience.organization)]),
          p([text(experience.description)]),
          div(
            classes: 'tags',
            experience.tags.map((tag) => span([text(tag)])).toList(),
          ),
        ]),
      ]);
}
