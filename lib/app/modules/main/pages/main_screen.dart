import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';
import 'package:flutter_clone_whatsapp/app/modules/calls/pages/calls_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/calls/widgets/calls_floating_widget.dart';
import 'package:flutter_clone_whatsapp/app/modules/calls/widgets/calls_popmenu_widget.dart';
import 'package:flutter_clone_whatsapp/app/modules/chats/pages/chats_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/chats/widgets/chats_floating_widget.dart';
import 'package:flutter_clone_whatsapp/app/modules/chats/widgets/chats_popmenu_widget.dart';
import 'package:flutter_clone_whatsapp/app/modules/community/pages/community_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/community/widgets/community_popmenu_widget.dart';
import 'package:flutter_clone_whatsapp/app/modules/main/controllers/main_controllers.dart';
import 'package:flutter_clone_whatsapp/app/modules/updates/pages/updates_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/updates/widgets/updates_floating_widget.dart';
import 'package:flutter_clone_whatsapp/app/modules/updates/widgets/updates_popmenu_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  MainControllers controllers = MainControllers();

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: controllers.currentIndex,
    );

    tabController.addListener(() {
      setState(() {
        controllers.setCurrentIndex(tabController.index);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: setFloatingWidget(),
      body: SafeArea(
        bottom: false,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverAppBar(
                elevation: 0,
                pinned: controllers.currentIndex != 1,
                backgroundColor: AppColors.tealGreen,
                title: const Text('WhatsApp'),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.camera.path);
                      },
                      icon: const Icon(Icons.camera_alt)),
                  if (controllers.currentIndex != 0)
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.search)),
                  setPopMenuWidget(),
                ],
              ),
              SliverAppBar(
                pinned: true,
                elevation: 0,
                toolbarHeight: 48,
                backgroundColor: AppColors.tealGreen,
                flexibleSpace: TabBar(
                  controller: tabController,
                  labelStyle: const TextStyle(color: Colors.white),
                  onTap: (index) {
                    setState(() {
                      controllers.setCurrentIndex(index);
                    });
                  },
                  unselectedLabelStyle:
                      const TextStyle(color: AppColors.tealDarkGreen),
                  dividerColor: Colors.white,
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Tab(icon: Icon(Icons.group, size: 24)),
                    Tab(text: 'Chats'),
                    Tab(text: 'Updates'),
                    Tab(text: 'Calls'),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: tabController,
            children: const [
              CommunityScreen(),
              ChatsScreen(),
              UpdatesScreen(),
              CallScreen(),
            ],
          ),
        ),
      ),
    );
  }

  Widget? setFloatingWidget() {
    switch (tabController.index) {
      case 0:
        return null;
      case 1:
        return const ChatsFloatingWidget();
      case 2:
        return const UpdatesFloatingWidget();
      case 3:
        return const CallsFloatingWidget();
      default:
        return null;
    }
  }

  Widget setPopMenuWidget() {
    switch (tabController.index) {
      case 0:
        return const CommunityPopMenuWidget();
      case 1:
        return const ChatsPopMenuWidget();
      case 2:
        return const UpdatesPopMenuWidget();
      case 3:
        return const CallsPopMenuWidget();
      default:
        return const SizedBox.shrink();
    }
  }
}
