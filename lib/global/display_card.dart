import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DisplayCard extends StatelessWidget {
  String? titleText;
  final String image;
  DisplayCard({super.key, this.titleText, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 141.w,
      height: 141.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: (titleText != null)
          ? Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 122,
                height: 36,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    titleText!,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          : null,
    );
  }
}
