import 'package:flutter/material.dart';

class lifecycletest extends StatefulWidget {
  const lifecycletest({super.key});

  @override
  State<lifecycletest> createState() => _lifecycletestState();
}

class _lifecycletestState extends State<lifecycletest> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('From init state 2');
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    print('Dispose from page 2');
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
