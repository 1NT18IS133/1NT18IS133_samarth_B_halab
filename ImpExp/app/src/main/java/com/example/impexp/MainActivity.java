package com.example.impexp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Intent result = new Intent(this, activity_sum_result.class);
        Intent callIntent = new Intent(Intent.ACTION_DIAL);

        EditText phoneNum = findViewById(R.id.phno);

        Button call = findViewById(R.id.call);
        call.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String number = phoneNum.getText().toString();

                callIntent.setData(Uri.parse("tel:" + number));
                startActivity(callIntent);
            }
        });

        Button btn1 = findViewById(R.id.btn);
        btn1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                Bundle b1 = new Bundle();
                b1.putString("Name", "Keerthi");
                b1.putString("Address", "Kampanahalli");

                result.putExtras(b1);
                startActivity(result);
            }
        });


    }
}