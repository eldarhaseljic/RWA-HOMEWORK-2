<%@ page contentType="text/html;charset=UTF-8"
         language="java"
         import="domain.Video, service.VideoService, java.util.*, dao.VideoDao" 
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- Add icon library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="icon" href="images/clipboard.png" type="image/icon type">
    <link rel="stylesheet" href="css/stylesheet.css" type="text/css">
    <title>eldar_haseljic_zadaca1</title>
  
</head>
<body>
 <% 
        VideoService videoService = new VideoService(new VideoDao());
    	ArrayList<Video> videos = videoService.getRand(); 
    	
    	%>

    <div class="Container">
        <div class="bar">
           <a href="index.jsp"><span class="bar bar-span">Video voting competition</span></a>
        </div>
        <div class="menu">
            <a href="#"><button class="btn"><i class="fa fa-share"></i></button></a>
            <a href="index.jsp"><button class="btn"><i class="fa fa-refresh"></i></button></a>
            <a href="rankings.jsp"><button class="btn"><i class="fa fa-bars"></i> Top 10</button></a>
        </div>
        <div>
            <div>
                <h1 id="title1" class="title"><%=videos.get(0).getVideoName() %></h1>
                <h1 id="title2" class="title"><%=videos.get(1).getVideoName() %></h1>
            </div>
            <div>
                <iframe id="songID1" src="<%="https://www.youtube.com/embed/" + videos.get(0).getVideoId()%>"></iframe>
                <iframe id="songID2" src="<%="https://www.youtube.com/embed/" + videos.get(1).getVideoId()%>"></iframe>
            </div> 
            <div>
                <button class="btn vote-btn" ><i class="fa fa-check"></i></button>
                <button class="btn vote-btn" ><i class="fa fa-check"></i></button>
            </div>
        </div>
        <div>
          <div class="small-ranking">
                <h1 class="title rank-title"><i class="fa fa-th-list"></i> Top 5 videos</h1>
           </div>
        
        <% 
        videos = videoService.getTop5(); 
      	for(Video one: videos){
        %>
        
          
            <div>
                <!--First element on the rank list-->
                <div class="row">
                    <div class="column">
                        <img src=<%="https://img.youtube.com/vi/" + one.getVideoId()+ "/maxresdefault.jpg"%> class="thumbnail" />
                    </div>
                    <div class="column">
                        <h1 class="rank-head">Title</h1>
                        <p class="column-text"><%=one.getVideoName() %></p>
                    </div>

                    <div class="column column-votes">
                        <h1 class="rank-head">Votes</h1>
                        <p class="column-text"><%=one.getPositiveVotes() %></p>
                        <h1 class="rank-head">Rank</h1>
                        <p class="column-text">4.7/5</p>
                    </div>
                </div>
			<%} %>
             
            </div>
        </div>
        <div class="footer">
            <p>Designed by: Eldar Haseljić 2020.05.03</p>
        </div>
    </div>
</body>

</html>
