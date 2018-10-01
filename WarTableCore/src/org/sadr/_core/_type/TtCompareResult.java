package org.sadr._core._type;

/**
 * @author masoud
 */
public enum TtCompareResult {

    Unknown("نامشخص"),
    FirstIsBigger("اولی بزرگتر است"),
    SecondIsBigger("دومی بزرگتر است"),
    Equal("برابر هستند");

    private final String title;

    private TtCompareResult(String k) {
        title = k;
    }

    public String getTitle() {
        return title;
    }
}
