#!/bin/bash

# Input: Project name
echo "Enter your Flutter project name:"
read projectName

# Step 1: Create Flutter project
flutter create $projectName

cd $projectName

# Step 2: Create custom folder structure inside lib/
cd lib

mkdir core
mkdir controller
mkdir view
mkdir widgets
mkdir model
mkdir route
mkdir services
mkdir utils
mkdir bindings

# Optional: Create base files in each folder
echo "class AppBinding {}" > bindings/app_binding.dart
echo "class AppController {}" > controller/app_controller.dart
echo "class AppModel {}" > model/app_model.dart
echo "class ApiService {}" > services/api_service.dart
echo "class AppRoute {}" > route/app_route.dart
echo "class AppUtils {}" > utils/app_utils.dart
echo "class CustomWidget {}" > widgets/custom_widget.dart
echo "class HomeView {}" > view/home_view.dart

# Done
echo "✅ Flutter project '$projectName' created with custom structure!"
echo "dependencies:\n  get:" >> pubspec.yaml

