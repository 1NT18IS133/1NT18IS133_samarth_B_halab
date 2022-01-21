package com.example.intent_app;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity2 extends AppCompatActivity {
    Intent it;
    TextView tv;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);
        it=getIntent();
        tv=findViewById(R.id.textView2);
        String sum = it.getStringExtra("res");
        String n1 = it.getStringExtra("m1");
        String n2 = it.getStringExtra("m2");
        tv.setText(n1+" + "+n2  +" = "+ sum);
    }
}