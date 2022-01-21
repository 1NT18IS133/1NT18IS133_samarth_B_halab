package com.example.dialerapp;

import android.content.Intent;
import android.net.Uri ;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import androidx.appcompat.app.AppCompatActivity;


public class MainActivity extends AppCompatActivity
{
    EditText Tex1;
    Button caller;
    Intent it;
    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Tex1=findViewById(R.id.Phno);
        caller=findViewById(R.id.Click);
        caller.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View view)
            {
                String num = Tex1.getText().toString();
                it =new Intent(Intent.ACTION_DIAL);
                it.setData(Uri.parse("tel:" +num));
                startActivity(it);
            }
        });
    }
}