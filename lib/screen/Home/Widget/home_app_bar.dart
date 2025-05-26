import 'package:flutter/material.dart';
import 'package:price_wise/constants.dart';

<<<<<<< HEAD

=======
>>>>>>> 79de6ee (Update repository with latest changes)
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor, 
            padding: const EdgeInsets.all(20),
          ),
          onPressed: (){}, 
          iconSize: 30,
          icon: Icon(Icons.notifications_outlined),
          ),
        ],
      );
  }
}
=======
    return Container(
      color: kcontentColor, 
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            'PriceWise',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black, 
            ),
          ),
        ],
      ),
    );
  }
}
>>>>>>> 79de6ee (Update repository with latest changes)
