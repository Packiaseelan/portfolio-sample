import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sample/config/app_theme.dart';
import 'package:sample/utils/get_size.dart';

class IconButtonWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final Function onPressed;

  const IconButtonWidget({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = getSize(context);
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ClayContainer(
        color: Theme.of(context).colorScheme.background,
        width: size.width * 0.35,
        borderRadius: 20,
        child: RawMaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () => onPressed(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClayContainer(
                borderRadius: 20,
                emboss: true,
                color: Theme.of(context).colorScheme.background,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: SvgPicture.asset(
                    iconPath,
                    width: 15,
                    color: AppTheme.primaryTextColor,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
