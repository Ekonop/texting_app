import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class ChatItemWidget extends StatelessWidget {
  final String profileImage;
  final VoidCallback? onTapProfile;

  const ChatItemWidget({Key? key, required this.profileImage, this.onTapProfile})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: CustomImageView(
              className: "profileImage",
              onTap: onTapProfile,
              imagePath: profileImage,
              height: 95.h,
              width: 95.h,
              radius: BorderRadius.circular(8.h),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 6.h,
                    margin: EdgeInsets.only(bottom: 3.h),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF3A08,
                      borderRadius: BorderRadius.circular(12.h),
                    ),
                  ),
                  Container(
                    height: 4.h,
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF3A08,
                      borderRadius: BorderRadius.circular(12.h),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
