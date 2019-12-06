using Message_Board;
using System;
//using Message_Board;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsersManager
{
    public partial class BBSNoteLIst : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["uID"]==null)
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('请先登录！');location.href='Login.aspx'</script");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            BBSDataContext lq = new BBSDataContext();
            BBSNote note = new BBSNote();
            note.bnSubject = txtbnSubject.Text;
            note.bnContent = txtbnContent.Text;
            note.bnID = Convert.ToInt16(Session["uID"].ToString());
            note.bnAddTime = System.DateTime.Now;
            lq.BBSNote.InsertOnSubmit(note);
            lq.SubmitChanges();
            Response.Redirect("BBSNoteList.aspx");
        }
    }
}