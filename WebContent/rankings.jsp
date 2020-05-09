<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- Add icon library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/stylesheet.css" type="text/css">
    <link rel="icon" href="images/top10.png" type="image/icon type">
    <title>Rankings</title>
</head>

<body>

    <div class="bar">
        <a href="index.jsp">  <span class="bar bar-span">Video voting competition</span></a>
    </div>
    <div class="menu">
        <a href="#"><button class="btn"><i class="fa fa-share"></i></button></a>
        <a href="rankings.jsp"><button class="btn"><i class="fa fa-refresh"></i></button></a>
        <a href="index.jsp"><button class="btn"><i class="fa fa-home"></i></button></a>
    </div>

    <div>
        <div class="full-ranking">
            <h1 class="title rank-title-max"><i class="fa fa-line-chart "></i> Rankings</h1>
        </div>
        <div>
            <!--First element on the rank list-->

            <div class="row">
                <div class="column">
                    <img src="https://img.youtube.com/vi/TVuipQx5zYY/maxresdefault.jpg" class="thumbnail" />
                </div>
                <div class="column">
                    <h1 class="rank-head">Title</h1>
                    <p class="column-text">Maya Berović feat. Buba Corelli - Pravo vreme (Official Video)</p>
                </div>

                <div class="column column-votes">
                    <h1 class="rank-head">Votes</h1>
                    <p class="column-text">14240</p>
                    <h1 class="rank-head">Rank</h1>
                    <p class="column-text">4.7/5</p>
                </div>
            </div>

            <!--Second element on the rank list-->

            <div class="row">
                <div class="column">
                    <img src="https://img.youtube.com/vi/8RiF3TQAkig/maxresdefault.jpg" class="thumbnail" />
                </div>
                <div class="column">
                    <h1 class="rank-head">Title</h1>
                    <p class="column-text">DARKO LAZIć - MAJKO (OFFICIAL VIDEO)</p>
                </div>
                <div class="column column-votes">
                    <h1 class="rank-head">Votes</h1>
                    <p class="column-text">12013</p>
                    <h1 class="rank-head">Rank</h1>
                    <p class="column-text">4.5/5</p>
                </div>
            </div>

            <!--Third element on the rank list-->
            <div class="row">
                <div class="column">
                    <img src="https://img.youtube.com/vi/61hiOj8i1UQ/maxresdefault.jpg" class="thumbnail" />
                </div>
                <div class="column">
                    <h1 class="rank-head">Title</h1>
                    <p class="column-text">LAPSUS BAND - Santa Leda (Official Video)</p>
                </div>

                <div class="column column-votes">
                    <h1 class="rank-head">Votes</h1>
                    <p class="column-text">9624</p>
                    <h1 class="rank-head">Rank</h1>
                    <p class="column-text">4/5</p>
                </div>
            </div>

            <!--Fourth element on the rank list-->

            <div class="row">
                <div class="column">
                    <img src="https://img.youtube.com/vi/KF4iuBQ9Amk/maxresdefault.jpg" class="thumbnail" />
                </div>
                <div class="column">
                    <h1 class="rank-head">Title</h1>
                    <p class="column-text ">LAPSUS BAND - OCI BOJE COKOLADE (OFFICIAL VIDEO) 4K</p>
                </div>

                <div class="column column-votes">
                    <h1 class="rank-head">Votes</h1>
                    <p class="column-text">9600</p>
                    <h1 class="rank-head">Rank</h1>
                    <p class="column-text">4/5</p>
                </div>
            </div>

            <!--Fift element on the rank list-->

            <div class="row">
                <div class="column">
                    <img src="https://img.youtube.com/vi/FmeVHlJOpzQ/maxresdefault.jpg" class="thumbnail" />
                </div>
                <div class="column">
                    <h1 class="rank-head">Title</h1>
                    <p class="column-text">Buba Corelli - Balenciaga</p>
                </div>

                <div class="column column-votes">
                    <h1 class="rank-head">Votes</h1>
                    <p class="column-text">9000</p>
                    <h1 class="rank-head">Rank</h1>
                    <p class="column-text">3.7/5</p>
                </div>
            </div>

            <!--Sixth element on the rank list-->
            <div class="row">
                <div class="column">
                    <img src="https://img.youtube.com/vi/lKgI7Cxm0go/maxresdefault.jpg" class="thumbnail" />
                </div>
                <div class="column">
                    <h1 class="rank-head">Title</h1>
                    <p class="column-text">Dino Merlin - Školjka (Official Video)</p>
                </div>

                <div class="column column-votes">
                    <h1 class="rank-head">Votes</h1>
                    <p class="column-text">8888</p>
                    <h1 class="rank-head">Rank</h1>
                    <p class="column-text">3.5/5</p>
                </div>
            </div>

            <!--Seventh element on the rank list-->
            <div class="row">
                <div class="column">
                    <img src="https://img.youtube.com/vi/eC_GQuPPi_k/maxresdefault.jpg" class="thumbnail" />
                </div>
                <div class="column">
                    <h1 class="rank-head">Title</h1>
                    <p class="column-text">Dino Merlin i Željko Joksimović - Supermen (Official Video)</p>
                </div>

                <div class="column column-votes">
                    <h1 class="rank-head">Votes</h1>
                    <p class="column-text">8883</p>
                    <h1 class="rank-head">Rank</h1>
                    <p class="column-text">3.5/5</p>
                </div>
            </div>

            <!--Eighth element on the rank list-->
            <div class="row">
                <div class="column">
                    <img src="https://img.youtube.com/vi/VMT50KhLlRw/maxresdefault.jpg" class="thumbnail" />
                </div>
                <div class="column">
                    <h1 class="rank-head">Title</h1>
                    <p class="column-text">Toše Proeski - Igra bez granica (OFFICIAL VIDEO)</p>
                </div>

                <div class="column column-votes">
                    <h1 class="rank-head">Votes</h1>
                    <p class="column-text">8800</p>
                    <h1 class="rank-head">Rank</h1>
                    <p class="column-text">3.5/5</p>
                </div>
            </div>

            <!--Ninth element on the rank list-->
            <div class="row">
                <div class="column">
                    <img src="https://img.youtube.com/vi/qjCO2H9IEDo/hqdefault.jpg" class="thumbnail" />
                </div>
                <div class="column">
                    <h1 class="rank-head">Title</h1>
                    <p class="column-text">Ana Bekuta - Zlatiborske zore - (Official Video 1996)</p>
                </div>

                <div class="column column-votes">
                    <h1 class="rank-head">Votes</h1>
                    <p class="column-text">7800</p>
                    <h1 class="rank-head">Rank</h1>
                    <p class="column-text">3.3/5</p>
                </div>
            </div>

            <!--Tenth element on the rank list-->
            <div class="row">
                <div class="column">
                    <img src="https://img.youtube.com/vi/P28vDj_KigQ/maxresdefault.jpg" class="thumbnail" />
                </div>
                <div class="column">
                    <h1 class="rank-head">Title</h1>
                    <p class="column-text">Maya Berović - Sama (Official Video)</p>
                </div>

                <div class="column column-votes">
                    <h1 class="rank-head">Votes</h1>
                    <p class="column-text">7654</p>
                    <h1 class="rank-head">Rank</h1>
                    <p class="column-text">3.3/5</p>
                </div>
            </div>
            <div class="prev-next-field">
                <a href="#" class="previous button-cicrle">&laquo; Previous </a>
                <a href="#" class="next button-cicrle"> Next &raquo;</a>
            </div>
            <div class="footer">
                <p>Designed by: Eldar Haseljić 2020.04.12</p>
            </div>
        </div>
    </div>
</body>

</html>