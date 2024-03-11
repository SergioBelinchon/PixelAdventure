import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pixeladventure/src/pixel_adventure.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

   await Flame.device.fullScreen();
   await Flame.device.setLandscape();

  PixelAdventure game = PixelAdventure();
  runApp(GameWidget(game: kDebugMode? PixelAdventure() : game), 
  );
}


