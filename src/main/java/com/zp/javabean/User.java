package com.zp.javabean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
    private String username;
    private String password;
    private String reader;
    private String header;
    private String cellphone;
    private String email;
    private String describe;
    private boolean sex;
    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public User(String username, String password, String describe) {
        this.username = username;
        this.password = password;
        this.describe = describe;
    }

    public User(String username, String nickname, String sex,
                String cellphone,
                String email, String remarks) {
        this.username = username;
        this.reader = nickname;
        if ("男".equals(sex)) {
            this.sex = true;
        } else {
            this.sex = false;
        }
        this.cellphone = cellphone;
        this.email = email;
        this.describe = remarks;
    }
}


//    public User(String username, String password, String reader) {
//        this.username = username;
//        this.password = password;
//        this.reader = reader;
//    }
//
//    public User() {
//    }
//
//    public String getUsername() {
//        return username;
//    }
//
//    public void setUsername(String username) {
//        this.username = username;
//    }
//
//    public String getPassword() {
//        return password;
//    }
//
//    public void setPassword(String password) {
//        this.password = password;
//    }
//
//    public String getReader() {
//        return reader;
//    }
//
//    public void setReader(String reader) {
//        this.reader = reader;
//    }
//}
