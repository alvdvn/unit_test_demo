package com.example.unit_test_demo

import android.app.NativeActivity
import android.content.Intent
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel


class MainActivity: FlutterActivity(){
    private val CHANNEL = "com.example.your_project/native"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            .setMethodCallHandler { call: MethodCall, result: MethodChannel.Result ->
                if (call.method == "openNativeScreen") {
                    openNativeScreen()
                    result.success(null)
                } else {
                    result.notImplemented()
                }
            }
    }

    private fun openNativeScreen() {
        val intent = Intent(this, NativeActivity::class.java)
        startActivity(intent)
    }
}
