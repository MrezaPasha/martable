package org.sadr.share.main.admin.account.group;

import org.sadr._core.meta.annotation.PersianName;
import org.sadr._core.meta.generic.GenericControllerImpl;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author masoud
 */
@RestController
@PersianName("***")
public class AccountGroupController extends GenericControllerImpl<AccountGroup, AccountGroupService> {

    public AccountGroupController() {
    }
}
