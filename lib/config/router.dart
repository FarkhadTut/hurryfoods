import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hurryfoods/presentation/screens/cart_screen.dart';
import 'package:hurryfoods/presentation/screens/home_screen.dart';
import 'package:hurryfoods/presentation/screens/login_screen.dart';
import 'package:hurryfoods/presentation/screens/profile_screen.dart';
import 'package:hurryfoods/presentation/screens/store_details_screen.dart';
import 'package:hurryfoods/presentation/widgets/bottom_nav_bar.dart'; // Import the BottomNavBar

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: const BottomNavBar(),
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'store/:id',
              builder: (BuildContext context, GoRouterState state) {
                final String storeId = state.pathParameters['id']!;
                return StoreDetailsScreen(storeId: storeId);
              },
            ),
          ],
        ),
        GoRoute(
          path: '/cart',
          builder: (BuildContext context, GoRouterState state) {
            return const CartScreen();
          },
        ),
        GoRoute(
          path: '/profile',
          builder: (BuildContext context, GoRouterState state) {
            return const ProfileScreen();
          },
        ),
      ],
    ),
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
  ],
);
