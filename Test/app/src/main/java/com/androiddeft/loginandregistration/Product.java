package com.androiddeft.loginandregistration;

import android.media.Image;

public class Product {
    //private String Photo;
    private String Title;
    private String Raiting;
    private String Distance;
    private String Info;
    private String Phone;
    private Image Photo;


    public Product(String Title, String Raiting, String Distance, String Info,String Phone)
    {
        //this.Photo = Photo;
        this.Title = Title;
        this.Raiting = Raiting;
        this.Distance = Distance;
        this.Info = Info;
        this.Phone = Phone;
    }

    //public Image getPhoto(){return Photo;}

    public String getTitle() {
        return Title;
    }

    public String getRaiting() {
        return Raiting;
    }

    public String getDistance() {
        return Distance;
    }

    public String getInfo() { return Info;}

    public String getPhone() { return Phone;}
    }