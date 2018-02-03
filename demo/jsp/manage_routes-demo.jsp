<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->

    <title>Railway tickets online</title>
    <meta name="description" content="Сервис по продаже ж/д билетов онлайн &quot;Проезд&quot; 
            - лучший выбор, если нужно купить билет на поезд по Украине или СНГ. Заходи!">
    <meta name="keywords" content="жд, железнодорожные, билеты, стоимость, купить, онлайн, цена, дешевые, Украина, расписание поездов, дешево, наличие мест.">
    <meta name="viewport" content="width=1280, User-scalable=1.0">
    <link rel="icon" type="image/png" href="main_icon.png">
    <link rel="stylesheet" type="text/css" media="screen" href="home_page.css" />
    <!-- <script type="text/javascript" src="validation.js"></script> -->
</head>

<body>
    <div id="background"></div>
    <nav>
        <ul>
            <li>
                <a href="#">Home</a>
            </li>
                <li>
                    <a href="register.html">Profile</a>
                </li>
                <li>
                    <select id="language" name="language" onchange="submit()">
                        <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
                        <option value="ru" ${language == 'ru' ? 'selected' : ''}>Russian</option>
                    </select>
                </li>
        </ul>
    </nav>

    <div class="search-box">
        <!-- FMT REGISTRATION-->
        <h1>Search</h1>
        <hr>
        <div class="search-fields">

            <!-- <input type="hidden" name="command" value="register"> -->
            <form action="/Controller" method="post">
                <!-- Departure station -->
                <input type="text" name="from_station" id="from_station" placeholder="From" required/>

                <!-- Arrival station -->
                <input type="text" name="to_station" id="to_station" placeholder="To" required/>

                <!-- <input type="submit" value='<fmt:message key="login_jsp.button.register"/>' name="command" value="register"> -->
                <input for="signin" type="submit" class="button" name="command" value="search">
            </form>
        </div>
    </div>

</body>

</html>