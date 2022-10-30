package com.userLedAidlJava;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class CpuActivity extends Activity {
    private TextView javaAIDLRetTV;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cpu);

        javaAIDLRetTV = findViewById(R.id.javaAIDLRetTV);
    }

    @Override
    protected void onResume() {
        super.onResume();
    }


    public void onClick(View view) {
        String setValue = ((Button)view).getText().toString();

        try {
            setSuccess(javaAIDLRetTV, UserLedAidlServices.getCpuAJ().setMode(setValue));
        } 
        catch (android.os.RemoteException e) {
            Log.e("CpuActivity", "cpu AIDL Java proxy returned error", e);
        }
    }

    private void setValue(TextView textValue, String value){
        textValue.setText(value);
        textValue.setTextColor(getColor(R.color.darkGray));
    }

    private void setSuccess(TextView textValue, boolean success){
        if (success) {
            textValue.setText("Success");
            textValue.setTextColor(getColor(R.color.success));
        } else {
            textValue.setText("Error");
            textValue.setTextColor(getColor(R.color.error));
        }
    }
}