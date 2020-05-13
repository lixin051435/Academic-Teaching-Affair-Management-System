package com.niit.dao;

import com.niit.bean.Course;
import com.niit.bean.LeaveInfo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface LeaveInfoDao {

    int deleteByPrimaryKey(String leaveid);


    int insert(LeaveInfo record);


    int insertSelective(LeaveInfo record);


    LeaveInfo selectByPrimaryKey(String leaveid);


    int updateByPrimaryKeySelective(LeaveInfo record);


    int updateByPrimaryKey(LeaveInfo record);

    @Select("select * from leaveinfo")
    List<LeaveInfo> findAll();

    List<LeaveInfo> findByPage(@Param("info") LeaveInfo info, @Param("start") Integer start, @Param("end") Integer end);

    long findTotal(LeaveInfo leave);
}