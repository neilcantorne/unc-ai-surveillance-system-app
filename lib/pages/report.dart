

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ReportViolatorPage extends StatefulWidget {
  const ReportViolatorPage({Key? key}) : super(key: key);

  @override
  State<ReportViolatorPage> createState() => _ReportViolatorPageState();
}

class _ReportViolatorPageState extends State<ReportViolatorPage> with TickerProviderStateMixin{

  final _formKey = GlobalKey<FormState>();
  final List<String> list = <String>['Student', 'Faculty', 'Employee', 'Visitor'];
  String _typeValue = 'Student';
  bool _isLoading = false;
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _idNumber = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  void _onSubmit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);
    // Modular.to.pop();
    //
    // setState(() => _isLoading = false);
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => {
            if(Modular.to.canPop())
              Modular.to.pop()
          },
          icon: const Icon(Icons.arrow_back,color: Colors.grey),
        ),
        title: const Text('Report Violator',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
          )
        ),
        actions:  [
            Container(
              margin: const EdgeInsets.only(right: 12),
              child: const Center(
                child: Text('Dec 12, 3:00PM'),
              ),
            )
        ]
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add_a_photo,
                      color: Colors.white,
                      size: 50,
                    ),
                    SizedBox(height: 8.0),
                    Text('Upload Profile Photo', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold )),
                  ],
                )
              ),
              const SizedBox(height: 32.0),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('First Name', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextFormField(
                          validator: (value) {
                            if (!(value == null || value.isEmpty)) {
                              return null;
                            }
                            return 'This field is required';
                          },
                        controller: _firstName,
                        decoration: const InputDecoration(
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide.none
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide.none
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide.none
                            )
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Last Name', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextFormField(
                        validator: (value) {
                          if (!(value == null || value.isEmpty)) {
                            return null;
                          }
                          return 'This field is required';
                        },
                        controller: _lastName,
                        decoration: const InputDecoration(
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide.none
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide.none
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide.none
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide.none
                            )
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('I.D. Number', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextFormField(
                        validator: (value) {
                          if (!(value == null || value.isEmpty)) {
                            return null;
                          }
                          return 'This field is required';
                        },
                        controller: _idNumber,
                        decoration: const InputDecoration(

                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide.none
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide.none
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide.none
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide.none
                            )
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Type', style: TextStyle(fontWeight: FontWeight.bold)),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            borderRadius: const BorderRadius.all(Radius.circular(12.0))
                        ),
                        child: DropdownButton<String>(
                          underline: const SizedBox(),
                          icon: const Icon(Icons.arrow_drop_down),
                          alignment: Alignment.center,
                          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                          value: _typeValue,
                          elevation: 6,
                          isExpanded: true,
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              _typeValue = value!;
                            });
                          },
                          items: list.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Violation', style: TextStyle(fontWeight: FontWeight.bold)),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            borderRadius: const BorderRadius.all(Radius.circular(12.0))
                        ),
                        child: DropdownButton<String>(
                          underline: const SizedBox(),
                          icon: const Icon(Icons.arrow_drop_down),
                          alignment: Alignment.center,
                          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                          value: _typeValue,
                          elevation: 6,
                          isExpanded: true,
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              _typeValue = value!;
                            });
                          },
                          items: list.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          )
        )
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Row(
            children: [
              ElevatedButton(
                  onPressed: _isLoading ? null : () => showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Discard Changes?'),
                        actionsAlignment: MainAxisAlignment.center,
                        actionsOverflowButtonSpacing: 16.0,
                        actions: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(12.0))
                                  ),
                                  backgroundColor: Theme.of(context).backgroundColor,
                                  foregroundColor: Colors.black
                              ),
                              onPressed: () {

                              },
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text('Continue Editing'),
                              )
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Modular.to.pop();
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(12.0))
                                  )
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 32.0),
                                child: Text('Discard'),
                              )
                          )
                        ],
                      ),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0))
                      ),
                    backgroundColor: Theme.of(context).backgroundColor,
                    foregroundColor: Colors.black
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('CANCEL'),
                  )
              ),
              const SizedBox(width: 12.0),
              Expanded(
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(12.0))
                          )
                      ),
                      onPressed: _isLoading ? null : _onSubmit,
                    icon: _isLoading
                        ? Container(
                      width: 16,
                      height: 16,
                      padding: const EdgeInsets.all(2.0),
                      child: const CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 3,
                      ),
                    )
                        : const Icon(null, size: 0),
                    label: Text(_isLoading ? '' : 'REPORT VIOLATOR'),
                  )
              )
            ],
          )
      )
    );
  }
}