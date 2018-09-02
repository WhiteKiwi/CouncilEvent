using System;

namespace CouncilEvent {
	public partial class Default : System.Web.UI.Page {
		protected void Page_Load(object sender, EventArgs e) {
			// 세션이 비어 있을 경우
			if (Session["UserID"] == null) {
				// 로그인 페이지로 Redirect
				Response.Redirect("/Login.aspx");
			}
		}
	}
}