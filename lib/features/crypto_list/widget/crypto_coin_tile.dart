
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GryptoCoinTile extends StatelessWidget {
  const GryptoCoinTile({
    Key? key,
    required this.coinName,
  }) : super ( key: key) ;

  final String coinName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: SvgPicture.asset(
        'assets/svg/Bitcoin.svg',
        height: 25,
        width: 25,
      ),
      title: Text(
        coinName,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        '20000\$',
        style: theme.textTheme.labelSmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/coin',
          arguments: coinName,
        );
      },
    );
  }
}