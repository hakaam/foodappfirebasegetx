import 'package:flutter/material.dart';

import '../constant/constant_text_style.dart';
class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 36, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hai',
                style: ConstantTextStyle.stylePoppins(fontSize: 16),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Esater Huward',
                style: ConstantTextStyle.stylePoppins(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Colors.red,
                    size: 22,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Jakarta Indeonesia',
                    style: ConstantTextStyle.stylePoppins(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
          ClipOval(
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
