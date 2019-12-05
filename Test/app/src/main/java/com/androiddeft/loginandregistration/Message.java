package com.androiddeft.loginandregistration;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.NavigationView;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.androiddeft.loginandregistration.Constructor.User;
import com.androiddeft.loginandregistration.LoginRegistration.Login;
import com.androiddeft.loginandregistration.LoginRegistration.SessionHandler;
import com.androiddeft.loginandregistration.SideBar.OpenTickets;
import com.squareup.picasso.Picasso;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class Message extends AppCompatActivity implements NavigationView.OnNavigationItemSelectedListener {

    private SessionHandler session;
    DrawerLayout drawer;

    private static final String URL_PRODUCTS = "http://flox6375.000webhostapp.com/Api.php";
    List<Product> productList;
    RecyclerView recyclerView;
    ImageView imageView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_message);
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

        recyclerView = findViewById(R.id.recylcerView);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        productList = new ArrayList<>();
        loadProducts();
        Button logoutBtn = findViewById(R.id._btnlog);
        logoutBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                session.logoutUser();
                Intent i = new Intent(Message.this, Login.class);
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
                Intent h= new Intent(Message.this, Message.class);
                startActivity(h);
                break;
            case R.id.nav_open:
                Intent c= new Intent(Message.this, OpenTickets.class);
                startActivity(c);
                break;
        }
        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        drawer.closeDrawer(GravityCompat.START);
        return true;
    }
    private void loadProducts() {

        StringRequest stringRequest = new StringRequest(Request.Method.GET, URL_PRODUCTS,
                new Response.Listener<String>() {
                    @SuppressLint("WrongViewCast")
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONArray array = new JSONArray(response);
                            for (int i = 0; i < array.length(); i++) {
                                JSONObject product = array.getJSONObject(i);
                                productList.add(new Product(

                                        product.getString("Title"),
                                        product.getString("Raiting"),
                                        product.getString("Distance"),
                                        product.getString("Info"),
                                        product.getString("Phone")
                                ));
                            }
                            ProductsAdapter adapter = new ProductsAdapter(Message.this, productList);
                            recyclerView.setAdapter(adapter);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {

                    }
                });
        Volley.newRequestQueue(this).add(stringRequest);
    }
}
