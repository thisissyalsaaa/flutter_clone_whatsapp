import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const ListTile(
                leading:
                    Icon(Icons.archive, color: AppColors.tealGreen, size: 30),
                title: Text(
                  "Archived",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: AppColors.grey.shade200,
                  radius: 32,
                  backgroundImage: const AssetImage('assets/images/ed.jpg'),
                ),
                title: const Text('Bobiii',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    )),
                subtitle: const Text('Mowning Uiiii'),
                trailing: const Column(
                  children: [
                    Text(
                      '11.52',
                      style: TextStyle(
                        color: AppColors.green,
                        fontSize: 14,
                      ),
                    ),
                    Badge(
                      largeSize: 20,
                      smallSize: 20,
                      backgroundColor: AppColors.green,
                      label: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: AppColors.grey.shade200,
                  radius: 32,
                  backgroundImage:
                      const AssetImage('assets/images/charlie.jpg'),
                ),
                title: const Text('Fajrian',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    )),
                subtitle: const Text('Allooo Dun'),
                trailing: const Column(
                  children: [
                    Text(
                      '11.52',
                      style: TextStyle(
                        color: AppColors.green,
                        fontSize: 14,
                      ),
                    ),
                    Badge(
                      largeSize: 20,
                      smallSize: 20,
                      backgroundColor: AppColors.green,
                      label: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: AppColors.grey.shade200,
                  radius: 32,
                  backgroundImage: const AssetImage('assets/images/shawn.jpg'),
                ),
                title: const Text('Putra',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    )),
                subtitle: const Text('Mangatt Uiii'),
                trailing: const Column(
                  children: [
                    Text(
                      '11.52',
                      style: TextStyle(
                        color: AppColors.green,
                        fontSize: 14,
                      ),
                    ),
                    Badge(
                      largeSize: 20,
                      smallSize: 20,
                      backgroundColor: AppColors.green,
                      label: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: AppColors.grey.shade200,
                  radius: 32,
                  backgroundImage: const AssetImage('assets/images/bruno.jpg'),
                ),
                title: const Text('Rian',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    )),
                subtitle: const Text('kelazzzz'),
                trailing: const Column(
                  children: [
                    Text(
                      '11.52',
                      style: TextStyle(
                        color: AppColors.green,
                        fontSize: 14,
                      ),
                    ),
                    Badge(
                      largeSize: 20,
                      smallSize: 20,
                      backgroundColor: AppColors.green,
                      label: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
