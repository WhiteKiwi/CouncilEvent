using MySql.Data.MySqlClient;
using System;

namespace Score {
	class Program {
		static void Main(string[] args) {
			// Connect to DB
			using (var conn = new MySqlConnection("Server=45.76.222.237;Database=CNSACouncil;UID=dbcouncil;password=cnsa140301;CharSet=utf8;SslMode=none;")) {
				conn.Open();

				Console.Write("참가자 번호: ");
				string singerNumber = Console.ReadLine();

				string commandText = "SELECT Score FROM events WHERE SingerNumber='"+singerNumber+"';";
				var cmd = new MySqlCommand(commandText, conn);

				long score = 0;
				int count = 0;
				var rdr = cmd.ExecuteReader();
				while (rdr.Read()) {
					score += Convert.ToInt32(rdr["Score"]);
					count++;
				}

				Console.WriteLine("평균점수: " + ((float)score / (count == 0 ? 1 : count)));

				// Connection Close
				conn.Close();
			}
		}
	}
}