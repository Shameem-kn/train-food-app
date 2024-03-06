import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final Color? color;
  final Widget? child;
  final double? borderWidth;

  const CustomContainer({
    super.key,
    required this.width,
    required this.height,
    required this.radius,
    this.color,
    this.child,
    this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius.r),
        border: (borderWidth == null)
            ? null
            : Border.all(
                width: borderWidth!,
              ),
      ),
      child: child,
    );
  }
}

// Container customContainer({
//   required double width,
//   required double height,
//   required double radius,
//   Color? color,
//   required Widget? child,
//   double? borderWidth,
// }) {
//   return Container(
//     width: width,
//     height: height,
//     decoration: BoxDecoration(
//       color: color,
//       borderRadius: BorderRadius.circular(radius.r),
//       border: (borderWidth == null)
//           ? null
//           : Border.all(
//               width: borderWidth,
//             ),
//     ),
//     child: child,
//   );
// }
