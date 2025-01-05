import 'package:flutter/material.dart';

class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom paint Demo'),
      ),
      body: Stack(
        children: [

          ClipPath(
            clipper: BezierClipper(),
             child: Container(
               width:double.infinity,
              height: 500,
              color: Colors.amber,
                child:Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Login to your account to continue",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )),
            ),
          ),
        ],
      ),
    );
  }
}

class BezierClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    // Start at the top-left corner
    path.lineTo(0, size.height * 0.7);

    // First curve (upwards wave)
    path.quadraticBezierTo(
      size.width * 0.25, // Control point x
      size.height * 0.6, // Control point y (higher for upward wave)
      size.width * 0.5,  // Endpoint x
      size.height * 0.75, // Endpoint y
    );

    // Second curve (downwards wave)
    path.quadraticBezierTo(
      size.width * 0.75, // Control point x
      size.height * 0.9, // Control point y (lower for downward wave)
      size.width,        // Endpoint x
      size.height * 0.8, // Endpoint y
    );

    // Draw the straight line to the top-right corner
    path.lineTo(size.width, 0);

    // Close the path
    path.close();
    return path;
  }


  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
