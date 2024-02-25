import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_extensions.dart';

class MenuAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MenuAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.colors.primary,
      title: Text(
        title,
        style: context.texts.header.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}