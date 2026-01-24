import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pinterest_clone/features/home/presentation/screens/home_screen.dart';
import 'package:pinterest_clone/widgets/shell_scaffold.dart';
import 'package:pinterest_clone/features/search/presentation/screens/search_screen.dart';
import 'package:pinterest_clone/features/home/presentation/screens/create_screen.dart';
import 'package:pinterest_clone/features/inbox/presentation/screens/inbox_screen.dart';
import 'package:pinterest_clone/features/profile/presentation/screens/profile_screen.dart';
import 'package:pinterest_clone/utils/create_bottom_sheet.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/home',
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          int index = 0;

          if (state.uri.path.startsWith('/search')) index = 1;
          if (state.uri.path.startsWith('/create')) index = 2;
          if (state.uri.path.startsWith('/inbox')) index = 3;
          if (state.uri.path.startsWith('/profile')) index = 4;

          return ShellScaffold(
            index: index,
            onTap: (i) {
              switch (i) {
                case 0:
                  context.go('/home');
                  break;
                case 1:
                  context.go('/search');
                  break;
                case 2:
                  showCreateBottomSheet(context);
                  break;
                case 3:
                  context.go('/inbox');
                  break;
                case 4:
                  context.go('/profile');
                  break;
              }
            },
            child: child,
          );
        },
        routes: [
          GoRoute(path: '/home', builder: (_, __) => const HomeScreen()),
          GoRoute(path: '/search', builder: (_, __) => const SearchScreen()),
          GoRoute(path: '/create', builder: (_, __) => const CreateScreen()),
          GoRoute(path: '/inbox', builder: (_, __) => const InboxScreen()),
          GoRoute(path: '/profile', builder: (_, __) => const ProfileScreen()),
        ],
      ),
    ],
  );
});
