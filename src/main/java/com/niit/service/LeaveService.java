package com.niit.service;

import com.niit.bean.LeaveInfo;
import com.niit.bean.PageBean;

import java.util.List;

public interface LeaveService {

    List<LeaveInfo> findAll();

    PageBean<LeaveInfo> findByPage(LeaveInfo leave, PageBean<LeaveInfo> pageBean);

    Integer update(LeaveInfo leave);

    Integer deleteById(String leaveId);

    Integer insert(LeaveInfo leave);


}
