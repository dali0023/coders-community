<section class="text-center" style="padding:30px; background-color: #f5f5f5;">
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-sm-12 col-xs-12" style="margin-bottom: 15px;"
           >
           <a href="{{ url('/question_create') }}">
          <div class="col-md-12 col-sm-12 col-xs-12" style="padding-top: 25px; padding-bottom: 25px;
                   background-image: url('{{ URL::asset('frontend-style/images/download.png')}}'); 
                   color: #fff;">
            <h2>ASK A QUESTION (?)</h2>
          </div>
           </a>
        </div>
        <div class="col-md-4 col-sm-12 col-xs-12"  style="margin-bottom: 15px;">
          <a href="{{ url('/article_create') }}">
           <div class="col-md-12 col-sm-12 col-xs-12" style="padding-top: 25px; padding-bottom: 25px;
                   background-image: url('{{ URL::asset('frontend-style/images/download.png')}}'); 
                   color: #fff;">
            <h2>POST AN ARTICLE (?)</h2>
          </div>
          </a>
        </div>
        <div class="col-md-4 col-sm-12 col-xs-12" >
          <a href="{{ url('/job_posts') }}">
           <div class="col-md-12 col-sm-12 col-xs-12" style="padding-top: 25px; padding-bottom: 25px;
                   background-image: url('{{ URL::asset('frontend-style/images/download.png')}}'); 
                   color: #fff;">
            <h2>POST YOUR JOB (<i class="fa fa-briefcase" aria-hidden="true"></i>)</h2>
          </div>
          <a href="{{ url('/job_posts') }}">
        </div>
      </div>
    <!-- end of row --> 
    </div> 
    <!-- end of container-->    
</section>
<!-- end of offers-section -->