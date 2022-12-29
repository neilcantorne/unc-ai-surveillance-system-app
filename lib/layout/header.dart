
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderAppBar extends AppBar {
  HeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) => AppBar(
    elevation: 0,
    title: IconButton(
      onPressed: () => {},
      icon: const Icon(Icons.adb,color: Colors.white),
      style: IconButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.grey,
          shape: const CircleBorder()
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: Row(
          children: [
            IconButton(
              iconSize: 30,
              onPressed: () => {},
              icon: const Icon(Icons.notifications, color: Colors.grey),
              style: IconButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder()
              ),
            ),
            // IconButton(
            //   onPressed: () => {},
            //   icon: const Icon(Icons.person, color: Colors.white),
            //   style: IconButton.styleFrom(
            //     padding: EdgeInsets.zero,
            //     backgroundColor: Colors.grey,
            //     shape: const CircleBorder(),
            //   ),
            // ),
            PopupMenuButton(
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  const PopupMenuItem(
                    child: Text('Item 1'),
                  ),
                  const PopupMenuItem(
                    child: Text('Item 2'),
                  ),
                  const PopupMenuItem(
                    child: Text('Item 3'),
                  ),
                  const PopupMenuItem(
                    child: Text('Item 4'),
                  ),
                ]
            )
          ],
        ),
      )
    ],
  );
}