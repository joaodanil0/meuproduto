package com.userLedAidlJava;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class UserLedAidlBroadcastReceiver extends BroadcastReceiver {
    private static final String TAG = "UserLedAidlBroadcastReceiver";

    @Override
    public void onReceive(Context context, Intent intent) {

        String scalingGovernor = intent.getStringExtra("setMode");

        if(scalingGovernor != null) {

            try {

                if(UserLedAidlServices.getCpuAJ().setMode(scalingGovernor)) {
                    Log.d(TAG, "Succesfuly setScalingGovernor(" + scalingGovernor + ")");
                } 
                else {
                    Log.e(TAG, "Failed calling setScalingGovernor(" + scalingGovernor + ")");
                }
            }
            catch (android.os.RemoteException e) {
                Log.e(TAG, "ITest error", e);
            
            }
           
        }
    }
}