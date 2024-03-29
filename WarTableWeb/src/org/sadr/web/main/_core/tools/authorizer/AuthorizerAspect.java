package org.sadr.web.main._core.tools.authorizer;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.sadr._core.meta.annotation.Front;
import org.sadr._core.meta.annotation.PersianName;
import org.sadr._core.utils.Environment;
import org.sadr.web.main._core._type.TtTaskAccessLevel;
import org.sadr.web.main._core._type.TtTile___;
import org.sadr.web.main._core.meta.annotation.OverActiveTask;
import org.sadr.web.main._core.meta.annotation.OverChangePassword;
import org.sadr.web.main._core.meta.annotation.OverDevelopingMode;
import org.sadr.web.main._core.tools.listener.SessionListener;
import org.sadr.web.main._core.utils.CacheStatic;
import org.sadr.web.main._core.utils.Ison;
import org.sadr.web.main._core.utils.Notice2;
import org.sadr.web.main._core.utils.Referer;
import org.sadr.web.main._core.utils._type.TtIsonStatus;
import org.sadr.web.main._core.utils._type.TtNotice;
import org.sadr.web.main.admin._type.TtUserLevel;
import org.sadr.web.main.admin._type.TtUserStatus;
import org.sadr.web.main.admin.user.confirm.UserConfirmService;
import org.sadr.web.main.admin.user.group.UserGroup;
import org.sadr.web.main.admin.user.group.UserGroupService;
import org.sadr.web.main.admin.user.user.User;
import org.sadr.web.main.admin.user.user.UserService;
import org.sadr.web.main.system._type.TtHttpErrorCode___;
import org.sadr.web.main.system._type.TtIrrorPlace;
import org.sadr.web.main.system._type.TtLogHandler;
import org.sadr.web.main.system.irror.irror.Irror;
import org.sadr.web.main.system.irror.irror.IrrorService;
import org.sadr.web.main.system.log.general.Log;
import org.sadr.web.main.system.log.general.LogService;
import org.sadr.web.main.system.task.Task;
import org.sadr.web.main.system.task.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


/**
 * @author 1.95.10.19
 */
@PersianName("اعتبارسنج")
@Aspect
public class AuthorizerAspect {

    public AuthorizerAspect() {
    }

    private TaskService taskService;

    private UserService userService;

    private LogService logService;

    private IrrorService irrorService;

    private UserGroupService userGroupService;

    private UserConfirmService userConfirmService;

    @Autowired
    public void setUserConfirmService(UserConfirmService userConfirmService) {
        this.userConfirmService = userConfirmService;
    }

    @Autowired
    public void setUserGroupService(UserGroupService userGroupService) {
        this.userGroupService = userGroupService;
    }

    @Autowired
    public void setIrrorService(IrrorService irrorService) {
        this.irrorService = irrorService;
    }

    @Autowired
    public void setLogService(LogService logService) {
        this.logService = logService;
    }

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Autowired
    public void setTaskService(TaskService taskService) {
        this.taskService = taskService;
    }

    private ModelAndView fillAndView(HttpServletRequest request, Task task, ModelAndView andView) {
        if (request.getMethod().equals("GET") && !andView.getViewName().contains("redirect")) {
            andView.addObject("_url", task == null ? null : Environment.getInstance().getContextPath() + task.getParentUrl());
        }
        return andView;

    }



    private ModelAndView guest(HttpServletRequest request, User u, ProceedingJoinPoint joinPoint, Task task) throws Throwable {

        ModelAndView andView;
        // guest > ================================  Developing
        if (CacheStatic.isDevelopingMode()
                && !((MethodSignature) joinPoint.getSignature()).getMethod().isAnnotationPresent(OverDevelopingMode.class)) {
            this.logService.log(
                    new Log(
                            null, request,
                            "As Guest- Dispatched to < " + TtTile___.f_develop_developing.getCode() + " > [Developing]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return fillAndView(request, task, TtTile___.f_develop_developing.___getDisModel());
        }

        // guest > ================================  OK
        if (task != null && (task.getAccessLevel() == TtTaskAccessLevel.Free4Gusts || task.getAccessLevel() == TtTaskAccessLevel.OnlyFree4Gusts)) {
            andView = (ModelAndView) joinPoint.proceed();
            //*********(log)********* guest
            this.logService.log(
                    new Log(
                            andView, request,
                            "As Guest- Dispatched to <" + andView.getViewName() + ">",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return fillAndView(request, task, andView);
        }

        // guest > ================================  Forbidden
        //*********(log)********* invalid guest
        this.logService.log(
                new Log(
                        null, request,
                        "As Guest- Dispatched to <" + joinPoint.getSignature().getName() + "> [401: User is null] ",
                        TtLogHandler.AuthorizerAspect, task, u)
        );
        String cname = joinPoint.getSignature().getDeclaringTypeName();
        int ix = cname.lastIndexOf('.') + 1;
        cname = cname.substring(ix, ix + 1).toLowerCase()
                + cname.substring(ix + 1, cname.lastIndexOf("Controller"));
        return TtHttpErrorCode___.Unauthorized_401.___getFrontDisModel()
                .addObject("pageTitle", cname + ".c." + joinPoint.getSignature().getName());

    }

    private ModelAndView client(HttpServletRequest request, User u, ProceedingJoinPoint joinPoint, Task task) throws Throwable {
        // client > ================================  Developing
        if (CacheStatic.isDevelopingMode()
                && !((MethodSignature) joinPoint.getSignature()).getMethod().isAnnotationPresent(OverDevelopingMode.class)) {
            this.logService.log(
                    new Log(
                            null, request,
                            "As Client- Dispatched to < " + TtTile___.f_develop_developing.getCode() + " > [Developing]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return fillAndView(request, task, TtTile___.f_develop_developing.___getDisModel());
        }

        // client > ================================  Access Limit
        if (userService.isAccessLimitPassed(u)) {
            //*********(log)********* limit client
            this.logService.log(
                    new Log(
                            null, request,
                            "As Client- Dispatched to < " + TtTile___.f_user_signin.getCode() + " > [Access Limit]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            SessionListener.invalidate(u.getId());
            return Referer.redirect("/signin?limit=true");
        }

        // client > ================================  Blocked
        if (u.getIsBlocked() == true) {
            //*********(log)********* blocked client
            this.logService.log(
                    new Log(
                            null, request,
                            "As Client- Dispatched to < " + TtHttpErrorCode___.Forbidden_403.getFrontTile() + " > [Blocked User]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return TtHttpErrorCode___.Forbidden_403.___getFrontDisModel();
        }

        // client > ================================  Deactivated
        if (u.getStatus() == TtUserStatus.Deactive
                && !((MethodSignature) joinPoint.getSignature()).getMethod().isAnnotationPresent(OverActiveTask.class)) {
            //*********(log)********* deactivated client
            this.logService.log(
                    new Log(
                            null, request,
                            "As Client- Dispatched to < " + TtHttpErrorCode___.Forbidden_403.getFrontTile() + " > [Deactivated User]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            SessionListener.invalidate(u.getId());
            return Referer.redirect("/signin?inactive=true");
        }

        // client > ================================  Change Password
        if (u.getIsNeedToChangePassword() == true
                && !((MethodSignature) joinPoint.getSignature()).getMethod().isAnnotationPresent(OverChangePassword.class)) {
            //*********(log)********* change password client
            this.logService.log(
                    new Log(
                            null, request,
                            "As Client- Dispatched to < " + TtTile___.p_user_changeYourPass.getCode() + " > [Change Password]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return Referer.redirect("/panel/user/your-pass?expired=true");
        }

        // client > ================================  OK
        ModelAndView andView;
        if (task != null && task.getAccessLevel() == TtTaskAccessLevel.Free4Gusts) {
            andView = (ModelAndView) joinPoint.proceed();
            //*********(log)********* client with guest task
            this.logService.log(
                    new Log(
                            andView, request,
                            "As Client With Guest Task- Dispatched to <" + andView.getViewName() + ">",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return fillAndView(request, task, andView);
        }
        if (task != null && task.getAccessLevel() == TtTaskAccessLevel.Free4Users) {
            // client > ================================  Two step confirm
            if (task.getIsTwoLevelConfirm() && !userConfirmService.isConfirmed(u, task.getSignature())) {
                //*********(log)********* client
                this.logService.log(
                        new Log(
                                null, request,
                                "As Client- Dispatched to <" + TtTile___.p_user_reSignin + "> [Need Two Step Confirm]",
                                TtLogHandler.AuthorizerAspect, task, u)
                );
                return TtTile___.p_user_reSignin.___getDisModel("/panel/user/reSignin")
.addObject("taskSignature", task.getSignature())
.addObject("reSignUrl", request.getServletPath() + (request.getQueryString() == null ? "" : "?" + request.getQueryString()));
            }

            // client > ================================  OK
            andView = (ModelAndView) joinPoint.proceed();
            this.logService.log(
                    new Log(
                            andView, request,
                            "As Client- Dispatched to <" + andView.getViewName() + ">",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return fillAndView(request, task, andView);
        }

        // client > ================================  Forbidden
        this.logService.log(
                new Log(
                        null, request,
                        "As Client- Dispatched to <" + TtHttpErrorCode___.Unauthorized_401.getFrontTile() + "> [401: Not Access]",
                        TtLogHandler.AuthorizerAspect, task, u));
        return TtHttpErrorCode___.Unauthorized_401.___getFrontDisModel();
    }

    private ModelAndView master(HttpServletRequest request, User u, ProceedingJoinPoint joinPoint, Task task) throws Throwable {
        ModelAndView andView;
        // master > ================================  Developing
        if (CacheStatic.isDevelopingMode()) {
            //*********(log)********* developing user
            this.logService.log(
                    new Log(
                            null, request,
                            "As Master- Dispatched to < " + TtTile___.f_develop_developing.getCode() + " > [Developing]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return fillAndView(request, task, TtTile___.f_develop_developing.___getDisModel());
        }

        // master > ================================  Access limit
        if (userService.isAccessLimitPassed(u)) {
            //*********(log)********* limit master
            this.logService.log(
                    new Log(
                            null, request,
                            "As Master- Dispatched to < " + TtTile___.f_user_signin.getCode() + " > [Access Limit]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            SessionListener.invalidate(u.getId());
            return Referer.redirect("/signin?limit=true");
        }

        // master > ================================  Blocked
        if (u.getIsBlocked() == true) {
            //*********(log)********* blocked master
            this.logService.log(
                    new Log(
                            null, request,
                            "As Master- Dispatched to < " + TtHttpErrorCode___.Forbidden_403.getFrontTile() + " > [Blocked User]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return TtHttpErrorCode___.Forbidden_403.___getFrontDisModel();
        }

        // master > ================================  Deactivated
        if (u.getStatus() == TtUserStatus.Deactive
                && !((MethodSignature) joinPoint.getSignature()).getMethod().isAnnotationPresent(OverActiveTask.class)) {
            //*********(log)********* deactivated master
            this.logService.log(
                    new Log(
                            null, request,
                            "As Master- Dispatched to < " + TtHttpErrorCode___.Forbidden_403.getFrontTile() + " > [Deactivated User]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            SessionListener.invalidate(u.getId());
            return Referer.redirect("/signin?inactive=true");
        }

        // master > ================================  Change Password
        if (u.getIsNeedToChangePassword() == true
                && !((MethodSignature) joinPoint.getSignature()).getMethod().isAnnotationPresent(OverChangePassword.class)) {
            //*********(log)********* change password master
            this.logService.log(
                    new Log(
                            null, request,
                            "As Master- Dispatched to < " + TtTile___.p_user_changeYourPass.getCode() + " > [Change Password]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return Referer.redirect("/panel/user/your-pass?expired=true");
        }

        // master > ================================  Two step confirm
        if (task.getAccessLevel() == TtTaskAccessLevel.Free4Gusts || task.getAccessLevel() == TtTaskAccessLevel.Free4Users) {
            if (task.getIsTwoLevelConfirm() && !userConfirmService.isConfirmed(u, task.getSignature())) {
                //*********(log)********* Master
                this.logService.log(
                        new Log(
                                null, request,
                                "As Master- Dispatched to <" + TtTile___.p_user_reSignin + "> [Need Two Step Confirm]",
                                TtLogHandler.AuthorizerAspect, task, u)
                );
                return TtTile___.p_user_reSignin.___getDisModel("/panel/user/reSignin")
.addObject("taskSignature", task.getSignature())
.addObject("reSignUrl", request.getServletPath() + (request.getQueryString() == null ? "" : "?" + request.getQueryString()));
            }

            // master > ================================  OK
            andView = (ModelAndView) joinPoint.proceed();
            this.logService.log(
                    new Log(
                            andView, request,
                            "As Master- Dispatched to <" + andView.getViewName() + ">",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return fillAndView(request, task, andView);
        }
        ///////////////////////////
        if (task.getAccessLevel() == TtTaskAccessLevel.Grant) {
            for (Task tk : u.getTasks()) {
                if (tk.getIdi() == task.getIdi()) {
                    // master > ================================  Two step confirm
                    if (task.getIsTwoLevelConfirm() && !userConfirmService.isConfirmed(u, task.getSignature())) {
                        //*********(log)********* master user
                        this.logService.log(
                                new Log(
                                        null, request,
                                        "As Master- Dispatched to <" + TtTile___.p_user_reSignin + "> [Need Two Step Confirm]",
                                        TtLogHandler.AuthorizerAspect, task, u)
                        );
                        return TtTile___.p_user_reSignin.___getDisModel("/panel/user/reSignin")
.addObject("taskSignature", task.getSignature())
.addObject("reSignUrl", request.getServletPath() + (request.getQueryString() == null ? "" : "?" + request.getQueryString()));
                    }

                    // master > ================================  OK
                    andView = (ModelAndView) joinPoint.proceed();
                    //*********(log)********* master user
                    this.logService.log(
                            new Log(
                                    andView, request,
                                    "As Master- Dispatched to <" + andView.getViewName() + ">",
                                    TtLogHandler.AuthorizerAspect, task, u)
                    );
                    return fillAndView(request, task, andView);
                }
            }
            for (UserGroup ug : u.getUserGroups()) {
                UserGroup group = this.userGroupService.findById(ug.getId(), UserGroup._TASKS);
                for (Task tk : group.getTasks()) {
                    if (tk.getIdi() == task.getIdi()) {
                        // master > ================================  Two step confirm
                        if (task.getIsTwoLevelConfirm() &&
                                !userConfirmService.isConfirmed(u, task.getSignature())) {
                            //*********(log)********* Master
                            this.logService.log(
                                    new Log(
                                            null, request,
                                            "As Master- Dispatched to <" + TtTile___.p_user_reSignin + "> [Need Two Step Confirm]",
                                            TtLogHandler.AuthorizerAspect, task, u, ug)
                            );
                            return TtTile___.p_user_reSignin.___getDisModel("/panel/user/reSignin")
.addObject("taskSignature", task.getSignature())
.addObject("reSignUrl", request.getServletPath() + (request.getQueryString() == null ? "" : "?" + request.getQueryString()));
                        }

                        // master > ================================  OK
                        andView = (ModelAndView) joinPoint.proceed();
                        //*********(log)********* master master
                        this.logService.log(
                                new Log(
                                        andView, request,
                                        "As Master (Group Access)- Dispatched to <" + andView.getViewName() + ">",
                                        TtLogHandler.AuthorizerAspect, task, u, ug)
                        );
                        return fillAndView(request, task, andView);
                    }
                }
            }
        }

        // master > ================================  Forbidden
        if (((MethodSignature) joinPoint.getSignature()).getMethod().isAnnotationPresent(Front.class)) {
            //*********(log)********* master
            this.logService.log(
                    new Log(
                            null, request,
                            "As Master- Dispatched to <" + TtHttpErrorCode___.Unauthorized_401.getFrontTile() + "> [401: Not Access]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return TtHttpErrorCode___.Unauthorized_401.___getFrontDisModel();
        } else {
            //*********(log)********* master
            this.logService.log(
                    new Log(
                            null, request,
                            "As Master- Dispatched to <" + TtHttpErrorCode___.Unauthorized_401.getPanelTile() + "> [401: Not Access]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return TtHttpErrorCode___.Unauthorized_401.___getPanelDisModel();
        }

    }

    private ModelAndView admin(HttpServletRequest request, User u, ProceedingJoinPoint joinPoint, Task task) throws Throwable {

        // admin > ================================  Developing
        if (CacheStatic.isDevelopingMode() && !u.getIsSuperAdmin()) {
            //*********(log)********* developing user
            this.logService.log(
                    new Log(
                            null, request,
                            "As Admin- Dispatched to < " + TtTile___.f_develop_developing.getCode() + " > [Developing]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return fillAndView(request, task, TtTile___.f_develop_developing.___getDisModel());
        }

        // admin > ================================  Access limit
        if (userService.isAccessLimitPassed(u)) {
            //*********(log)********* limit master
            this.logService.log(
                    new Log(
                            null, request,
                            "As Admin- Dispatched to < " + TtTile___.f_user_signin.getCode() + " > [Access Limit]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            SessionListener.invalidate(u.getId());
            return Referer.redirect("/signin?limit=true");
        }

        // admin > ================================  Blocked
        if (u.getIsBlocked() == true) {
            //*********(log)********* blocked admin
            this.logService.log(
                    new Log(
                            null, request,
                            "As Admin- Dispatched to < " + TtHttpErrorCode___.Forbidden_403.getFrontTile() + " > [Blocked User]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return TtHttpErrorCode___.Forbidden_403.___getFrontDisModel();
        }

        // admin > ================================  Deactivated
        if (u.getStatus() == TtUserStatus.Deactive
                && !((MethodSignature) joinPoint.getSignature()).getMethod().isAnnotationPresent(OverActiveTask.class)) {
            //*********(log)********* deactivated admin
            this.logService.log(
                    new Log(
                            null, request,
                            "As Admin- Dispatched to < " + TtHttpErrorCode___.Forbidden_403.getFrontTile() + " > [Deactivated User]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            SessionListener.invalidate(u.getId());
            return Referer.redirect("/signin?inactive=true");
        }

        // admin > ================================  Change password
        if (u.getIsNeedToChangePassword() == true
                && !((MethodSignature) joinPoint.getSignature()).getMethod().isAnnotationPresent(OverChangePassword.class)) {
            //*********(log)********* change password master
            this.logService.log(
                    new Log(
                            null, request,
                            "As Admin- Dispatched to < " + TtTile___.p_user_changeYourPass.getCode() + " > [Change Password]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return Referer.redirect("/panel/user/your-pass?expired=true");
        }

        // admin > ================================  Two step confirm
        if (task.getIsTwoLevelConfirm() && !userConfirmService.isConfirmed(u, task.getSignature())) {
            //*********(log)********* Admin
            this.logService.log(
                    new Log(
                            null, request,
                            "As Admin- Dispatched to <" + TtTile___.p_user_reSignin + "> [Need Two Step Confirm]",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return TtTile___.p_user_reSignin.___getDisModel("/panel/user/reSignin")
.addObject("taskSignature", task.getSignature())
.addObject("reSignUrl", request.getServletPath() + (request.getQueryString() == null ? "" : "?" + request.getQueryString()));
        }

        // admin > ================================  OK
        ModelAndView andView = (ModelAndView) joinPoint.proceed();
        //*********(log)*********  admin
        this.logService.log(new Log(
                andView,
                request,
                "As Admin- Dispatched to <" + andView.getViewName() + ">",
                TtLogHandler.AuthorizerAspect,
                task, u));

        ///////////////////////////
        return fillAndView(request, task, andView);
    }

    private ModelAndView catchException(Exception e, ProceedingJoinPoint joinPoint, HttpServletRequest request, TtIrrorPlace place) {
        ModelAndView ozbj;
        e.printStackTrace();
        if (((MethodSignature) joinPoint.getSignature()).getMethod().isAnnotationPresent(Front.class)) {
            ozbj = TtHttpErrorCode___.InternalServerError_500.___getFrontDisModel();
        } else {
            ozbj = TtHttpErrorCode___.InternalServerError_500.___getPanelDisModel();
        }

        Irror irror = irrorService.submit(e, joinPoint, request, place);
        if (irror != null) {
            ozbj.addObject("errorMsg", irror.getMessage());
            ozbj.addObject("errorId", irror.getId());
        } else {
            ozbj.addObject("errorMsg", e.toString());
        }

        return ozbj;
    }

    private long catchExceptionJson(Exception e, ProceedingJoinPoint joinPoint, HttpServletRequest request, TtIrrorPlace place) {
        e.printStackTrace();
        Irror irror = irrorService.submit(e, joinPoint, request, place);
        if (irror != null) {
            return irror.getIdi();
        }
        return -1;
    }

    ///====================================================== MAIN

    @Around("@annotation(org.springframework.web.bind.annotation.RequestMapping)"
            + " && execution(org.springframework.web.servlet.ModelAndView *(..))"
            + " && !@annotation(org.sadr.web.main._core.meta.annotation.SuperAdminTask)"
            + " && !@annotation(org.sadr.web.main._core.meta.annotation.LogManagerTask)"
    )
    public ModelAndView mainAspect(ProceedingJoinPoint joinPoint) throws Throwable {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
        User u = (User) request.getSession().getAttribute("sUser");
        try {
            Task task = taskService.fetchTask(joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName());
                if (u == null) {
                    return guest(request, u, joinPoint, task);
                }
            switch (u.getLevel()) {
                case Client:
                default:
                    return client(request, u, joinPoint, task);
                case Master:
                    return master(request, u, joinPoint, task);
                case Administrator:
//                    return (ModelAndView) joinPoint.proceed();
                    return admin(request, u, joinPoint, task);
            }
        } catch (Exception e) {
            return catchException(e, joinPoint, request, TtIrrorPlace.AspectMain);
        }
    }


    @Around("@annotation(org.springframework.web.bind.annotation.RequestMapping)"
            + " && execution(org.springframework.http.ResponseEntity *(..))"
            + " && !@annotation(org.sadr.web.main._core.meta.annotation.SuperAdminTask)"
            + " && !@annotation(org.sadr.web.main._core.meta.annotation.LogManagerTask)")
    public ResponseEntity<String> jsonAspect(ProceedingJoinPoint joinPoint) throws Throwable {
        HttpSession session = (HttpSession) RequestContextHolder.currentRequestAttributes().resolveReference(RequestAttributes.REFERENCE_SESSION);
        User u = (User) session.getAttribute("sUser");
        try {

            if (taskService.authorizeGuest(joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName())) {
                return (ResponseEntity<String>) joinPoint.proceed();
            }
            if (u == null) {
                return Ison.init()
                        .setStatus(TtIsonStatus.Nok)
                        .setMessages(Notice2.addNotices(new Notice2("N.http.error.401.des", TtNotice.Danger)))
                        .toResponse();
            } else {
                if (u.getIsBlocked() == true) {
                    return Ison.init()
                            .setStatus(TtIsonStatus.Nok)
                            .setMessages(Notice2.addNotices(new Notice2("N.user.is.blocked", TtNotice.Danger)))
                            .toResponse();
                }
                if (u.getStatus() == TtUserStatus.Deactive
                        && !((MethodSignature) joinPoint.getSignature()).getMethod().isAnnotationPresent(OverActiveTask.class
                )) {
                    return Ison.init()
                            .setStatus(TtIsonStatus.Nok)
                            .setMessages(Notice2.addNotices(new Notice2("N.user.is.deactived", TtNotice.Danger)))
                            .toResponse();
                }
                if (u.getLevel() == TtUserLevel.Administrator) {
                    return (ResponseEntity<String>) joinPoint.proceed();
                }
                if (taskService.authorizeClient(joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName())) {
                    return (ResponseEntity<String>) joinPoint.proceed();
                }
                if (u.getLevel() == TtUserLevel.Master) {
                    for (Task tk : u.getTasks()) {
                        if (tk.getSignature().equals(joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName())) {
                            return (ResponseEntity<String>) joinPoint.proceed();
                        }
                    }
                    for (UserGroup ug : u.getUserGroups()) {
                        UserGroup group = this.userGroupService.findById(ug.getId(), UserGroup._TASKS);
                        for (Task tk : group.getTasks()) {
                            if (tk.getSignature().equals(joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName())) {
                                return (ResponseEntity<String>) joinPoint.proceed();
                            }
                        }
                    }
                }
                return Ison.init()
                        .setStatus(TtIsonStatus.Nok)
                        .setMessages(Notice2.addNotices(new Notice2("N.http.error.401.des", TtNotice.Danger)))
                        .toResponse();
            }
        } catch (Exception e) {
            long errorId = catchExceptionJson(e,
                    joinPoint,
                    ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest()
                    , TtIrrorPlace.JsonAspectMain);
            return Ison.init()
                    .setStatus(TtIsonStatus.Nok)
                    .setMessages(Notice2.addNotices(new Notice2("N1.aspect.public.error.500", TtNotice.Danger, "" + errorId)))
                    .toResponse();
        }
    }

    ///====================================================== SUPER ADMIN

    @Around("@annotation(org.springframework.web.bind.annotation.RequestMapping)"
            + " && execution(org.springframework.web.servlet.ModelAndView *(..))"
            + " && @annotation(org.sadr.web.main._core.meta.annotation.SuperAdminTask)")
    public ModelAndView superAdminAspect(ProceedingJoinPoint joinPoint) throws Throwable {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
        User u = (User) request.getSession().getAttribute("sUser");

        try {
            Task task = taskService.fetchTask(joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName());

            if (u == null) {
                this.logService.log(
                        new Log(
                                null, request,
                                "As LogManager- Dispatched to <" + TtHttpErrorCode___.Unauthorized_401 + "> [401: Not Access]",
                                TtLogHandler.AuthorizerAspect, task, u)
                );
                return TtHttpErrorCode___.Unauthorized_401.___getFrontDisModel();
            }
            if (u.getIsSuperAdmin()) {
                //==========================  CHANGE PASSWORD
                if (u.getIsNeedToChangePassword() == true
                        && !((MethodSignature) joinPoint.getSignature()).getMethod().isAnnotationPresent(OverChangePassword.class)) {
                    //*********(log)********* change password master
                    this.logService.log(
                            new Log(
                                    null, request,
                                    "As Admin - Dispatched to < " + TtTile___.p_user_changeYourPass.getCode() + " > [Change Password]",
                                    TtLogHandler.AuthorizerAspect, task, u));
                    return Referer.redirect("/panel/user/your-pass?expired=true");
                }

                String taskSignature = joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName();
                if (taskService.isNeedToConfirm(taskSignature) && !userConfirmService.isConfirmed(u, taskSignature)) {
                    //*********(log)********* Admin
                    //*********(log)********* LogManager
                    this.logService.log(
                            new Log(
                                    null, request,
                                    "As Admin - Dispatched to <" + TtTile___.p_user_reSignin + "> [Need Two Step Confirm]",
                                    TtLogHandler.AuthorizerAspect, task, u)
                    );
                    return TtTile___.p_user_reSignin.___getDisModel("/panel/user/reSignin")
.addObject("taskSignature", taskSignature)
.addObject("reSignUrl", request.getServletPath() + (request.getQueryString() == null ? "" : "?" + request.getQueryString()));
                }

                ModelAndView andView = (ModelAndView) joinPoint.proceed();
                //*********(log)********* superadmin
                this.logService.log(new Log(
                        andView,
                        request,
                        "As Admin - Dispatched to <" + andView.getViewName() + ">",
                        TtLogHandler.AuthorizerAspect,
                        task, u));
                return fillAndView(request, task, andView);
            }
            if (u.getLevel() != TtUserLevel.Client
                    && !((MethodSignature) joinPoint.getSignature()).getMethod().isAnnotationPresent(Front.class)) {
                this.logService.log(
                        new Log(
                                null, request,
                                "As - Dispatched to <" + TtHttpErrorCode___.Forbidden_403 + "> [403: Not Access]",
                                TtLogHandler.AuthorizerAspect, task, u)
                );
                return TtHttpErrorCode___.Forbidden_403.___getPanelDisModel();
            }
            this.logService.log(
                    new Log(
                            null, request,
                            "As - Dispatched to <" + TtHttpErrorCode___.NotFound_404 + ">",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return TtHttpErrorCode___.NotFound_404.___getFrontDisModel();
        } catch (Exception e) {
            return catchException(e, joinPoint, request, TtIrrorPlace.AspectSuperAdmin);
        }
    }

    @Around("@annotation(org.springframework.web.bind.annotation.RequestMapping)"
            + " && execution(org.springframework.http.ResponseEntity *(..))"
            + " && @annotation(org.sadr.web.main._core.meta.annotation.SuperAdminTask)")
    public ResponseEntity<String> jsonSuperAdminAspect(ProceedingJoinPoint joinPoint) throws Throwable {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
        User u = (User) request.getSession().getAttribute("sUser");
        try {
            if (u == null || !u.getIsSuperAdmin()) {
                return null;
            }
            return (ResponseEntity<String>) joinPoint.proceed();

        } catch (Exception e) {
            catchException(e, joinPoint, request, TtIrrorPlace.JsonAspectSuperAdmin);
            return null;
        }
    }

    ///====================================================== LOG MANAGER
    @Around("@annotation(org.springframework.web.bind.annotation.RequestMapping)"
            + " && execution(org.springframework.web.servlet.ModelAndView *(..))"
            + " && @annotation(org.sadr.web.main._core.meta.annotation.LogManagerTask)")
    public ModelAndView logManagerAspect(ProceedingJoinPoint joinPoint) throws Throwable {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
        User u = (User) request.getSession().getAttribute("sUser");
        try {
            Task task = taskService.fetchTask(joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName());

            if (u == null) {
                this.logService.log(
                        new Log(
                                null, request,
                                "As LogManager- Dispatched to <" + TtHttpErrorCode___.Unauthorized_401 + "> [401: Not Access]",
                                TtLogHandler.AuthorizerAspect, task, u)
                );
                return TtHttpErrorCode___.Unauthorized_401.___getFrontDisModel();
            }
            if (u.getIsLogManager()) {
                //==========================  CHANGE PASSWORD
                if (u.getIsNeedToChangePassword() == true
                        && !((MethodSignature) joinPoint.getSignature()).getMethod().isAnnotationPresent(OverChangePassword.class)) {
                    //*********(log)********* change password LogManager
                    this.logService.log(
                            new Log(
                                    null, request,
                                    "As LogManager- Dispatched to < " + TtTile___.p_user_changeYourPass.getCode() + " > [Change Password]",
                                    TtLogHandler.AuthorizerAspect, task, u)
                    );
                    return Referer.redirect("/panel/user/your-pass?expired=true");
                }

                String taskSignature = joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName();
                if (taskService.isNeedToConfirm(taskSignature) && !userConfirmService.isConfirmed(u, taskSignature)) {
                    //*********(log)********* LogManager
                    this.logService.log(
                            new Log(
                                    null, request,
                                    "As LogManager- Dispatched to <" + TtTile___.p_user_reSignin + "> [Need Two Step Confirm]",
                                    TtLogHandler.AuthorizerAspect, task, u)
                    );
                    return TtTile___.p_user_reSignin.___getDisModel("/panel/user/reSignin")
.addObject("taskSignature", taskSignature)
.addObject("reSignUrl", request.getServletPath() + (request.getQueryString() == null ? "" : "?" + request.getQueryString()));
                }

                ModelAndView andView = (ModelAndView) joinPoint.proceed();
                //*********(log)********* logManger
                this.logService.log(new Log(
                        andView,
                        request,
                        "As LogManager- Dispatched to <" + andView.getViewName() + ">",
                        TtLogHandler.AuthorizerAspect,
                        task, u));
                return fillAndView(request, task, andView);
            }
            if (u.getLevel() != TtUserLevel.Client
                    && !((MethodSignature) joinPoint.getSignature()).getMethod().isAnnotationPresent(Front.class)) {
                this.logService.log(
                        new Log(
                                null, request,
                                "As LogManager- Dispatched to <" + TtHttpErrorCode___.Forbidden_403 + "> [403: Not Access]",
                                TtLogHandler.AuthorizerAspect, task, u)
                );
                return TtHttpErrorCode___.Forbidden_403.___getPanelDisModel();
            }
            this.logService.log(
                    new Log(
                            null, request,
                            "As - Dispatched to <" + TtHttpErrorCode___.NotFound_404 + ">",
                            TtLogHandler.AuthorizerAspect, task, u)
            );
            return TtHttpErrorCode___.NotFound_404.___getFrontDisModel();
        } catch (Exception e) {
            return catchException(e, joinPoint, request, TtIrrorPlace.AspectLogManager);
        }
    }

    @Around("@annotation(org.springframework.web.bind.annotation.RequestMapping)"
            + " && execution(org.springframework.http.ResponseEntity *(..))"
            + " && @annotation(org.sadr.web.main._core.meta.annotation.LogManagerTask)")
    public ResponseEntity<String> jsonLogManagerAspect(ProceedingJoinPoint joinPoint) throws Throwable {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
        User u = (User) request.getSession().getAttribute("sUser");
        try {
            if (u == null || (!u.getIsSuperAdmin() && !u.getIsLogManager())) {
                return Ison.init()
                        .setStatus(TtIsonStatus.Nok)
                        .setMessages(Notice2.addNotices(new Notice2("N.http.error.401.des", TtNotice.Danger)))
                        .toResponse();
            }
            return (ResponseEntity<String>) joinPoint.proceed();

        } catch (Exception e) {
            long errorId = catchExceptionJson(e,
                    joinPoint,
                    ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest()
                    , TtIrrorPlace.JsonAspectMain);
            return Ison.init()
                    .setStatus(TtIsonStatus.Nok)
                    .setMessages(Notice2.addNotices(new Notice2("N1.aspect.public.error.500", TtNotice.Danger, "" + errorId)))
                    .toResponse();
        }
    }

}
