#!/bin/bash

viewName=$1
if [ -z "$viewName" ]; then
  echo "❌ Please provide a view name."
  exit 1
fi

filename="${viewName}_view.dart"
echo "import 'package:flutter/material.dart';

class ${viewName^}View extends StatelessWidget {
  const ${viewName^}View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('$viewName View')),
      body: const Center(child: Text('This is $viewName view')),
    );
  }
}
" > lib/view/$filename

echo "✅ $filename created in lib/view/"
