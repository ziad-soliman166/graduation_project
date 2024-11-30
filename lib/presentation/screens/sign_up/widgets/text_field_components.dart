import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpComponents extends StatelessWidget {
  const SignUpComponents({
    super.key,
    required this.text,
    this.icon,
    this.assetIcon,
  });

  final String text; // Text label
  final IconData? icon; // Material Icon
  final String? assetIcon; // Custom Asset Icon

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (icon != null) // Use Icon widget for Material Icons
          Icon(
            icon,
            size: 20,
          ),
        if (assetIcon != null) // Use ImageIcon widget for Asset Icons
          ImageIcon(
            AssetImage(assetIcon!),
            size: 20,
          ),
        SizedBox(width: 10.w),
        Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
