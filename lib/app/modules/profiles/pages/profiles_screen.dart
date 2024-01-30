import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';
import 'package:image_picker/image_picker.dart';

class ProfilesScreen extends StatefulWidget {
  const ProfilesScreen({super.key});

  @override
  State<ProfilesScreen> createState() => _ProfilesScreenState();
}

class _ProfilesScreenState extends State<ProfilesScreen> {
  XFile? pickedImage;

  Future<void> openGallery() async {
    final picker = ImagePicker();
    final images = await picker.pickMedia(
      requestFullMetadata: false,
      imageQuality: 100,
    );

    if (images != null) {
      setState(() {
        pickedImage = images;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: AppColors.tealGreen,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Profile"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Center(
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      showDragHandle: true,
                      context: context,
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      builder: (_) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 32, left: 16, right: 16),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(15),
                                child: Row(
                                  children: [
                                    Text(
                                      'Profile Photo',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.delete,
                                      size: 24,
                                      color: AppColors.grey,
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: AppColors.grey,
                                              width: 1,
                                            )),
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.camera_alt,
                                            color: AppColors.tealGreen,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      const Text("Camera")
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          openGallery();
                                        },
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: AppColors.grey,
                                                width: 1,
                                              )),
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.photo,
                                              color: AppColors.tealGreen,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      const Text("Gallery")
                                    ],
                                  ),
                                  const SizedBox(width: 15),
                                  Column(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: AppColors.grey,
                                              width: 1,
                                            )),
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.face,
                                            color: AppColors.tealGreen,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      const Text("Avatar")
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      });
                },
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 100,
                      backgroundColor: AppColors.blueGrey.shade100,
                      backgroundImage: pickedImage == null
                          ? null
                          : FileImage(File(pickedImage!.path)),
                      child: pickedImage == null
                          ? Icon(
                              Icons.person,
                              size: 140,
                              color: AppColors.blueGrey.shade300,
                            )
                          : null,
                    ),
                    const Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          backgroundColor: AppColors.tealGreen,
                          radius: 30,
                          child: Icon(
                            Icons.photo_camera,
                            size: 30,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListTile(
              leading: Icon(
                Icons.person,
                size: 24,
                color: AppColors.blueGrey.withOpacity(0.6),
              ),
              title: Text(
                "About",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.grey.shade600,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "adinda syalsabilla",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "This is not your username or pin. This name will be visible to your WhatsApp contacts.",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.grey.shade600,
                    ),
                  ),
                ],
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mode,
                    color: AppColors.tealGreen,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListTile(
              leading: Icon(
                Icons.info,
                size: 24,
                color: AppColors.blueGrey.withOpacity(0.6),
              ),
              title: Text(
                "About",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.grey.shade600,
                ),
              ),
              subtitle: const Text(
                "Battery about to die",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mode,
                    color: AppColors.tealGreen,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListTile(
              leading: Icon(
                Icons.call,
                size: 24,
                color: AppColors.blueGrey.withOpacity(0.6),
              ),
              title: Text(
                "Phone",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.grey.shade600,
                ),
              ),
              subtitle: const Text(
                "+62 823-8615-1016",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
