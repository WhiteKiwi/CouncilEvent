using CouncilEvent.managers;
using CouncilEvent.Models;
using System;

namespace CouncilEvent {
	public partial class Evaluate : System.Web.UI.Page {
		protected void Page_Load(object sender, EventArgs e) {
			// 세션이 비어 있을 경우
			if (Session["UserID"] == null) {
				// 로그인 페이지로 Redirect
				Response.Redirect("/Login.aspx");
			}
		}

		protected void Check_Click(object sender, EventArgs e) {
			if (!string.IsNullOrEmpty(Score.Text)) {
				if (100 >= int.Parse(Score.Text) && int.Parse(Score.Text) >= 0) {
					EventManager.AddScore(new Event {
						UserID = (string)Session["UserID"],
						Score = int.Parse(Score.Text),
						SingerNumber = int.Parse(Request.QueryString["singer"])
					});

					Response.Redirect(Request.RawUrl);
				} else {
					Response.Write("<script>alert('점수는 100보다 작고 0보다 커야합니다.')</script>");
				}
			} else {
				Response.Write("<script>alert('점수를 입력해주세요.')</script>");
			}
		}
	}
}