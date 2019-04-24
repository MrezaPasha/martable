package org.sadr.web.main.note.note;

import org.hamcrest.Matchers;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.sadr.config.AbstractContextControllerTests;
import org.sadr.utils.MockObjectBuilder;
import org.sadr.utils.MockObjectInstances;
import org.sadr.web.main._core._type.TtTile___;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MvcResult;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@RunWith(SpringJUnit4ClassRunner.class)
public class NoteControllerTest extends AbstractContextControllerTests {

    ////////////////////
    private final String _PANEL_URL = "/panel/note";

    //#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=# pListTest  #
    //============================= pListTest_accessTo  #
    @Test
    public void pListTest_accessTo() throws Exception  {
        //----------------------- Guest
        this.mockMvc
                .perform(
                        get(_PANEL_URL + "/list")
                                .session(session)
                                .accept(MediaType.TEXT_HTML)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name(TtTile___.f_e_401.getCode()))
                .andExpect(model().hasNoErrors())
        ;

        //----------------------- LogManager
        this.signinAsLogManager();
        this.mockMvc
                .perform(
                        get(_PANEL_URL + "/list")
                                .session(session)
                                .accept(MediaType.TEXT_HTML)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name(TtTile___.p_e_401.getCode()))
                .andExpect(model().hasNoErrors())
        ;

        //----------------------- Admin
        this.signinAsAdmin();
        this.mockMvc
                .perform(
                        get(_PANEL_URL + "/list")
                                .session(session)
                                .accept(MediaType.TEXT_HTML)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name(TtTile___.p_note_list.getCode()))
                .andExpect(model().hasNoErrors())
                .andExpect(model().attributeExists("searchId", "cols"))
        ;
    }
    //............................. pListTest_accessTo  #

    //============================= pListTest_post_submit  #
    @Test
    public void pListTest_post_ajax_submit() throws Exception {

        //----------------------- Check Access
        this.mockMvc
                .perform(
                        post(_PANEL_URL + "/list")
                                .contentType(MediaType.APPLICATION_JSON)
                                .param("ap", MockObjectInstances.getInstance().getListAP())
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON_UTF8))
                .andExpect(jsonPath("$.status").value("nok"))
                .andExpect(jsonPath("$.messages", Matchers.hasSize(1)))
                .andExpect(jsonPath("$.result", Matchers.anEmptyMap()))
        ;

        //----------------------- Success List LogManager
        this.signinAsLogManager();
        this.mockMvc
                .perform(
                        post(_PANEL_URL + "/list")
                                .session(session)
                                .contentType(MediaType.APPLICATION_JSON)
                                .param("ap", MockObjectInstances.getInstance().getListAP())
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON_UTF8))
                .andExpect(jsonPath("$.status").value("nok"))
                .andExpect(jsonPath("$.messages", Matchers.hasSize(1)))
                .andExpect(jsonPath("$.result", Matchers.anEmptyMap()))
        ;

        //----------------------- Success List Admin
        this.signinAsAdmin();
        this.mockMvc
                .perform(
                        post(_PANEL_URL + "/list")
                                .session(session)
                                .contentType(MediaType.APPLICATION_JSON)
                                .param("ap", MockObjectInstances.getInstance().getListAP())
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON_UTF8))
                .andExpect(jsonPath("$.status").value("ok"))
                .andExpect(jsonPath("$.result").isNotEmpty())
        ;
    }
    //............................. pListTest_post_submit  #


    //#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=# pDetailsTest  #
    //============================= pDetailsTest_accessTo  #
    @Test
    public void pDetailsTest_accessTo() throws Exception {
        //----------------------- Guest
        this.mockMvc
                .perform(
                        get(_PANEL_URL + "/details/0")
                                .session(session)
                                .accept(MediaType.TEXT_HTML)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name(TtTile___.f_e_401.getCode()))
                .andExpect(model().hasNoErrors())
        ;

        Note realNote = MockObjectInstances.getInstance().getRealNote();

        //----------------------- LogManager
        this.signinAsLogManager();
        this.mockMvc
                .perform(
                        get(_PANEL_URL + "/details/" + realNote.getId())
                                .session(session)
                                .accept(MediaType.TEXT_HTML)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name(TtTile___.p_e_401.getCode()))
                .andExpect(model().hasNoErrors())
                .andExpect(model().attributeDoesNotExist("note"))
        ;

        //----------------------- Admin
        this.signinAsAdmin();
        this.mockMvc
                .perform(
                        get(_PANEL_URL + "/details/" + realNote.getId())
                                .session(session)
                                .accept(MediaType.TEXT_HTML)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name(TtTile___.p_note_details.getCode()))
                .andExpect(model().hasNoErrors())
                .andExpect(model().attributeExists("note"))
        ;
    }
    //............................. pDetailsTest_accessTo  #


    //#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=# pTrashTest  #
    //============================= pTrashTest_accessTo  #
    @Test
    public void pTrashTest_ajax_accessTo() throws Exception {
        //----------------------- Guest
        this.mockMvc
                .perform(
                        get(_PANEL_URL + "/trash/0")
                                .contentType(MediaType.APPLICATION_JSON)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON_UTF8))
                .andExpect(jsonPath("$.status").value("nok"))
                .andExpect(jsonPath("$.messages", Matchers.hasSize(1)))
                .andExpect(jsonPath("$.result", Matchers.anEmptyMap()))
        ;

        //----------------------- LogManager
        this.signinAsLogManager();
        this.mockMvc
                .perform(
                        get(_PANEL_URL + "/trash/0")
                                .session(session)
                                .contentType(MediaType.APPLICATION_JSON)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON_UTF8))
                .andExpect(jsonPath("$.status").value("nok"))
                .andExpect(jsonPath("$.messages", Matchers.hasSize(1)))
                .andExpect(jsonPath("$.result", Matchers.anEmptyMap()))
        ;
    }
    //............................. pTrashTest_accessTo  #

    //============================= pTrashTest_do  #
    @Test
    public void pTrashTest_ajax_do() throws Exception {

        //----------------------- Not Found
        this.signinAsAdmin();
        this.mockMvc
                .perform(
                        get(_PANEL_URL + "/trash/0")
                                .session(session)
                                .contentType(MediaType.APPLICATION_JSON)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON_UTF8))
                .andExpect(jsonPath("$.status").value("nok"))
                .andExpect(jsonPath("$.messages", Matchers.hasSize(1)))
                .andExpect(jsonPath("$.result", Matchers.anEmptyMap()))
        ;

        //----------------------- Success
        MvcResult mvcResult = this.mockMvc
                .perform(
                        MockObjectBuilder
                                .postForm(_PANEL_URL + "/create", MockObjectInstances.getInstance().getNote(true))
                                .session(session)
                )
                .andDo(print())
                .andExpect(status().isFound())
                .andExpect(redirectedUrl(_PANEL_URL + "/create"))
                .andExpect(flash().attributeExists("notice"))
                .andReturn();

        String viewName = mvcResult.getModelAndView().getViewName();
        if (viewName != null && viewName.indexOf("/") != -1) {
            try {
                Integer integer = Integer.valueOf(viewName.substring(viewName.lastIndexOf("/") + 1));

                this.mockMvc
                        .perform(
                                get(_PANEL_URL + "/trash/" + integer)
                                        .session(session)
                                        .contentType(MediaType.APPLICATION_JSON)
                        )
                        .andDo(print())
                        .andExpect(status().isOk())
                        .andExpect(content().contentType(MediaType.APPLICATION_JSON_UTF8))
                        .andExpect(jsonPath("$.status").value("ok"))
                        .andExpect(jsonPath("$.messages", Matchers.hasSize(1)))
                        .andExpect(jsonPath("$.result", Matchers.anEmptyMap()))
                ;

            } catch (Exception x) {
            }
        }
    }
    //............................. pTrashTest_do  #


    //#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=# pCreateTest  #
    //============================= pCreateTest_accessTo  #
    @Test
    public void pCreateTest_accessTo() throws Exception {
        //----------------------- Guest
        this.mockMvc
                .perform(
                        get(_PANEL_URL + "/create")
                                .session(session)
                                .accept(MediaType.TEXT_HTML)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name(TtTile___.f_e_401.getCode()))
                .andExpect(model().hasNoErrors())
        ;

        //----------------------- LogManager
        this.signinAsLogManager();
        this.mockMvc
                .perform(
                        get(_PANEL_URL + "/create")
                                .session(session)
                                .accept(MediaType.TEXT_HTML)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name(TtTile___.p_e_401.getCode()))
                .andExpect(model().hasNoErrors())
                .andExpect(model().attributeDoesNotExist("note", "action"))
        ;

        //----------------------- Admin
        this.signinAsAdmin();
        this.mockMvc
                .perform(
                        get(_PANEL_URL + "/create")
                                .session(session)
                                .accept(MediaType.TEXT_HTML)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name(TtTile___.p_note_create.getCode()))
                .andExpect(model().hasNoErrors())
                .andExpect(model().attributeExists("note", "action"))
        ;
    }
    //............................. pCreateTest_accessTo  #

    //============================= pCreateTest_post_submit  #
    @Test
    public void pCreateTest_post_submit() throws Exception {
        Note objNote = MockObjectInstances.getInstance().getNote(true);

        //----------------------- Check Access
        this.mockMvc
                .perform(
                        MockObjectBuilder
                                .postForm(_PANEL_URL + "/create", objNote)
                                .session(session)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name(TtTile___.f_e_401.getCode()))
        ;

        this.signinAsAdmin();

        //----------------------- First Create
        this.mockMvc
                .perform(
                        MockObjectBuilder
                                .postForm(_PANEL_URL + "/create", objNote)
                                .session(session)
                )
                .andDo(print())
                .andExpect(status().isFound())
                .andExpect(redirectedUrl(_PANEL_URL + "/create"))
                .andExpect(flash().attributeExists("notice"))
        ;


        //----------------------- Repeat Create
        this.mockMvc
                .perform(
                        MockObjectBuilder
                                .postForm(_PANEL_URL + "/create", objNote)
                                .session(session)
                )
                .andDo(print())
                .andExpect(status().isFound())
                .andExpect(flash().attributeExists("notice"))
        ;
    }
    //............................. pCreateTest_post_submit  #


    //#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=# pEditTest  #
    //============================= pEditTest_accessTo  #
    @Test
    public void pEditTest_accessTo() throws Exception {
        //----------------------- Guest
        this.mockMvc
                .perform(
                        get(_PANEL_URL + "/edit/0")
                                .session(session)
                                .accept(MediaType.TEXT_HTML)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name(TtTile___.f_e_401.getCode()))
                .andExpect(model().hasNoErrors())
        ;

        Note realNote = MockObjectInstances.getInstance().getRealNote();

        //----------------------- LogManager
        this.signinAsLogManager();
        this.mockMvc
                .perform(
                        get(_PANEL_URL + "/edit/" + realNote.getId())
                                .session(session)
                                .accept(MediaType.TEXT_HTML)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name(TtTile___.p_e_401.getCode()))
                .andExpect(model().hasNoErrors())
                .andExpect(model().attributeDoesNotExist("note", "action"))
        ;

        //----------------------- Admin
        this.signinAsAdmin();
        this.mockMvc
                .perform(
                        get(_PANEL_URL + "/edit/" + realNote.getId())
                                .session(session)
                                .accept(MediaType.TEXT_HTML)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name(TtTile___.p_note_edit.getCode()))
                .andExpect(model().hasNoErrors())
                .andExpect(model().attributeExists("note", "action"))
        ;
    }
    //............................. pEditTest_accessTo  #

    //============================= pEditTest_post_submit  #
    @Test
    public void pEditTest_post_submit() throws Exception {

        //----------------------- Check Access
        this.mockMvc
                .perform(
                        MockObjectBuilder
                                .postForm(_PANEL_URL + "/edit", MockObjectInstances.getInstance().getNote(true))
                                .session(session)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name(TtTile___.f_e_401.getCode()))
        ;

        Note realNote = MockObjectInstances.getInstance().getRealNote();
        this.signinAsAdmin();

        //----------------------- Success Edit
        this.mockMvc
                .perform(
                        MockObjectBuilder
                                .postForm(_PANEL_URL + "/edit", realNote)
                                .session(session)
                )
                .andDo(print())
                .andExpect(status().isFound())
                .andExpect(redirectedUrlPattern(_PANEL_URL + "/edit/*"))
                .andExpect(flash().attributeExists("notice"))
        ;

        //----------------------- Not Found  Note 
        this.mockMvc
                .perform(
                        MockObjectBuilder
                                .postForm(_PANEL_URL + "/edit", MockObjectInstances.getInstance().getNote(true))
                                .session(session)
                )
                .andDo(print())
                .andExpect(status().isFound())
                .andExpect(flash().attributeExists("notice", "note"))
        ;
    }
    //............................. pEditTest_post_submit  #

    //============================= pEditTest_notFound  #
    @Test
    public void pEditTest_notFound() throws Exception {

        //-----------------------
        this.signinAsAdmin();
        this.mockMvc
                .perform(
                        get(_PANEL_URL + "/edit/0")
                                .session(session)
                                .accept(MediaType.TEXT_HTML)
                )
                .andDo(print())
                .andExpect(status().isFound())
                .andExpect(model().hasNoErrors())
                .andExpect(redirectedUrl(_PANEL_URL + "/list"))
                .andExpect(flash().attributeExists("notice"))
        ;
    }
    //............................. pEditTest_notFound  #


    //#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=#=##=# pSyncTest  #

}
