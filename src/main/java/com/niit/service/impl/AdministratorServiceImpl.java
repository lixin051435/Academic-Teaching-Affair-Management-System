package com.niit.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.niit.bean.Administrator;
import com.niit.bean.PageBean;
import com.niit.dao.AdministratorDao;
import com.niit.service.AdministratorService;

@Service("administratorService")
public class AdministratorServiceImpl implements AdministratorService{

    @Resource
    private AdministratorDao administratorDao;
    
    @Override
    public Administrator selectAdministratorById(String id) {

        Administrator administrator = administratorDao.selectAdministratorById(id);
        return administrator;
    }

    @Override
    public List<Administrator> selectAdministratorList() {

        List<Administrator> list = administratorDao.selectAdministratorList();
        return list;
    }

    @Override
    public PageBean<Administrator> selectAdministratorListByPage(Administrator administrator, PageBean<Administrator> pageBean) {

        //查询分页结果
        pageBean.setResult(administratorDao.selectAdministratorListByPage(administrator, pageBean.getStart(), pageBean.getEnd()));
        //查询记录总数
        pageBean.setTotal(administratorDao.selectTotal(administrator));
        return pageBean;
    }

    @Override
    public Integer updateAdministrator(Administrator administrator) {

        Integer i = administratorDao.updateAdministrator(administrator);
        return i;
    }

    @Override
    public Integer deleteAdministratorById(String id) {

        Integer i = administratorDao.deleteAdministratorById(id);
        return i;
    }

    @Override
    public Integer insertAdministrator(Administrator administrator) {

        Integer i = administratorDao.insertAdministrator(administrator);
        return i;
    }

}
