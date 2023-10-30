import java.util.HashMap;

class StyleCollection {
  private HashMap<String, Style> styles;

  StyleCollection() {
    this.styles = new HashMap<String, Style>();
  }

  public void addStyle(Style s) {
    this.styles.put(s.getName(), s);
  }

  public void setDefaultStyles(Style s) {
    this.styles.put("default", s);
  }

  public Style getStyle(String key) {
    return this.styles.get(key);
  }

  public Style getDefaultStyle() {
    return this.styles.get("default");
  }
}
