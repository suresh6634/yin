        <!-- footer container starts here -->
        <div class="container bg-white" style="width:600px;margin: 20px auto;">
            <div class="row align-items-center">
                <div class="col-xs-12 col-sm-12 col-md-4 ml-auto">
                   Copyright &copy; <?php echo date('Y'); ?> YIN
                </div>
                <div class="col-xs-12 col-sm-12 col-md-8 ml-auto text-right h-50 align-top">
                    <ul class="nav justify-content-end">
                        <li class="nav-item align-top">
                            <a class="nav-link active" href="#">About</a>
                        </li>
                        <li class="nav-item align-top">
                            <a class="nav-link active" href="#">Privacy</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Feedback</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- footer container ends here -->
        <script>
            data = {
                // These labels appear in the legend and in the tooltips when hovering different arcs
                labels: [
                    'Amazing',
                    'Good and Happy',
                    'Normal',
                    'Exhausted',
                    'Depressed',
                    'Frustrated',
                    'Stressed-out'
                ],
                datasets: [{
                    data: [5, 9, 15, 21, 29, 36, 36],
                    backgroundColor: [
                        "rgb(22, 169, 239)",
                        "rgb(104, 27, 154)",
                        "rgb(141, 208, 74)",
                        "rgb(255, 255, 4)",
                        "rgb(252, 190, 8)",
                        "rgb(250, 6, 4)",
                        "rgb(184, 4, 3)"]
                }],

            };
            var ctx = document.getElementById('yin-chart');
            var myPieChart = new Chart(ctx, {
                type: 'doughnut',
                cutoutPercentage:'50',
                data: data
            });
        </script>
    </body>
</html>