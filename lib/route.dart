import 'package:go_router/go_router.dart';
import 'package:statistique/Page1.dart';
import 'package:statistique/Page2.dart';

GoRouter goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Page1(),
    ),
    GoRoute(
      path: '/Page2',
      builder: (context, state) => const Page2(),
    ),
  ],
);
