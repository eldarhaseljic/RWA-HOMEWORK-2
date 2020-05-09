package domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "videos")
public class Video {

	@Column(name = "video_id")
	private String videoId;
	
	@Id
	@Column(name = "video_name")
	private String videoName;
	
	@Column(name = "positive_votes")
	private Integer positiveVotes;
	@Column(name = "total_votes")
	private Integer totalVotes;

	public String getVideoId() {
		return videoId;
	}

	public void setVideoId(String videoId) {
		this.videoId = videoId;
	}

	public String getVideoName() {
		return videoName;
	}

	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}

	public Integer getPositiveVotes() {
		return positiveVotes;
	}

	public void setPositiveVotes(Integer positiveVotes) {
		this.positiveVotes = positiveVotes;
	}

	public Integer getTotalVotes() {
		return totalVotes;
	}

	public void setTotalVotes(Integer totalVotes) {
		this.totalVotes = totalVotes;
	}

	@Override
	public String toString() {
		return "video_id=" + videoId + ", video_name=" + videoName + ", positive_votes=" + positiveVotes
				+ ", total_votes=" + totalVotes;
	}
}