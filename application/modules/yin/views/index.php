
        <pre>
            <?php
                //print_r($ipinfo);
                //print_r($pixels);
                //print_r( $_SESSION['pixels']);
            ?>
        </pre>
        <div class="clearfix">
        </div>
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
            <div class="row align-items-center">
                <div class="col pl-0 pb-3">
                    <select name="yin-year" id="yin-year">
                        <?php
                            $total_years = date("Y") - 2017;
                            for($y=0; $y<$total_years; $y++){
                                echo $y;
                                $yin_date = date('Y', strtotime('-'.$y.' year'));
                                echo '<option value="'.$yin_date.'">'.$yin_date.'</option>';
                            }
                        ?>
                    </select>
                </div>
                <div class="col">
                </div>
                <div class="col">
                </div>
            </div>
            <!-- pixel table starts here -->
            <table class="table yin-table" id="yin-table" style="">
            <?php
                //To replace the buildPixelTable function below use yin-table.txt
                buildPixelTable($pixels);
            ?>
            </table>
            <!-- pixel table ends here -->
            <!-- Content container ends here -->
            <hr/>
            <canvas id="yin-chart" width="400" height="400"></canvas>
            <hr/>
        </div>
