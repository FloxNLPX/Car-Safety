package com.androiddeft.loginandregistration.Constructor;

public class Product {
    private String tixstatus;
    private String membershipid;
    private String regno;
    private String vmodel;


    public Product(String tixstatus, String membershipid, String regno, String vmodel)
    {
        this.tixstatus = tixstatus;
        this.membershipid = membershipid;
        this.regno = regno;
        this.vmodel = vmodel;
    }

    public String gettixstatus() {
        return tixstatus;
    }

    public String getmembershipid() {
        return membershipid;
    }

    public String getregno() {
        return regno;
    }

    public String getvmodel() {
        return vmodel;
    }

}