package edu.ucsb.cs56.pconrad.springboot.hello;

import java.text.SimpleDateFormat;
import java.util.Date;

class Question {
    private String qid;
    private String title;
    private String content;
    private String askerid;
    private String timeCreate;

    public Question() {
        this.qid = null;
        this.title = null;
        this.content = null;
        this.askerid = null;
        this.timeCreate = null;
    }

    public Question(String title, String content, String askerid){
        this.title = title;
        this.content = content;
        this.askerid = askerid;
        // generate create time
        this.timeCreate = (new SimpleDateFormat("yyyy:MM:dd:HH:mm:ss")).format(new Date());
        // generate unique id
        this.qid = timeCreate + "_" + askerid;
    }

    public void setQid(String qid) { this.qid = qid; }
    public String getQid() { return this.qid; }

    public void setTitle(String title) { this.title = title; }
    public String getTitle() { return this.title; }

    public void setContent(String content) { this.content = content; }
    public String getContent() { return this.content; }

    public void setAskerid(String askerid) { this.askerid = askerid; }
    public String getAskerid() { return this.askerid; }

    public void setTimeCreate(String timeCreate) { this.timeCreate = timeCreate; }
    public String getTimeCreate() { return this.timeCreate; }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(qid: ");
        sb.append(this.qid);
        sb.append(",\n title: ");
        sb.append(this.title);
        sb.append(",\n content: ");
        sb.append(this.content);
        sb.append(",\n askerid: ");
        sb.append(this.askerid);
        sb.append(", timeCreate: ");
        sb.append(this.timeCreate);
        sb.append(")");
        return sb.toString();
    }

}
