import 'package:dash_board/modules/login/view/login_page.dart';
import 'package:get/get.dart';

import '../constant/app_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: AppRoute.login,
      page: () => LoginPage(),
      // middlewares: [MiddleWare()],
      transition: Transition.fade,
      // binding: TestBindings(),
      transitionDuration: const Duration(milliseconds: 700)),
// //=====================Auth=====================
//   GetPage(
//       name: AppRoute.signIn,
//       page: () => const SignIn(),
//       transition: Transition.fade,
//       transitionDuration: const Duration(milliseconds: 700)),
];
