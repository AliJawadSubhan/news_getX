import 'package:flutter/material.dart';

class InternetExceptionWidget extends StatefulWidget {
  const InternetExceptionWidget({Key? key, required this.ontap}) : super(key: key);

  final void Function() ontap;

  @override
  State<InternetExceptionWidget> createState() => _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icons(Icon.confirmation_num_sharp),
          const Icon(
            Icons.cloud_off,
            size: 32,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child:
                Text('Internet Exception, Your internet is very dissapointing'),
          ),
          InkWell(
            onTap: widget.ontap,
            child: Container(
              color: Colors.blue,
              child: Text('Retry'),
              height: MediaQuery.of(context).size.height * .16,
            ),
          ),
        ],
      ),
    );
  }
}
