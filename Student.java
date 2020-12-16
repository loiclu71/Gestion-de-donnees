public class Student {
    private Integer sid;
    private String sname;
    private Integer sage;
    private String ssex;
    private String snativeplace;
    private String smajor;
    private String sclass;
    private String snative;

    public Integer getSid() {
        return sid;
    }

    public String getSname() {
        return sname;
    }

    public Integer getSage() {
        return sage;
    }

    public String getSsex() {
        return ssex;
    }

    public String getSnativeplace() {
        return snativeplace;
    }

    public String getSmajor() {
        return smajor;
    }

    public String getSclass() {
        return sclass;
    }

    public String getSnative() {
        return snative;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public void setSage(Integer sage) {
        this.sage = sage;
    }

    public void setSsex(String ssex) {
        this.ssex = ssex;
    }

    public void setSnativeplace(String snativeplace) {
        this.snativeplace = snativeplace;
    }

    public void setSmajor(String smajor) {
        this.smajor = smajor;
    }

    public void setSclass(String sclass) {
        this.sclass = sclass;
    }

    public void setSnative(String snative) {
        this.snative = snative;
    }

    public Student(Integer sid, String sname, Integer sage, String ssex, String snativeplace, String smajor, String sclass, String snative) {
        this.sid = sid;
        this.sname = sname;
        this.sage = sage;
        this.ssex = ssex;
        this.snativeplace = snativeplace;
        this.smajor = smajor;
        this.sclass = sclass;
        this.snative = snative;
    }

    public Student() {
        super();
    }

    @Override
    public String toString() {
        return "Student{" +
                "sid=" + sid +
                ", sname='" + sname + '\'' +
                ", sage=" + sage +
                ", ssex='" + ssex + '\'' +
                ", snativeplace='" + snativeplace + '\'' +
                ", smajor='" + smajor + '\'' +
                ", sclass='" + sclass + '\'' +
                ", snative='" + snative + '\'' +
                '}';
    }
}
