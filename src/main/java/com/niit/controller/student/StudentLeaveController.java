package com.niit.controller.student;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.niit.bean.LeaveInfo;
import com.niit.bean.PageBean;
import com.niit.bean.Student;
import com.niit.enums.LeaveStatusEnum;
import com.niit.service.LeaveService;
import com.niit.service.StudentService;
import com.niit.service.TeacherService;
import com.niit.util.KeyUtil;
import com.niit.util.ResponseUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/student")
public class StudentLeaveController {
    
    @Resource
    private LeaveService leaveService;

    @Resource
    private StudentService studentService;
    
    @RequestMapping("/leave_list")
    public String evaluationList() {

        return "student/leave_list";
    }
    
    @RequestMapping("/select_leave_list")
    public String selectEvaluationList(
            LeaveInfo leave,
            @RequestParam(value = "page", required = false) String page,
            @RequestParam(value = "limit", required = false) String limit,
            HttpServletResponse response) throws Exception {
        
        //定义分页
        PageBean<LeaveInfo> pageBean = new PageBean<>(
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


    @RequestMapping("/insert_leave")
    public String insertEvaluation(LeaveInfo leave, HttpServletResponse response) throws Exception {
        leave.setStatus(LeaveStatusEnum.SUBMIT.getMsg());
        leave.setLeaveid(KeyUtil.genUniqueKey());
        leave.setUsername(studentService.selectStudentById(leave.getUserid()).getName());
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
