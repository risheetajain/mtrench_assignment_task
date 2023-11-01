import 'package:flutter/material.dart';
import 'package:mtrench_assignment_task/decoations/colors.dart';
import 'package:mtrench_assignment_task/decoations/input__deco.dart';

import '../decoations/borders.dart';

class Widgets {
  static Widget outLineButton() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
          borderRadius: borderRadius6, border: Border.all(color: baseColor)),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ImageIcon(
            AssetImage(
              "assets/add_circle.png",
            ),
            color: baseColor,
            size: 29,
          ),
          const SizedBox.shrink(),
          Text(
            " Add to Task",
            style: midTitle.copyWith(color: baseColor),
          ),
        ],
      ),
    );
  }

  static Widget progressTitle() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
          borderRadius: borderRadius6, border: Border.all(color: baseColor)),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ImageIcon(
            AssetImage("assets/prog_line.png"),
            color: purpleColor,size: 28,
          ),
          const SizedBox.shrink(),
          Text(
            " To-Do-Tasks",
            style: midTitle.copyWith(color: baseColor,fontSize: 28),
          ),
        ],
      ),
    );
  }
}
