package test;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import dao.VideoDao;
import domain.Video;
import service.VideoService;

public class testBaza {
	public static void main(String[] args) {
		String PERSISTENCE_UNIT_NAME = "zadaca2";
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
		EntityManager em = emf.createEntityManager();

		Query q2 = em.createQuery("SELECT s FROM Video s");
		@SuppressWarnings("unchecked")
		List<Video> videos = q2.getResultList();

		for (Video o : videos)
			System.out.println(o);
		System.out.println();

		VideoService s = new VideoService(new VideoDao());
		ArrayList<Video> t = s.getVideos(5);

		for (Video o : t)
			System.out.println(o);
		System.out.println();
	}
}