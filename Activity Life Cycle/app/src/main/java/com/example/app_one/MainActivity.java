package com.example.app_one;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity
{

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        TextView msg = (TextView) findViewById(R.id.textbox1);
        msg.setText("Activity is Created");
        Toast.makeText(getApplicationContext(),"Activity has been Created",Toast.LENGTH_SHORT).show();
    }

    @Override
    protected void onStart() {
        Toast.makeText(getApplicationContext(), "Activity has Started", Toast.LENGTH_SHORT).show();
        super.onStart();
    }
    @Override
    protected void onResume() {
        Toast.makeText(getApplicationContext(),"Activity is being Resumed",Toast.LENGTH_SHORT).show();
        super.onResume();
    }
    @Override
    protected void onPause() {
        Toast.makeText(getApplicationContext(),"Activity Paused",Toast.LENGTH_SHORT).show();
        super.onPause();
    }
    @Override
    protected void onStop() {
        Toast.makeText(getApplicationContext(),"Activity Stopped",Toast.LENGTH_SHORT).show();
        super.onStop();
    }
    @Override
    protected void onRestart() {
        super.onRestart();
        Toast.makeText(getApplicationContext(),"Activity Restarted",Toast.LENGTH_SHORT).show();
    }
    @Override
    protected void onDestroy() {
        super.onDestroy();
        Toast.makeText(getApplicationContext(),"Activity Destroy",Toast.LENGTH_SHORT).show();
    }
}