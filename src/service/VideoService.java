package service;

import java.util.ArrayList;
import java.util.List;

import dao.VideoDao;
import domain.Video;

public class VideoService {

	private VideoDao videoDao;
	
	public VideoService(VideoDao videoDao) {
		this.videoDao = videoDao;
	}
	
	public void create(Video video) {
		videoDao.save(video);
	}
	
	public List<Video> findAll() {
		return videoDao.findAll();
	}
	
	public ArrayList<Video> getRand() {
		return videoDao.getRandomVideos();
	}
	
	public ArrayList<Video> getTop5(){
		return videoDao.getTop5();
	}
 	
}
