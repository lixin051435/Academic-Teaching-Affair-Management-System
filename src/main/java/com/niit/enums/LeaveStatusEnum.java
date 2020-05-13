package com.niit.enums;

public enum LeaveStatusEnum {
    SUBMIT("已提交"),
    SUCCESS("已批准"),
    REJECTED("已拒绝");

    private String msg;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    LeaveStatusEnum(String msg) {
        this.msg = msg;
    }
}
