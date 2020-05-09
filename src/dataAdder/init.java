package dataAdder;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Random;

import com.github.javafaker.Faker;

import dao.VideoDao;
import domain.Video;
import service.VideoService;

public class init {
	public static void main(String[] args) {
		VideoService videoService = new VideoService(new VideoDao());
		Faker faker = new Faker();
		Random rand = new Random();
		Integer val = 10000;

		for (Integer i = 0; i < 10; ++i) {
			String title_id = faker.music().genre();
			try {
				FileReader readfile = new FileReader("yt_videos.txt");
				BufferedReader readbuffer = new BufferedReader(readfile);
				String s;
				while (readbuffer.read() != -1) {
					Video video = new Video();
					s = readbuffer.readLine();
					String[] parts = s.split(";");
					video.setVideoId(parts[0]);
					video.setVideoName((char) (i + 'A') + " (" + title_id + ") " + parts[1]);
					Integer randPos = rand.nextInt(val);
					Integer randTotal = rand.nextInt(val);
					while (randTotal < randPos)
						randTotal = rand.nextInt(val);
					video.setPositiveVotes(randPos);
					video.setTotalVotes(randTotal);
					video.setRank(randPos, randTotal);
					videoService.create(video);
				}
				readbuffer.close();
			} catch (IOException e) {
				System.out.println("Greska" + e);
			}
		}
		System.out.println("The data is in the database");
	}
}