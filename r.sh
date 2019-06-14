#!/bin/bash

./gradlew assembleDebug
adb uninstall io.voxhub.accessibility.servicecode
sleep 1
adb install ./service/build/outputs/apk/service-debug.apk
sleep 1
adb uninstall jp.naist.ahclab.kaldigstreamerclient
sleep 1
adb install ./app/build/outputs/apk/app-debug.apk
sleep 1
adb shell am start -n jp.naist.ahclab.kaldigstreamerclient/jp.naist.ahclab.kaldigstreamerclient.SimpleActivity

# adb shell am start -n io.voxhub.accessibility.servicecode/io.voxhub.accessibility.servicecode.MyAccessibilityService
