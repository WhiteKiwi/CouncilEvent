namespace CouncilEvent.Models {
	/// <summary>
	/// Model of events table
	/// </summary>
	public class Event {
		public string UserID { get; set; } // USER ID

		public int Score { get; set; } // 점수

		public int SingerNumber { get; set; } // 참가자 번호
	}
}