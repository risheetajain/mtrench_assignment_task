import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  List<Map<String, dynamic>> myDrawerList = [
    {
      "title": "Dashboard",
      "icon": "dashboard.png",
      "navigateTo": Container(),
      "isExpanded": false,
      "expandedWidget": []
    },
    {
      "title": "Employee Monitoring",
      "icon": "emp_mon.png",
      "navigateTo": Container(),
      "isExpanded": false,
      "expandedWidget": []
    },
    {
      "title": "Employees",
      "icon": "employee.png",
      "navigateTo": Container(),
      "isExpanded": false,
      "expandedWidget": []
    },
    {
      "title": "Team",
      "icon": "teams.png",
      "navigateTo": Container(),
      "isExpanded": false,
      "expandedWidget": []
    },
    {
      "title": "Attendance",
      "icon": "attendence.png",
      "navigateTo": Container(),
      "isExpanded": false,
      "expandedWidget": []
    },
    {
      "title": "Project Management",
      "icon": "project_mang.png",
      "navigateTo": Container(),
      "isExpanded": true,
      "expandedWidget": [
        {
          "title": "Projects",
          "icon": "project_mang.png",
          "navigateTo": Container(),
        },
        {
          "title": "Tasks",
          "icon": "project_mang.png",
          "navigateTo": Container(),
        },
        {
          "title": "My Tasks",
          "icon": "project_mang.png",
          "navigateTo": Container(),
        },
      ]
    },
    {
      "title": "Chat Room",
      "icon": "chat.png",
      "navigateTo": Container(),
      "isExpanded": false,
      "expandedWidget": []
    },
    {
      "title": "Calendar",
      "icon": "calendar.png",
      "navigateTo": Container(),
      "isExpanded": false,
      "isDivider": true,
      "expandedWidget": []
    },
    {
      "title": "Settings",
      "icon": "settings.png",
      "navigateTo": Container(),
      "isExpanded": false,
      "isDivider": false,
      "expandedWidget": []
    },
    {
      "title": "Help",
      "icon": "help.png",
      "navigateTo": Container(),
      "isExpanded": false,
      "isDivider": false,
      "expandedWidget": []
    },
    {
      "title": "Logout",
      "icon": "logout.png",
      "navigateTo": null,
      "isExpanded": false,
      "isDivider": false,
      "expandedWidget": []
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Image.asset("assets/logo.png"),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: myDrawerList.length,
              itemBuilder: (BuildContext context, int index) {
                final drawerData = myDrawerList[index];
                return drawerData["isExpanded"]
                    ? ExpansionTile(
                        title: Row(
                          children: [
                            ImageIcon(
                              AssetImage(
                                'assets/drawer/${drawerData["icon"]}',
                              ),
                              color: Colors.black,
                              size: 29,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(drawerData["title"]),
                          ],
                        ),
                        children: List.generate(
                            drawerData["expandedWidget"].length, (inx) {
                          return ListTile(
                              title: Row(
                            children: [
                              const ImageIcon(
                                AssetImage(
                                  'assets/arrow_right.png',
                                ),
                                color: Colors.black,
                                size: 29,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(drawerData["expandedWidget"][inx]["title"]),
                            ],
                          ));
                        }),
                      )
                    : Column(
                        children: [
                          ListTile(
                              title: Row(
                            children: [
                              ImageIcon(
                                AssetImage(
                                  'assets/drawer/${drawerData["icon"]}',
                                ),
                                color: Colors.black,
                                size: 29,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(drawerData["title"]),
                            ],
                          )),
                          if (drawerData["isDivider"] ?? false) const Divider()
                        ],
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
