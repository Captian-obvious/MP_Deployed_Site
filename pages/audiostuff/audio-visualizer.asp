<!DOCTYPE html>
<html>
    <head>
        <link rel="apple-touch-icon" type="image/png" sizes="57x57" href="../../images/apple-icons/apple-icon-57x57.png">
        <link rel="apple-touch-icon" type="image/png" sizes="60x60" href="../../images/apple-icons/apple-icon-60x60.png">
        <link rel="apple-touch-icon" type="image/png" sizes="72x72" href="../../images/apple-icons/apple-icon-72x72.png">
        <link rel="apple-touch-icon" type="image/png" sizes="76x76" href="../../images/apple-icons/apple-icon-76x76.png">
        <link rel="apple-touch-icon" type="image/png" sizes="114x114" href="../../images/apple-icons/apple-icon-114x114.png">
        <link rel="apple-touch-icon" type="image/png" sizes="120x120" href="../../images/apple-icons/apple-icon-120x120.png">
        <link rel="apple-touch-icon" type="image/png" sizes="144x144" href="../../images/apple-icons/apple-icon-144x144.png">
        <link rel="apple-touch-icon" type="image/png" sizes="180x180" href="../../images/apple-icons/apple-icon-180x180.png">
        <link rel="apple-touch-icon" type="image/png" sizes="152x152" href="../../images/apple-icons/apple-icon.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="../../images/android-icons/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="96x96" href="../../images/favicon-96.png">
        <link rel="icon" type="image/png" sizes="32x32" href="../../images/favicon-32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="../../images/favicon.png">
        <link rel="mask-icon" type="image/svg" sizes="96x96" href="../../images/favicon-96.svg" color="#ff0000">
        <link rel="mask-icon" type="image/svg" sizes="32x32" href="../../images/favicon-32.svg" color="#ff0000">
        <link rel="mask-icon" type="image/svg" sizes="16x16" href="../../images/favicon.svg" color="#ff0000">
        <link rel="manifest" href="manifest.json">
        <link rel="stylesheet" href="../../css/visualizer.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="../../../../server/serversidedJS/require.js"></script>
        <title>Music and Audio Visualizer</title>
    </head>
    <body>
        <%
        var date = DateTime.Now()
        %>
        <div id="date">
            <p><% return date %></p>
        </div>
        <div id="media-container">
            <input type="file" id="thefile" accept="audio/*">
            <audio id="audio" controls hidden></audio><br>
            <div id="album">
                <div id="MediaPlayerControls">
                    <div id="MediaPlayerIcon-icon-play" class="MediaPlayerIcon-icon-play" data-mediathumb-url="src"></div>
                    <input id="MediaPlayerControl-seekbar" type="range" name="rng" min="0" value="0">
                </div>
            </div>
            <canvas id="canvas"></canvas>
            <script src="../../js/main.js"></script>
            <noscript>Please Enable Javascript to use this page</noscript>
        </div>
        <div id="liscense">
            <a id="image-liscense" rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/" target="_blank">
                <img alt="Creative Commons License" style="border-width:0" data-src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" src="../../images/license/4.0/88x31.png" />
            </a><br>
            <i class="fa fa-creative-commons"></i><i class="fa fa-creative-commons-sa">
            </i>This work is licensed under a <a id="text-liscense" rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/" target="_blank"><em>Creative Commons</em> Attribution-ShareAlike 4.0 International License</a>
        </div>
    </body>
</html>
