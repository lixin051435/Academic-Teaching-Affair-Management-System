package com.niit.service.impl;

import com.niit.bean.LeaveInfo;
import com.niit.bean.PageBean;
import com.niit.dao.CourseDao;
import com.niit.dao.LeaveInfoDao;
import com.niit.service.LeaveService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("leaveService")
public class LeaveServiceImpl implements LeaveService {

    @Resource
    private LeaveInfoDao leaveDao;

    @Resource
    private CourseDao courseDao;

    @Override
    public List<LeaveInfo> findAll() {
        List<LeaveInfo> leaves2 = leaveDao.findAll();
        return leaves2;
    }

    @Override
    public PageBean<LeaveInfo> findByPage(LeaveInfo leave, PageBean<LeaveInfo> pageBean) {


        //查询分页结果
        pageBean.setResult(leaveDao.findByPage(leave, pageBean.getStart(), pageBean.getEnd()));
        //查询记录总数
        pageBean.setTotal(leaveDao.findTotal(leave));
        return pageBean;
    }

    @Override
    public Integer update(LeaveInfo leave) {
        return leaveDao.updateByPrimaryKey(leave);
    }

    @Override
    public Integer deleteById(String leaveId) {
        return leaveDao.deleteByPrimaryKey(leaveId);
    }

    @Override
    public Integer insert(LeaveInfo leave) {
        return leaveDao.insertSelective(leave);
    }
}
