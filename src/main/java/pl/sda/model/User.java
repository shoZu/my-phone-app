package pl.sda.model;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public class User {

    private String login;

    private String password;

    private String name;

    private String surname;

    private String email;
}