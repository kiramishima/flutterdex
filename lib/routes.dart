import 'package:layouts/widgets/home_page.dart';
import 'package:sailor/sailor.dart';

class Routes {
  static final sailor = Sailor();

  static void createRoutes() {
    sailor.addRoute(SailorRoute(
      name: "/{}/detail",
      builder: (context, args, params) {
        return HomePage();
      },
    ));
  }
}