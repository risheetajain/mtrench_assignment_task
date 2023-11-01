import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtrench_assignment_task/decoations/borders.dart';
import 'package:mtrench_assignment_task/decoations/colors.dart';
import 'package:mtrench_assignment_task/decoations/input__deco.dart';
import 'package:mtrench_assignment_task/screens/drawer.dart';

import 'widgets/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List tasksList = [
    {
      "title": "Labels",
      "icon": "labels.png",
      "description": "Website Design",
    },
    {
      "title": "Assignee",
      "icon": "assignee.png",
      "description": "August 25, 2023",
    },
    {
      "title": "Timeline",
      "icon": "timeline.png",
      "description": "Website Design",
    },
    {
      "title": "Status",
      "icon": "status.png",
      "description": "InProgress",
    },
  ];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Tasks",
                  style: largeTitle,
                ),
                const Text(
                  "Tue, Jan 02, 2023",
                  style: midTitle,
                ),
                const Text(
                  "Website Development",
                  style: largeTitle,
                ),
                DataTable(
                    columns: [
                      const DataColumn(
                          label: ImageIcon(
                              AssetImage(
                                "assets/labels.png",
                              ),
                              size: 30,
                              color: Colors.white)),
                      DataColumn(
                          label: Text(
                        "Label",
                        style: midTitle.copyWith(color: Colors.white),
                      )),
                      const DataColumn(
                          label: Text(
                        "",
                        style: midTitle,
                      ))
                    ],
                    rows: List.generate(
                        tasksList.length,
                        (index) => DataRow(cells: [
                              DataCell(ImageIcon(
                                  AssetImage(
                                    tasksList[index]["icon"],
                                  ),
                                  size: 30,
                                  color: blueGrey)),
                              DataCell(Text(
                                tasksList[index]["title"],
                                style: midTitle.copyWith(color: blueGrey),
                              )),
                              DataCell(Text(
                                tasksList[index]["description"],
                                style: midTitle,
                              ))
                            ]))),
                const Text(
                  "Description",
                  style: midTitle,
                ),
                Text(
                  "Website design research involves gathering insights about the target audience's preferences and behavior. It also includes analyzing competitors to identify industry trends and best practices. The aim is to create a user-friendly and visually appealing website that meets users' needs and stands out in the market.",
                  style: midTitle.copyWith(color: blueGrey),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      "Attachments",
                      style: midTitle,
                    ),
                    ImageIcon(
                      AssetImage("assets/attach_file.png"),
                      size: 30,
                    )
                  ],
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: borderRadius6,
                      side: outlineButtonBorderSide),
                  color: Colors.white,
                  child: Card(
                    margin: const EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: borderRadius6,
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/docs.png",
                            height: 25,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            "Document.doc",
                            style: midTitle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Divider(),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: borderRadius6,
                      side: outlineButtonBorderSide),
                  surfaceTintColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/prog_line.png",
                          height: 25,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          "In - Progress",
                          style: textStyle28,
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                    surfaceTintColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: borderRadius6,
                        side: outlineButtonBorderSide),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Interview",
                                style: midTitle,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const ImageIcon(
                                      AssetImage("assets/edit.png"))),
                            ],
                          ),
                          const Text(
                              "Research for website design involves understanding the target audience through user research and analyzing competitors to create user-centered and competitive websites.")
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 22,
                ),
                Widgets.outLineButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
