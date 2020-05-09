package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import domain.Video;

final public class VideoDao extends AbstractDao {
	
	public VideoDao() {
		
	}
	
	public List<Video> findAll() {
		EntityManager em = createEntityManager();
		Query q = em.createQuery("SELECT v FROM Video v");
		@SuppressWarnings("unchecked")
		List<Video> resultList = q.getResultList();
		em.close();
		return resultList;
	}
	
	public void save(Video video) {
		EntityManager em = createEntityManager();
		em.getTransaction().begin();
		em.persist(video);
		em.getTransaction().commit();
		em.close();	
	}
	
	public ArrayList<Video> getRandomVideos() {
		EntityManager em = createEntityManager();
		Query q1 = em.createQuery("SELECT v FROM Video v");
		@SuppressWarnings("unchecked")
		List<Video> video = q1.getResultList();
		Video v1 = video.get((new Random()).nextInt(video.size()));
		Video v2 = video.get((new Random()).nextInt(video.size()));
		
		while(v1.getVideoId() == v2.getVideoId())
		{
			v2 = video.get((new Random()).nextInt(video.size()));
		}
		
		ArrayList<Video> resultList = new ArrayList<>();
		resultList.add(v1);
		resultList.add(v2);
		
		em.close();
		
		return resultList;
	}
	
	public ArrayList<Video> getTop5(){
		
		EntityManager em = createEntityManager();
		Query q1 = em.createQuery("SELECT v FROM Video v order by -v.positiveVotes ");
		@SuppressWarnings("unchecked")
		List<Video> result = q1.setMaxResults(5).getResultList();
		ArrayList<Video> resultList = new ArrayList<Video>();
		
		for(Video el: result)
			resultList.add(el);
		
		return resultList;
	}
}
