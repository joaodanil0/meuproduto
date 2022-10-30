package com.userLedAidlJava;

import android.app.Application;
import android.util.Log;
import android.content.IntentFilter;
import android.os.ServiceManager;
import android.os.IBinder;

public class UserLedAidlServices extends Application {
    private static final String TAG = "UserLedAidlServices";

    private static final String ICPU_AIDL_INTERFACE = "placamae.hal.userled.IUserLed/default";

    UserLedAidlBroadcastReceiver UserLedAidlBroadcastReceiver = new UserLedAidlBroadcastReceiver();
    
    private static placamae.hal.userled.IUserLed cpuAJ; // AIDL Java Proxy

    public void onCreate() {
        super.onCreate();

        Log.d(TAG, "onCreate()");

        IBinder binder = ServiceManager.getService(ICPU_AIDL_INTERFACE);

        if (binder == null) {
            Log.e(TAG, "Getting " + ICPU_AIDL_INTERFACE + " service daemon binder failed");
        } 
        else {
            cpuAJ = placamae.hal.userled.IUserLed.Stub.asInterface(binder);
            
            if (cpuAJ == null) {
                Log.e(TAG, "Getting ICpu Aidl daemon interface failed");
            } 
        }

        IntentFilter filter = new IntentFilter("com.fooHIDL.fooHIDL");
        registerReceiver(UserLedAidlBroadcastReceiver, filter);
    }

    public void onTerminate() {
        super.onTerminate();
        Log.d(TAG, "Terminated");
    }

    // AIDL Java Proxy
    public static placamae.hal.userled.IUserLed getCpuAJ() {
        return cpuAJ;
    }
}