import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_demo/controller/couter_controller.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //data field
  //method
  void _handleRemove() => Get.find<CounterController>().decrease();
  void _handleAdd() => Get.find<CounterController>().increase();
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: _handleRemove,
              child: Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: _handleAdd,
              child: Icon(Icons.add),
            ),
          ],
        ),
      );

  AppBar _buildAppBar() => AppBar(title: Text('AppBar Title'));

  Widget _buildBody() {
    return Center(
      child: GetBuilder<CounterController>(
        init: CounterController(),
        builder: (_) => Text('${_.counter}'),
      ),
    );
  }

  ///end
}
