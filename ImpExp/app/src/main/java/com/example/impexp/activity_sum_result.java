package com.example.impexp;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;
import android.widget.Toast;

public class activity_sum_result extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sum_result);

        Bundle b1 = getIntent().getExtras();

        String myName = b1.getString("Name");
        String myAddress = b1.getString("Address");

        TextView tv = findViewById(R.id.resultView);
        tv.setText(myName);
        Toast.makeText(this, myAddress, Toast.LENGTH_SHORT).show();
    }
}