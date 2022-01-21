package com.example.calculator;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {
    boolean isNewOp = true;
    String oldNumber,op;
    EditText ed1;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        ed1 = findViewById(R.id.editText);

    }
    public void numberEvent(View view)
    {
        if(isNewOp)
            ed1.setText("");
        isNewOp = false ;
        String number = ed1.getText().toString();
        switch (view.getId())
        {
            case R.id.buttoone:
                number += "1";
                break;
            case R.id.buttotwo:
                number += "2";
                break;
            case R.id.buttothree:
                number += "3";
                break;
            case R.id.buttofour:
                number += "4";
                break;
            case R.id.buttofive:
                number += "5";
                break;
            case R.id.buttosix:
                number += "6";
                break;
            case R.id.buttoseven:
                number += "7";
                break;
            case R.id.buttoeight:
                number += "8";
                break;
            case R.id.buttonine:
                number += "9";
                break;
            case R.id.buttozero:
                number += "0";
                break;
            case R.id.buttodot:
                number += ".";
                break;
            case R.id.buttopandm:
                number = "-"+number;
                break;
        }
        ed1.setText(number);
    }
    public void operatorEvent(View view)
    {
        isNewOp = true;
        oldNumber = ed1.getText().toString();
        switch (view.getId())
        {
            case R.id.buttodiv: op = "/"; break;
            case R.id.buttomul: op = "*"; break;
            case R.id.buttoplus: op = "+"; break;
            case R.id.buttominus: op = "-"; break;
        }
    }
    public void equalEvent(View view) {
        String newnumber = ed1.getText().toString();
        double result =0.0;
        switch(op)
        {
            case "+":
                result = Double.parseDouble(oldNumber) + Double.parseDouble(newnumber);
                break;
            case "-":
                result = Double.parseDouble(oldNumber) - Double.parseDouble(newnumber);
                break;
            case "*":
                result = Double.parseDouble(oldNumber) * Double.parseDouble(newnumber);
                break;
            case "/":
                result = Double.parseDouble(oldNumber) / Double.parseDouble(newnumber);
                break;
        }
        ed1.setText(result+"");
    }
    public void acEvent(View view)
    {
        ed1.setText("0");
        isNewOp = true;
    }
    public void percentEvent(View view)
    {
        double no =Double.parseDouble(ed1.getText().toString())/100;
        ed1.setText(no+"");
        isNewOp = true;
    }
}