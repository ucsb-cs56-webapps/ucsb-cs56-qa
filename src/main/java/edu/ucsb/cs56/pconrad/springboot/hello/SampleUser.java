package edu.ucsb.cs56.pconrad.springboot.hello;


public class SampleUser {
    public String name;
    public String birthday;

    public SampleUser(String name, String birthday) {
        this.name = name;
        this.birthday = birthday;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[Name: ");
        sb.append(this.name);
        sb.append(", Date: ");
        sb.append(this.birthday);
        sb.append("]");
        return sb.toString();
    }

}
