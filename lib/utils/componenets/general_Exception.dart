import 'package:flutter/material.dart';

class ExceptionWidget extends StatefulWidget {
  const ExceptionWidget({Key? key, required this.ontap}) : super(key: key);

  final void Function() ontap;

  @override
  State<ExceptionWidget> createState() => _ExceptionWidgetState();
}

class _ExceptionWidgetState extends State<ExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icons(Icon.confirmation_num_sharp),
          const Icon(
            Icons.not_interested,
            size: 32,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Unable to proceed request, Please try again'),
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
