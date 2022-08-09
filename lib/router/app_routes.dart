import 'package:flutter/material.dart';

import '../models/menu_option.dart';
import '../screens/screen.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    // TODO: borrar home
    //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview1', name: 'Listview tipo 1', screen: const Listview1Screen(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'Listview tipo 2', screen: const Listview2Screen(), icon: Icons.list_alt),
    MenuOption(route: 'alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'card', name: 'Tarjetas - card', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'avatar', name: 'Circle Avatar - card', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_arrow),
    MenuOption(route: 'inputs', name: 'Inputs Screens', screen: const InputsScreen(), icon: Icons.input_outlined),
    MenuOption(route: 'slider', name: 'Sliders && Checks', screen: const SliderScreen(), icon: Icons.slow_motion_video_rounded),
    MenuOption(route: 'listviewbuilder', name: 'InfiniteScroll & Pull to refresh', screen: const ListViewBuilder(), icon: Icons.build_circle_outlined),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home' : (BuildContext context) => const HomeScreen()});
      for (final option in menuOptions) {
        appRoutes.addAll({
          option.route: (BuildContext context) => option.screen
        });
      }
    return appRoutes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };*/

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
        builder: (context) => const AlertScreen(),
    );
  }


}