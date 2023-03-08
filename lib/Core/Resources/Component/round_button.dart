import 'package:flutter/material.dart';

import '../color/app_color.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
      {this.buttoncolor = AppColor.coolColor,
      this.textcolor = AppColor.whiteColor,
      required this.title,
      required this.onPres,
      this.width = 60,
      this.height = 50,
      this.loading = false,
      super.key});
  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPres;
  final Color textcolor, buttoncolor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPres,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: buttoncolor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: loading
              ? const Center(child: CircularProgressIndicator())
              : Center(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                )),
    );
  }
}
