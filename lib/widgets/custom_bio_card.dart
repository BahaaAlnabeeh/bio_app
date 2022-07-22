import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBioCard extends StatelessWidget {
  const CustomBioCard({
    Key? key,
    required IconData leadingIcon,
    required String title,
    required String subTitle,
    required IconData trailingIcon,
    double marginBottom = 0,
  })  : _leadingIcon = leadingIcon,
        _title = title,
        _subTitle = subTitle,
        _trailingIcon = trailingIcon,
        _marginBottom = marginBottom,
        super(key: key);

  final IconData _leadingIcon;
  final String _title;
  final String _subTitle;
  final IconData _trailingIcon;
  final double _marginBottom;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: _marginBottom),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(_leadingIcon),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _title,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  _subTitle,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(_trailingIcon),
            ),
          ],
        ),
      ),
    );
  }
}
