package com.example.list_view;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;


public class MainActivity extends AppCompatActivity {
    String name[] ={"Sheldon","Leonard","Howard","Rajesh","Penny","Bernadatte","Amy","Chandler","Ross","Joey","Monica","Rachel","Phoebe"};
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ListView List;
        List = findViewById(R.id.listt);
        ArrayAdapter<String> arrayAdapter = new ArrayAdapter<>(this,R.layout.activity_textview_layout,name);
        List.setAdapter(arrayAdapter);

        List.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                Toast.makeText(MainActivity.this,""+adapterView.getItemAtPosition(i),Toast.LENGTH_SHORT).show();
            }
        });

    }
}