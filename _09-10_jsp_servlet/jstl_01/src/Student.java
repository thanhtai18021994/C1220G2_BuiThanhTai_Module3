public class Student {
    private Integer id;
    private String name;
    private String lop;
    private Double diem;
    private int gender;

    public Student(Integer id, String name, String lop, Double diem, int gender) {
        this.id = id;
        this.name = name;
        this.lop = lop;
        this.diem = diem;
        this.gender = gender;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLop() {
        return lop;
    }

    public void setLop(String lop) {
        this.lop = lop;
    }

    public Double getDiem() {
        return diem;
    }

    public void setDiem(Double diem) {
        this.diem = diem;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }
}
