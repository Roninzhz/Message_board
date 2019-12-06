using Message_Board;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsersManager
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected int getUserIdByName(string name,string pwd)
        {
            int id = 0;

            BBSDataContext lq = new BBSDataContext();
            var users = from gt in lq.Users
                        where gt.uName == name && gt.uPwd == pwd
                        select gt;
            foreach (Users user in users)
                id = user.uID;
            return id;
        }
        protected void submit_Click(object sender, EventArgs e)
        {
            string name = txtUName.Text;
            string pwd = txtUPwd.Text;
            int uID = getUserIdByName(name, pwd);
            if (uID != 0)
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('登陆成功');location.href='BBSNoteList.aspx'</script");
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('用户名和密码不正确')</script");
            }
        }
    }
}