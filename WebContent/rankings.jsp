<%@page import="domain.Video"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.VideoDao"%>
<%@page import="service.VideoService"%>
<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- Add icon library -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/stylesheet.css" type="text/css">
<link rel="icon" href="images/top10.png" type="image/icon type">
<title>Rankings</title>
</head>

<body>

	<div class="bar">
		<a href="index.jsp"> <span class="bar bar-span">Video
				voting competition</span></a>
	</div>
	<div class="menu">
		<a href="#"><button class="btn">
				<i class="fa fa-share"></i>
			</button></a> <a href="rankings.jsp"><button class="btn">
				<i class="fa fa-refresh"></i>
			</button></a> <a href="index.jsp"><button class="btn">
				<i class="fa fa-home"></i>
			</button></a>
	</div>

	<div>
		<div class="full-ranking">
			<h1 class="title rank-title-max">
				<i class="fa fa-line-chart "></i> Rankings
			</h1>
		</div>
		<div>
			<%
			Integer num = 20;
			VideoService service = new VideoService(new VideoDao());
			ArrayList<Video> top = service.getVideos(num);
			for (Video one : top) {
			%>
			<div>
				<!--First element on the rank list-->
				<div class="row">
					<div class="column">
						<img
							src='<%="https://img.youtube.com/vi/" + one.getVideoId() + "/maxresdefault.jpg"%>'
							class="thumbnail" alt="" />
					</div>
					<div class="column">
						<h1 class="rank-head">Title</h1>
						<p class="column-text" style="font-size: 2vmax; margin-top: 5%"><%=one.getVideoName()%></p>
					</div>

					<div class="column column-votes">
						<h1 class="rank-head" style="font-size: 5vmax; margin-top: 0%">Rank</h1>
						<p class="column-text"
							style="font-size: 3vmax; padding: 0%; margin: 2%"><%="#" + one.getRank()%></p>
						<h1 class="rank-head" style="font-size: 1.5vmax; margin-top: 0%">Positive
							/ Total Votes</h1>
						<p class="column-text"><%=one.getPositiveVotes() + " / " + one.getTotalVotes()%></p>

					</div>
				</div>
				<%
					}
				%>


				<div class="prev-next-field">
					<a href="#" class="previous button-cicrle">&laquo; Previous </a> <a
						href="#" class="next button-cicrle"> Next &raquo;</a>
				</div>
				<div class="footer">
					<p>Designed by: Eldar Haseljić 2020.05.12</p>
				</div>
			</div>
		</div>
	</div>
</body>

</html>