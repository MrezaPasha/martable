package org.sadr.web.main.system._type;

/**
 * @author masoud
 */
public enum TtRegisteryKey {


    TagPage("test", "،تست", TtRegisteryType.Test),;

    private final String key;
    private final String title;
    private final TtRegisteryType type;

    private TtRegisteryKey(String k, String t, TtRegisteryType trt) {
        key = k;
        title = t;
        type = trt;
    }

    public String getKey() {
        return key;
    }

    public String getTitle() {
        return title;
    }

    public TtRegisteryType getType() {
        return type;
    }


    public static TtRegisteryKey getByOrdinal(int ordinal) {
        for (TtRegisteryKey value : values()) {
            if (value.ordinal() == ordinal) {
                return value;
            }
        }
        return null;
    }

}