import 'package:apna_ai_app/app_constant/image_constant.dart';
import 'package:apna_ai_app/common/widgets/image_widget/circular_image.dart';
import 'package:apna_ai_app/utils/constraints/colors.dart';
import 'package:flutter/material.dart';

class WUserProfileTile extends StatelessWidget {
  const WUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: WCircularImage(image: ImageConstant.user),
      title: Text(
        "Waleed Ahmed Khan",
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: WColors.white),
      ),
      subtitle: Text(
        "waleedk1599@gmail.com",
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: WColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.edit,
          color: WColors.white,
        ),
      ),
    );
  }
}
