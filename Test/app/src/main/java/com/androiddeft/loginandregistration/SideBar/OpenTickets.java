package com.androiddeft.loginandregistration.SideBar;

import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.NavigationView;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.androiddeft.loginandregistration.Constructor.User;
import com.androiddeft.loginandregistration.LoginRegistration.Login;
import com.androiddeft.loginandregistration.Message;
import com.androiddeft.loginandregistration.R;
import com.androiddeft.loginandregistration.LoginRegistration.SessionHandler;

public class OpenTickets extends AppCompatActivity implements NavigationView.OnNavigationItemSelectedListener {

    DrawerLayout drawer;
    private SessionHandler session;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_open);
        session = new SessionHandler(getApplicationContext());
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        drawer = findViewById(R.id.drawer_layout);
        NavigationView navigationView = findViewById(R.id.nav_view);
        navigationView.setNavigationItemSelectedListener(this);

        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(this, drawer, toolbar,
                R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        drawer.addDrawerListener(toggle);
        toggle.syncState();
        Button logoutBtn = findViewById(R.id._btnlog);

        logoutBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                session.logoutUser();
                Intent i = new Intent(OpenTickets.this, Login.class);
                startActivity(i);
                finish();

            }
        });
    }

    @Override
    public void onBackPressed() {
        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        if (drawer.isDrawerOpen(GravityCompat.START)) {
            drawer.closeDrawer(GravityCompat.START);
        } else {
            super.onBackPressed();
        }
    }


    @SuppressWarnings("StatementWithEmptyBody")
    @Override
    public boolean onNavigationItemSelected(MenuItem item) {
        User user = session.getUserDetails();
        TextView username = findViewById(R.id.username);
        username.setText(user.getUsername());
        TextView email = findViewById(R.id.fullname);
        email.setText(user.getFullName());
        int id=item.getItemId();
        switch (id){

            case R.id.nav_home:
                Intent h= new Intent(OpenTickets.this, Message.class);
                startActivity(h);
                break;
            case R.id.nav_open:
                Intent g= new Intent(OpenTickets.this, OpenTickets.class);
                startActivity(g);
                break;
        }



        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        drawer.closeDrawer(GravityCompat.START);
        return true;
    }
}
