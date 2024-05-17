import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget{
  const CommonAppbar({super.key,this.actions,this.leading,this.title,this.isCenteredTitle = false,this.leadingWidth});
  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;
  final bool isCenteredTitle;
  final double? leadingWidth;

  @override
  Widget build(BuildContext context) {
    return AppBar(
     forceMaterialTransparency: true,
      leadingWidth: leadingWidth,
      leading: leading,
      title: title,
      centerTitle: isCenteredTitle,
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
