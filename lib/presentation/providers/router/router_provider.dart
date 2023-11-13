import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/presentation/pages/pick_place_page/pick_place_page.dart';

part 'router_provider.g.dart';

@Riverpod(keepAlive: true)
Raw<GoRouter> router(RouterRef ref) => GoRouter(
      routes: [
        GoRoute(
          path: '/pick-place-page',
          name: 'pick-place-page',
          builder: (context, state) => const PickPlacePage(),
        )
      ],
      initialLocation: '/pick-place-page',
      debugLogDiagnostics: false,
    );
