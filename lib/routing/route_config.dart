

import 'package:go_router/go_router.dart';
import 'package:mypayments/routing/routes.dart';
import 'package:mypayments/utils/widgets/app.dart';
import 'package:mypayments/views/acount_sucess_view.dart';
import 'package:mypayments/views/dash_board_view.dart';
import 'package:mypayments/views/forget_password_view.dart';
import 'package:mypayments/views/landing_screen_view.dart';
import 'package:mypayments/views/login_screen_view.dart';
import 'package:mypayments/views/signup_screen_view.dart';

class RouteConfigs {
  static final GoRouter goRouter =
      GoRouter(navigatorKey: AppContext.navigatorState, routes: <RouteBase>[
    GoRoute(
      path: Routes.splash,
      builder: (context, state) {
        return const DashBoardView();
      },
    )
  ]);
}
