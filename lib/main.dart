import 'package:dw_fwc_album/app/core/config/env/env.dart';
import 'package:dw_fwc_album/app/fwc_album_app.dart';
import 'package:flutter/material.dart';

void main() async {
  await Env.instance.load();
  runApp(FwcAlbumApp());
}
