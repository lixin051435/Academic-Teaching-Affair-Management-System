package com.niit.controller.admin;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.niit.bean.LeaveInfo;
import com.niit.bean.PageBean;
import com.niit.enums.LeaveStatusEnum;
import com.niit.log.Log;
import com.niit.service.LeaveService;
import com.niit.util.ResponseUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/admin")
public class AdministratorLeaveController {
    
    @Resource
    private LeaveService leaveService;
    
    @RequestMapping("/student_leave_list")
    public String studentLeaveList() {
        return "admin/student_leave_list";
    }

    @RequestMapping("/teacher_leave_list")
    public String teacherLeaveList() {
        return "admin/teacher_leave_list";
    }


    @Log(module = "管理员后台", method = "获取评价列表")
    @RequestMapping("/select_leave_list")
    public String selectEvaluationList(
            LeaveInfo leave,
            @RequestParam(value = "page", required = false) String page,
            @RequestParam(value = "limit", required = false) String limit,
            HttpServletResponse response) throws Exception {

        //定义分页
        PageBean<LeaveInfo> pageBean = new PageBean<LeaveInfo>(
            Integer.parseInt(page),
            Integer.parseInt(limit));
        //拿到分页结果已经记录总数的page
        pageBean = leaveService.findByPage(leave, pageBean);

        //使用阿里巴巴的fastJson创建JSONObject
        JSONObject result = new JSONObject();
        //通过fastJson序列化list为jsonArray
        String jsonArray = JSON.toJSONString(pageBean.getResult());
        JSONArray array = JSONArray.parseArray(jsonArray);
        //将序列化结果放入json对象中
        result.put("data", array);
        result.put("count", pageBean.getTotal());
        result.put("code", 0);

        //使用自定义工具类向response中写入数据
        ResponseUtil.write(response, result);
        return null;
    }
    
    @Log(module = "管理员后台", method = "修改休假")
    @RequestMapping("/update_leave")
    public String updateEvaluation(LeaveInfo leave, HttpServletResponse response) throws Exception {
        Integer i = leaveService.update(leave);
        
        if(i > 0) {
            //使用阿里巴巴的fastJson创建JSONObject
            JSONObject result = new JSONObject();
            //将序列化结果放入json对象中
            result.put("success", true);
            
            //使用自定义工具类向response中写入数据
            ResponseUtil.write(response, result);
        }
        
        return null;
    }

    @RequestMapping("/agree_leave")
    public String agreeEvaluation(LeaveInfo leave, HttpServletResponse response) throws Exception {
        leave.setStatus(LeaveStatusEnum.SUCCESS.getMsg());
        Integer i = leaveService.update(leave);

        if(i > 0) {
            //使用阿里巴巴的fastJson创建JSONObject
            JSONObject result = new JSONObject();
            //将序列化结果放入json对象中
            result.put("success", true);

            //使用自定义工具类向response中写入数据
            ResponseUtil.write(response, result);
        }

        return null;
    }

    @RequestMapping("/reject_leave")
    public String rejectEvaluation(LeaveInfo leave, HttpServletResponse response) throws Exception {
        leave.setStatus(LeaveStatusEnum.REJECTED.getMsg());
        Integer i = leaveService.update(leave);

        if(i > 0) {
            //使用阿里巴巴的fastJson创建JSONObject
            JSONObject result = new JSONObject();
            //将序列化结果放入json对象中
            result.put("success", true);

            //使用自定义工具类向response中写入数据
            ResponseUtil.write(response, result);
        }

        return null;
    }

    @Log(module = "管理员后台", method = "删除评价")
    @RequestMapping(value="/delete_leave")
    public String deleteEvaluation(LeaveInfo info, HttpServletResponse response) throws Exception {
        Integer i = leaveService.deleteById(info.getLeaveid());
        
        if(i > 0) {
            //使用阿里巴巴的fastJson创建JSONObject
            JSONObject result = new JSONObject();
            //将序列化结果放入json对象中
            result.put("success", true);
            
            //使用自定义工具类向response中写入数据
            ResponseUtil.write(response, result);
        }
        
        return null;
    }
    
    @Log(module = "管理员后台", method = "添加休假")
    @RequestMapping("/insert_leave")
    public String insertEvaluation(LeaveInfo leave, HttpServletResponse response) throws Exception {
        Integer i = leaveService.insert(leave);
        
        if(i > 0) {
            //使用阿里巴巴的fastJson创建JSONObject
            JSONObject result = new JSONObject();
            //将序列化结果放入json对象中
            result.put("success", true);
            
            //使用自定义工具类向response中写入数据
            ResponseUtil.write(response, result);
        }
        
        return null;
    }

}
