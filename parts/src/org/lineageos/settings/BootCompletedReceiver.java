/*
 * Copyright (C) 2015 The CyanogenMod Project
 *               2017-2020 The LineageOS Project
 * Copyright (C) 2023 Paranoid Android
 *
 * SPDX-License-Identifier: Apache-2.0
 */

package org.lineageos.settings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

import org.lineageos.settings.camera.NfcCameraService;
import org.lineageos.settings.display.ColorService;
import org.lineageos.settings.thermal.ThermalUtils;

public class BootCompletedReceiver extends BroadcastReceiver {

    private static final boolean DEBUG = false;
    private static final String TAG = "XiaomiParts";

    @Override
    public void onReceive(final Context context, Intent intent) {
        if (!intent.getAction().equals(Intent.ACTION_BOOT_COMPLETED)) return;
        if (DEBUG) Log.d(TAG, "Received boot completed intent");

        // Thermal Profiles
        ThermalUtils.startService(context);

        // DisplayFeature
        ColorService.startService(context);

        // NFC
        NfcCameraService.startService(context);
    }
}
