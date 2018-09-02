using CouncilEvent.Models;
using MySql.Data.MySqlClient;
using System;

namespace CouncilEvent.managers {
	public class EventManager {
		// Table Name
		private const string EVENTS = "events";

		/// <summary>
		/// 점수주는 메서드
		/// </summary>
		/// <param name="event1">Event class in Models</param>  
		/// <see cref="Event"/>
		public static void AddScore(Event event1) {
			// Connect to DB
			using (var conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["COUNCILDB"].ConnectionString)) {
				conn.Open();

				// Command Text - Create
				string commandText = "INSERT INTO " + EVENTS + "(UserID, Score, SingerNumber) VALUES (?, ?, ?);";
				var cmd = new MySqlCommand(commandText, conn);
				cmd.Parameters.Add("UserID", MySqlDbType.VarChar).Value = event1.UserID;
				cmd.Parameters.Add("Score", MySqlDbType.Int32).Value = event1.Score;
				cmd.Parameters.Add("SingerNumber", MySqlDbType.Int32).Value = event1.SingerNumber;

				try {
					cmd.ExecuteNonQuery();
				} catch (Exception e) {
				}

				// Connection Close
				conn.Close();
			}
		}

		/// <summary>
		/// 내 점수 가져오는 메서드
		/// </summary>
		/// <param name="UserID">User's ID</param>  
		/// <param name="SingerNumber">Singer Number</param>  
		/// <see cref="Event"/>
		public static int GetMyScore(string UserID, int SingerNumber) {
			// Connect to DB
			using (var conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["COUNCILDB"].ConnectionString)) {
				conn.Open();

				// Command Text - Create
				string commandText = "SELECT Score FROM " + EVENTS + " WHERE UserID='" + UserID + "' AND SingerNumber='" + SingerNumber + "'";
				var cmd = new MySqlCommand(commandText, conn);

				object result = cmd.ExecuteScalar();

				// Connection Close
				conn.Close();

				return result == null ? -1 : Convert.ToInt32(result);
			}
		}
	}
}