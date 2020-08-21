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
        <!-- script>
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
                    data: [36,0,29,21,15,9,5],
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
        </script -->
        <script>
            var config = {
                type: 'line',
                data: {
                    labels: ['January', 'February', 'March', 'April', 'May'],
                    datasets: [{
                        label: 'Amazing',
                        backgroundColor: "rgb(22, 169, 239)",
                        borderColor: "rgb(22, 169, 239)",
                        data: [6, 6, 9, 9, 6],
                        fill: false,
                    }, {
                        label: 'Good and Happy',
                        fill: false,
                        backgroundColor: "rgb(104, 27, 154)",
                        borderColor: "rgb(104, 27, 154)",
                        data: [9, 7, 6, 5, 9],
                    }, {
                        label: 'Normal',
                        fill: false,
                        backgroundColor: "rgb(141, 208, 74)",
                        borderColor: "rgb(141, 208, 74)",
                        data: [5, 8, 5, 7, 4],
                    }, {
                        label: 'Exhausted',
                        fill: false,
                        backgroundColor: "rgb(255, 255, 4)",
                        borderColor: "rgb(255, 255, 4)",
                        data: [5, 2, 7, 1, 6],
                    }, {
                        label: 'Depressed',
                        fill: false,
                        backgroundColor: "rgb(252, 190, 8)",
                        borderColor: "rgb(252, 190, 8)",
                        data: [1, 3, 3, 4, 4],
                    }, {
                        label: 'Frustrated',
                        fill: false,
                        backgroundColor: "rgb(250, 6, 4)",
                        borderColor: "rgb(250, 6, 4)",
                        data: [3, 2, 1, 2, 1],
                    }, {
                        label: 'Stressed-out',
                        fill: false,
                        backgroundColor: "rgb(184, 4, 3)",
                        borderColor: "rgb(184, 4, 3)",
                        data: [2, 0, 0, 2, 1],
                    }]
                },
                options: {
                    responsive: true,
                    title: {
                        display: true,
                        text: 'Year In Pixels'
                    },
                    tooltips: {
                        mode: 'index',
                        intersect: false,
                    },
                    hover: {
                        mode: 'nearest',
                        intersect: true
                    },
                    scales: {
                        xAxes: [{
                            display: true,
                            scaleLabel: {
                                display: true,
                                labelString: 'Month'
                            }
                        }],
                        yAxes: [{
                            display: true,
                            scaleLabel: {
                                display: true,
                                labelString: 'Value'
                            },
                            ticks: {
                                min: 0
                            }
                        }]
                    }
                }
            };

            var ctx = document.getElementById('yin-chart').getContext('2d');
            window.myLine = new Chart(ctx, config);

        </script>
    </body>
</html>