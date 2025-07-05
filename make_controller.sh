#!/bin/bash

controllerName=$1
if [ -z "$controllerName" ]; then
  echo "❌ Please provide a controller name."
  exit 1
fi

filename="${controllerName}_controller.dart"
echo "import 'package:get/get.dart';

class ${controllerName^}Controller extends GetxController {
  // TODO: Add controller logic
}
" > lib/controller/$filename

echo "✅ $filename created in lib/controller/"
