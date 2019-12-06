package pojo;

public class User {
    private Integer id;

    private String username;

    private Integer age;

    private String pic;

    public User(Integer id, String username, Integer age, String pic) {
        this.id = id;
        this.username = username;
        this.age = age;
        this.pic = pic;
    }

    public User() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic == null ? null : pic.trim();
    }
}