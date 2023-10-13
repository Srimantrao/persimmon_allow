// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Location_permission extends StatefulWidget {
  const Location_permission({super.key});

  @override
  State<Location_permission> createState() => _Location_permissionState();
}

class _Location_permissionState extends State<Location_permission> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      var states = await Permission.location.request();
      if (states.isGranted) {

      } else if (states.isDenied) {
        Map<Permission, PermissionStatus> states =
            await [Permission.location].request();
      }
      else{
        openAppSettings();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: const Center(
          child: Text('Hello'),
        ),
      ),
    );
  }
}
