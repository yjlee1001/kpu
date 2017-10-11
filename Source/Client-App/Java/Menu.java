package org.oroca.teleopclient;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;

public class Menu extends Activity implements OnClickListener {

    private Button buttonControl;
    private Button buttonVR;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.menu_main);

        buttonControl = (Button)findViewById(R.id.buttonCon);
        buttonVR = (Button)findViewById(R.id.buttonVr);

        buttonControl.setOnClickListener(
                new Button.OnClickListener() {
                    public void onClick(View v) {
                        Intent intent = new Intent(getApplicationContext(), teleopclient.class);
                        startActivity(intent);
                    }
                }
        );
        buttonVR.setOnClickListener(
                new Button.OnClickListener() {
                    public void onClick(View v) {
                        Toast.makeText(getApplicationContext(), "출시 예정", Toast.LENGTH_LONG).show();
                    }
                }
        );
    }

    @Override
    public void onClick(View view) {
    }
}
