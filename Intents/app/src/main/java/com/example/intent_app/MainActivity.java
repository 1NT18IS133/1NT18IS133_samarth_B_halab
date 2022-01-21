package com.example.intent_app;

import androidx.appcompat.app.AppCompatActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    EditText ed1,ed2;
    Button btn;
    TextView tv1;
    Intent it;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ed1=findViewById(R.id.editTextNumber);
        ed2=findViewById(R.id.editTextNumber2);
        btn=findViewById(R.id.button);
        tv1=findViewById(R.id.textView);
        it= new Intent(this,MainActivity2.class);

        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                int n1 = Integer.parseInt(ed1.getText().toString());
                int n2 = Integer.parseInt(ed2.getText().toString());
                int sum = n1 + n2;
                tv1.setText("Result is : " + sum);
                it.putExtra("res", sum + "");
                it.putExtra("m1", n1 + "");
                it.putExtra("m2", n2 + "");
                startActivity(it);
            }
        });

    }
}