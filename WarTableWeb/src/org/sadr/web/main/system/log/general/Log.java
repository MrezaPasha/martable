package org.sadr.web.main.system.log.general;

import org.aspectj.lang.ProceedingJoinPoint;
import org.sadr._core._type.TtEntityState;
import org.sadr._core._type.TtYesNo;
import org.sadr._core.meta.annotation.PersianName;
import org.sadr._core.meta.generic.GenericDataModel;
import org.sadr._core.utils.OutLog;
import org.sadr._core.utils.ParsCalendar;
import org.sadr._core.utils._type.TtCookierVariable;
import org.sadr.web.main._core.propertor.PropertorInLog;
import org.sadr.web.main._core.propertor._type.TtPropertorInLogList;
import org.sadr.web.main._core.utils.Cookier;
import org.sadr.web.main._core.utils.Notice2;
import org.sadr.web.main.admin._type.TtUserLevel;
import org.sadr.web.main.admin.user.group.UserGroup;
import org.sadr.web.main.admin.user.user.User;
import org.sadr.web.main.system._type.*;
import org.sadr.web.main.system.task.Task;
import org.springframework.validation.support.BindingAwareModelMap;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.servlet.http.HttpServletRequest;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

/**
 * @author masoud
 */
@PersianName("رویدادنگاری محلی")
@Entity
@Table(name = "Web.System.Log")
public class Log extends GenericDataModel<Log> implements Serializable {
//#########++++++#######// StaticFields: Start //
public static final String SERVER_ID = "serverId";public static final String IMPORTANCE_LEVEL = "importanceLevel";public static final String SENSITIVITY = "sensitivity";public static final String ACTION_TYPE = "actionType";public static final String USER_ID = "userId";public static final String USER_LEVEL = "userLevel";public static final String USER_GROUP_ID = "userGroupId";public static final String DATE_TIME_G = "dateTimeG";public static final String TASK_NAME = "taskName";public static final String TASK_TITLE = "taskTitle";public static final String IS_TASK_TWO_LEVEL_CONFIRM = "isTaskTwoLevelConfirm";public static final String MESSAGE = "message";public static final String SESSION_ID = "sessionId";public static final String COMPUTER_SIGNATURE = "computerSignature";public static final String AGENT_SIGNATURE = "agentSignature";public static final String PORTER_UUID = "porterUuid";public static final String PORT_NUMBER = "portNumber";public static final String URL = "url";public static final String REQUEST_METHOD = "requestMethod";public static final String HTTP_CODE = "httpCode";public static final String SEND_DATE_TIME_G = "sendDateTimeG";public static final String SEND_STATUS = "sendStatus";public static final String ONLINE_LOGGING_STRATEGY = "onlineLoggingStrategy";public static final String $IS_TASK_TWO_LEVEL_CONFIRM_Y = "isTaskTwoLevelConfirmY";public static final String $ACT_COLUMNS = "actColumns";public static final String $REL_COLUMNS = "relColumns";public static final String $SEND_DATE_TIME = "sendDateTime";public static final String $VIR_COLUMNS = "virColumns";private static String[] actColumns;private static String[] relColumns;private static String[] virColumns;public static void setAvrColumns(String acts, String virts, String rels) {if (acts != null) {actColumns = acts.split(",");}if (virts != null) {virColumns = virts.split(",");}if (rels != null) {relColumns = rels.split(",");}}public static String[] getActColumns() {return actColumns;} public static String[] getVirColumns() {return virColumns;} public static String[] getRelColumns() {return relColumns;} 
//#########******#######// StaticFields: End //

    private static final int MESSAGE_LEN = 2048;

    public Log() {
    }

    public Log(ProceedingJoinPoint joinPoint,
               HttpServletRequest request, String message,
               TtLogHandler handler,
               Task task,
               User user) {

        this.serverId = PropertorInLog.getInstance().getProperty(TtPropertorInLogList.ServerIdentity);


        String json = "{\"handler\":\"" + handler
                + "\",\"msg\":\"" + message
                + "\",\"uri\":\"" + request.getRequestURI() + "\"";
        if (request.getQueryString() != null) {
            json += ",\"QueryStr\":\"" + request.getQueryString() + "\"";
        }
        for (Object arg : joinPoint.getArgs()) {
            if (arg instanceof BindingAwareModelMap) {
                for (Map.Entry<String, Object> entrySet : ((BindingAwareModelMap) arg).entrySet()) {
                    Object value = entrySet.getValue();
                    if (value instanceof org.sadr.web.main._core.utils.Notice2[]) {
                        json += ",\"Notice2\":" + Arrays.toString((Notice2[]) value);
                    }
                }
            }
        }
        json += "}";

//        this.logLevel = logLevel;
//        this.threatLevel = threatLevel;
        this.url = request.getRequestURL().toString();
        if (this.url.contains("/er/")) {
            this.httpCode = this.url.substring(this.url.indexOf("/er/") + 4);
        }
        this.portNumber = request.getServerPort();
        if (user != null) {
            this.userLevel = user.getLevel();
            this.userId = user.getId();
        }


        this.message = json.length() < MESSAGE_LEN ? json : json.substring(0, MESSAGE_LEN);
        if (task != null) {
            this.actionType = task.getActionType();
            this.taskName = task.getSignature();
            this.taskTitle = task.getTitle();
            this.sensitivity = task.getSensitivity();
            this.importanceLevel = task.getImportanceLevel();
            this.isTaskTwoLevelConfirm = task.getIsTwoLevelConfirm();
            //----------------- send info
            this.onlineLoggingStrategy = task.getOnlineLoggingStrategy();
            if (this.onlineLoggingStrategy != null) {
                switch (this.onlineLoggingStrategy) {
                    case WithDelay:
                        this.sendDateTimeG = new Date().getTime() + (task.getOnlineLoggingDelay() * 60000);
                        break;
                    case Scheduling:
                        String t = task.getOnlineSchedulingTime();
                        int h, m, s;
                        h = m = s = 0;
                        if (t != null) {
                            String[] st = t.split(":");
                            if (t.length() > 1) {
                                try {
                                    h = Integer.parseInt(st[0]);
                                } catch (Exception e) {
                                }
                            }
                            if (t.length() > 2) {
                                try {
                                    m = Integer.parseInt(st[1]);
                                } catch (Exception e) {
                                }
                            }
                            if (t.length() > 3) {
                                try {
                                    s = Integer.parseInt(st[2]);
                                } catch (Exception e) {
                                }
                            }
                        }
                        Date date = new Date();
                        Calendar cal = Calendar.getInstance();
                        cal.set(Calendar.HOUR_OF_DAY, h);
                        cal.set(Calendar.MINUTE, m);
                        cal.set(Calendar.SECOND, s);

                        long timeInMillis = cal.getTimeInMillis();
                        if (timeInMillis < date.getTime()) {
                            cal.add(Calendar.DAY_OF_MONTH, 1);
                            OutLog.pl(cal.getTime().toString());
                        }
                        this.sendDateTimeG = cal.getTimeInMillis();
                        break;
                    default:
                        this.sendDateTimeG = new Date().getTime();
                        break;
                }
            }
        }

        this.setEntityState(TtEntityState.Exist);
        this.setCreateDateTime(ParsCalendar.getInstance().getShortDateTime());
        this.dateTimeG = new Date().getTime();

        this.agentSignature = request.getHeader("User-Agent");
        this.computerSignature = request.getRemoteAddr();
        this.porterUuid = Cookier.getValue(request, TtCookierVariable.UserPorterUUID.getKey());
        this.sessionId = request.getSession().getId();
        this.requestMethod = request.getMethod();

        this.sendStatus = TtLogOnlineSendStatus.NotSend;
    }

    public Log(ProceedingJoinPoint joinPoint, HttpServletRequest request, String message, TtLogHandler handler,
               Task task,
               User user, UserGroup ug) {
        this(joinPoint, request, message, handler, task, user);
        this.userGroupId = ug != null ? ug.getId() : 0;

    }

    /////////////////////////////////////

    @Size(max = 250)
    @PersianName("شناسه سامانه")
    private String serverId;

    @PersianName("سطح اهمیت")
    private TtTaskImportanceLevel importanceLevel;

    @PersianName("حساسیت")
    private TtTaskSensitivity sensitivity;

    @PersianName("نوع فعالیت")
    private TtTaskActionType actionType;

    //////////////////////////////////////

    @PersianName("شناسه کاربری")
    private long userId;

    @PersianName("سطح دسترسی کاربر")
    private TtUserLevel userLevel;

    @PersianName("شناسه گروه کاربری")
    private long userGroupId;

    //////////////////////////////////////

    @PersianName("زمان")
    private long dateTimeG;

    @Size(max = 255)
    @PersianName("نام عملیات")
    private String taskName;

    @Size(max = 255)
    @PersianName("عنوان عملیات")
    private String taskTitle;

    @PersianName("عملیات دو سطحی")
    private Boolean isTaskTwoLevelConfirm;

    @Size(max = MESSAGE_LEN)
    @PersianName("پیغام")
    private String message;

    //////////////////////////////////////

    @Size(max = 255)
    @PersianName("شناسه نشست")
    private String sessionId;

    @Size(max = 255)
    @PersianName("امضای کامپیوتر")
    private String computerSignature;

    @Size(max = 255)
    @PersianName("امضای عامل")
    private String agentSignature;

    @Size(max = 255)
    @PersianName("UUID حامل")
    private String porterUuid;

    @PersianName("شماره پورت")
    private int portNumber;

    @Size(max = 512)
    @PersianName("آدرس URL")
    private String url;

    @PersianName("روش درخواست")
    private String requestMethod;

    @Size(max = 100)
    @PersianName("کد HTTP")
    private String httpCode;

    ///====================================  SEND LOG INFO

    @PersianName("زمان ارسال")
    private long sendDateTimeG;

    @PersianName("وضعیت ارسال")
    private TtLogOnlineSendStatus sendStatus;

    @PersianName("روش ارسال")
    private TtTaskOnlineLoggingStrategy onlineLoggingStrategy;

    ///#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=  CUSTOM METHODS

    @PersianName("زمان ارسال")
    public String getSendDateTime() {
        return ParsCalendar.getInstance().getShortDateTime(sendDateTimeG);
    }
    ///#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=   METHODS

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

//    public User getUser() {
//        return user;
//    }
//
//    public void setUser(User user) {
//        this.user = user;
//    }

    public long getDateTimeG() {
        return dateTimeG;
    }

    public void setDateTimeG(long dateTimeG) {
        this.dateTimeG = dateTimeG;
    }

//    public UserGroup getUserGroup() {
//        return userGroup;
//    }
//
//    public void setUserGroup(UserGroup userGroup) {
//        this.userGroup = userGroup;
//    }

    public String getSessionId() {
        return sessionId;
    }

    public void setSessionId(String sessionId) {
        this.sessionId = sessionId;
    }

    public String getComputerSignature() {
        return computerSignature;
    }

    public void setComputerSignature(String computerSignature) {
        this.computerSignature = computerSignature;
    }

    public String getAgentSignature() {
        return agentSignature;
    }

    public void setAgentSignature(String agentSignature) {
        this.agentSignature = agentSignature;
    }

    public String getPorterUuid() {
        return porterUuid;
    }

    public void setPorterUuid(String porterUuid) {
        this.porterUuid = porterUuid;
    }

    public int getPortNumber() {
        return portNumber;
    }

    public void setPortNumber(int portNumber) {
        this.portNumber = portNumber;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

//    public TtSecurityThreatLevel getThreatLevel() {
//        return threatLevel;
//    }
//
//    public void setThreatLevel(TtSecurityThreatLevel threatLevel) {
//        this.threatLevel = threatLevel;
//    }
//
//    public TtLogLevel getLogLevel() {
//        return logLevel;
//    }
//
//    public void setLogLevel(TtLogLevel logLevel) {
//        this.logLevel = logLevel;
//    }

    public TtUserLevel getUserLevel() {
        return userLevel;
    }

    public void setUserLevel(TtUserLevel userLevel) {
        this.userLevel = userLevel;
    }

    public String getHttpCode() {
        return httpCode;
    }

    public void setHttpCode(String httpCode) {
        this.httpCode = httpCode;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public long getUserGroupId() {
        return userGroupId;
    }

    public void setUserGroupId(long userGroupId) {
        this.userGroupId = userGroupId;
    }

    public TtTaskImportanceLevel getImportanceLevel() {
        return importanceLevel;
    }

    public void setImportanceLevel(TtTaskImportanceLevel importanceLevel) {
        this.importanceLevel = importanceLevel;
    }

    public TtTaskSensitivity getSensitivity() {
        return sensitivity;
    }

    public void setSensitivity(TtTaskSensitivity sensitivity) {
        this.sensitivity = sensitivity;
    }

    public String getRequestMethod() {
        return requestMethod;
    }

    public void setRequestMethod(String requestMethod) {
        this.requestMethod = requestMethod;
    }

    public String getServerId() {
        return serverId;
    }

    public void setServerId(String serverId) {
        this.serverId = serverId;
    }

    public String getTaskTitle() {
        return taskTitle;
    }

    public void setTaskTitle(String taskTitle) {
        this.taskTitle = taskTitle;
    }

    public Boolean getIsTaskTwoLevelConfirm() {
        return isTaskTwoLevelConfirm;
    }

    public void setIsTaskTwoLevelConfirm(Boolean taskTwoLevelConfirm) {
        isTaskTwoLevelConfirm = taskTwoLevelConfirm;
    }

    public TtYesNo getIsTaskTwoLevelConfirmY() {
        return TtYesNo.getValueByBool(isTaskTwoLevelConfirm);
    }

    public void setIsTaskTwoLevelConfirmY(TtYesNo taskTwoLevelConfirm) {
        isTaskTwoLevelConfirm = taskTwoLevelConfirm.getBoolean();
    }

    public long getSendDateTimeG() {
        return sendDateTimeG;
    }

    public void setSendDateTimeG(long sendDateTimeG) {
        this.sendDateTimeG = sendDateTimeG;
    }

    public TtLogOnlineSendStatus getSendStatus() {
        return sendStatus;
    }

    public void setSendStatus(TtLogOnlineSendStatus sendStatus) {
        this.sendStatus = sendStatus;
    }

    public TtTaskOnlineLoggingStrategy getOnlineLoggingStrategy() {
        return onlineLoggingStrategy;
    }

    public void setOnlineLoggingStrategy(TtTaskOnlineLoggingStrategy onlineLoggingStrategy) {
        this.onlineLoggingStrategy = onlineLoggingStrategy;
    }

    public TtTaskActionType getActionType() {
        return actionType;
    }

    public void setActionType(TtTaskActionType actionType) {
        this.actionType = actionType;
    }
}