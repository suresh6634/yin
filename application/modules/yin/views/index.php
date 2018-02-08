
        <!--<pre>
            <?php
/*                //print_r($ipinfo);
                //print_r($pixels);
                print_r( $_SESSION['pixels']);
            */?>
        </pre>-->
        <div class="clearfix"></div>
        <!-- Content container ends here -->
        <div class="container pixel-container bg-white" style="width:600px;margin: 10px auto;font-size:11px;">
            <hr>
            <!-- Modal starts here -->
            <div class="modal fade pixelDateModal" tabindex="-1" role="dialog" aria-labelledby="pixelDateModal" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="pixelDateModalTitle">How <span id="spanIsOrWas"></span> <span id="modal-date-title" class="strong"></span>?</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <!-- Day Score starts here -->
                                <form method="POST" name="modalDayScoreForm" id="modalDayScoreForm">
                                    <div class="container-fluid">
                                        <div class="row dayscore-block no-gutters">
                                            <div class="col-md-12 dayscore amazing" data-selected="0" data-dayscore="7" data-mood="Amazing">7 - Amazing, fantastic Day</div>
                                            <div class="col-md-12 dayscore good" data-selected="0" data-dayscore="6" data-mood="Good">6 - Really a good and happy day</div>
                                            <div class="col-md-12 dayscore normal" data-selected="0" data-dayscore="5" data-mood="Normal">5 - Normal, average day</div>
                                            <div class="col-md-12 dayscore exhausted" data-selected="0" data-dayscore="4" data-mood="Exhausted">4 - Exhausted, tired day</div>
                                            <div class="col-md-12 dayscore depressed" data-selected="0" data-dayscore="3" data-mood="Depressed">3 - Depressed, sad day</div>
                                            <div class="col-md-12 dayscore frustrated" data-selected="0" data-dayscore="2" data-mood="Frustrated">2 - Frustrated, angry day</div>
                                            <div class="col-md-12 dayscore stressed" data-selected="0" data-dayscore="1" data-mood="Stressed">1 - Stressed-out, frantic day</div>
                                        </div>
                                    </div>
                                    <!-- Day Score ends here -->
                                    <!-- Comments starts here -->
                                    <div class="container-fluid" id="dayscore-comments" style="display:none;padding-top: 15px;padding-bottom: 15px;">
                                        <div class="row no-gutters">
                                            <div class="col-md-12 col-sm-12 ml-auto">
                                                <h3>What made you feel &quot;<span class="scoreForTheDay"></span>&quot;?</h3>
                                            </div>
                                            <div class="col-md-12 col-sm-12 ml-auto">
                                                <textarea style="width:100%;height:182px;padding:0 10px;resize:none;line-height:30px;font-size:16px;" id="pixelComment" class="bg-line"></textarea>
                                                <script>
                                                   /* ClassicEditor
                                                        .create( document.querySelector( '#pixelComment' ) )
                                                        .catch( error => {
                                                        console.error( error );
                                                    } );*/

                                                    ClassicEditor
                                                        .create( document.querySelector( '#pixelComment' ) )
                                                        .then( editor => {
                                                            //console.log( 'Editor was initialized', editor );
                                                            pixelCommentEditor = editor;
                                                        } )
                                                        .catch( err => {
                                                            console.error( err.stack );
                                                        } );

                                                </script>
                                            </div>
                                        </div>
                                        <!-- Comments end here -->
                                        <!-- Upload pics starts here -->
                                        <!-- div class="row no-gutters" style="margin-top:20px;">
                                            <div class="col-md-6 col-sm-12 ml-auto" style="border:1px soild #EEE">
                                                <h5>Add some pics</h5>
                                                <div class="row no-gutters" style="height: 100px;">
                                                    <div class="col-md-12 col-sm-12 ml-auto" style="border:1px dotted #EEE;border-radius: 10px;">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12 ml-auto">
                                                <h5>Few more clicks away</h5>
                                            </div>

                                        </div -->
                                        <!-- Upload pics ends here -->
                                    </div>
                                    <input type="hidden" name="dayScore" id="ScoreForTheDay" value="" />
                                    <input type="hidden" name="selectedDate" id="selectedDate" value="" />
                                </form>
                                <!-- Modal body ends here -->
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary" id="btnAddComments">Add comments</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Modal ends here -->

            <!-- pixel table starts here -->
            <table class="table table-bordered yin-table" style="">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <?php
                    for($m=1; $m<=12; ++$m){
                        echo '<th scope="col">'.date('M', mktime(0, 0, 0, $m, 1)).'</th>';
                    }
                    ?>
                    <!-- th scope="col">Jan</th>
                    <th scope="col">Feb</th>
                    <th scope="col">Mar</th>
                    <th scope="col">Apr</th>
                    <th scope="col">May</th>
                    <th scope="col">Jun</th>
                    <th scope="col">Jul</th>
                    <th scope="col">Aug</th>
                    <th scope="col">Sep</th>
                    <th scope="col">Oct</th>
                    <th scope="col">Nov</th>
                    <th scope="col">Dec</th -->
                </tr>
                </thead>
                <tbody>
                <?php
                    $selectedYear = date("Y");
                    $today = strtotime(date("Y-m-d"));
                    for ($maxDaysinAMonth = 1; $maxDaysinAMonth <= 31; $maxDaysinAMonth++) {
                    ?>
                    <!-- Day <?php echo $maxDaysinAMonth; ?> starts here-->
                    <tr>
                        <th scope="row"><?php echo $maxDaysinAMonth; ?></th>
                        <?php
                            for($datePixel = 1; $datePixel <= 12; $datePixel++) {
                                $columnPixel = ($datePixel < 10 ? '0'.$datePixel : $datePixel );
                                $rowPixel = ($maxDaysinAMonth < 10 ? '0'.$maxDaysinAMonth : $maxDaysinAMonth );
                                $chosenClass = "datePixel";
                                $thisPixel = $selectedYear.$columnPixel.$rowPixel;


                                $pixelDay    = strtotime($selectedYear."-".$datePixel."-".$maxDaysinAMonth);

                                $datediff = $pixelDay - $today;
                                $difference = floor($datediff/(60*60*24));

                                if($difference > 0)
                                {
                                    $chosenClass = "disabledDate";
                                }

                                // Check valid date only after 28th of the month.

                                if ( $maxDaysinAMonth > 28 ) {
                                    if(checkdate($datePixel, $maxDaysinAMonth, $selectedYear)) {
                                        $fullDate = date( "l, d F Y", strtotime( $selectedYear.$columnPixel.$rowPixel ) );
                                    } else {
                                        $fullDate = "";
                                        $chosenClass = "disabledDate";
                                     }
                                } else {
                                    $fullDate = date( "l, d F Y", strtotime( $selectedYear.$columnPixel.$rowPixel ) );
                                }
                                $hasRecord = 0;
                                $dayScoreClass = "";
                                $dayScore = "-1";
                                if(isset($pixels["pixel"][$thisPixel])) {
                                    $hasRecord = 1;
                                    $dayScoreClass = "_".$pixels["pixel"][$thisPixel]["dayscore_id"];
                                    $dayScore = $pixels["pixel"][$thisPixel]["dayscore_id"];
                                }

                                ?>

                                <td class="<?php echo $thisPixel." ".$chosenClass." ".$dayScoreClass; ?>" data-datePixel="<?php echo $selectedYear.$columnPixel.$rowPixel; ?>" data-dayscore="<?php echo $dayScore; ?>" data-hasRecord="<?php echo $hasRecord; ?>" data-fullDate="<?php echo $fullDate; ?>"><?php echo ($dayScore > 0 ? $dayScore : ""); ?></td>

                                <?php
                            }
                        ?>
                    </tr>
                    <!-- Day <?php echo $maxDaysinAMonth; ?> ends here-->

                    <?php
                }
                ?>
                </tbody>
            </table>
            <!-- pixel table ends here -->
            <!-- Content container ends here -->
            <hr>
        </div>
