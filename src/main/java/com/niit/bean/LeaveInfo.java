package com.niit.bean;

public class LeaveInfo {

    private String leaveid;


    private String userid;


    private String username;


    private String begintime;


    private String endtime;


    private String reason;


    private Integer usertype;


    private String status;


    public String getLeaveid() {
        return leaveid;
    }


    public void setLeaveid(String leaveid) {
        this.leaveid = leaveid == null ? null : leaveid.trim();
    }


    public String getUserid() {
        return userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column leaveinfo.userid
     *
     * @param userid the value for leaveinfo.userid
     *
     * @mbg.generated
     */
    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column leaveinfo.username
     *
     * @return the value of leaveinfo.username
     *
     * @mbg.generated
     */
    public String getUsername() {
        return username;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column leaveinfo.username
     *
     * @param username the value for leaveinfo.username
     *
     * @mbg.generated
     */
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column leaveinfo.begintime
     *
     * @return the value of leaveinfo.begintime
     *
     * @mbg.generated
     */
    public String getBegintime() {
        return begintime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column leaveinfo.begintime
     *
     * @param begintime the value for leaveinfo.begintime
     *
     * @mbg.generated
     */
    public void setBegintime(String begintime) {
        this.begintime = begintime == null ? null : begintime.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column leaveinfo.endtime
     *
     * @return the value of leaveinfo.endtime
     *
     * @mbg.generated
     */
    public String getEndtime() {
        return endtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column leaveinfo.endtime
     *
     * @param endtime the value for leaveinfo.endtime
     *
     * @mbg.generated
     */
    public void setEndtime(String endtime) {
        this.endtime = endtime == null ? null : endtime.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column leaveinfo.reason
     *
     * @return the value of leaveinfo.reason
     *
     * @mbg.generated
     */
    public String getReason() {
        return reason;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column leaveinfo.reason
     *
     * @param reason the value for leaveinfo.reason
     *
     * @mbg.generated
     */
    public void setReason(String reason) {
        this.reason = reason == null ? null : reason.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column leaveinfo.usertype
     *
     * @return the value of leaveinfo.usertype
     *
     * @mbg.generated
     */
    public Integer getUsertype() {
        return usertype;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column leaveinfo.usertype
     *
     * @param usertype the value for leaveinfo.usertype
     *
     * @mbg.generated
     */
    public void setUsertype(Integer usertype) {
        this.usertype = usertype;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column leaveinfo.status
     *
     * @return the value of leaveinfo.status
     *
     * @mbg.generated
     */
    public String getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column leaveinfo.status
     *
     * @param status the value for leaveinfo.status
     *
     * @mbg.generated
     */
    public void setStatus(String status) {
        this.status = status;
    }
}