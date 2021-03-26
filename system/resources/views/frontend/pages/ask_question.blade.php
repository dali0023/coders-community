@extends('frontend.master')
@section('title','| Ask a Question')
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" />

@section('top_menu')
@include('frontend.include.header')
@endsection
@section('stylesheet')

    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" />

  <script src="https://cdn.tiny.cloud/1/skff1b4oq10f8vg5xkmw69dkl9m98rm88b5fl2ckn9t7hnz9/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
  <script>
       tinymce.init({ 
      selector: 'textarea',  // change this value according to your HTML
  plugins: 'lists',
  toolbar: 'numlist bullist align',
  lists_indent_on_tab: false
      });
    </script>
@endsection


@section('maincontent')


<div class="row">
  <div class="col-md-10 col-md-offset-1">
     <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
             
              <h3 class="box-title">Ask A Question</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            {!! Form::open(['url' => '/question_store','files'=>true]) !!}

            {!! Form::label('title', 'Title');!!}
            {!! Form::text('title',null, [
            "class" =>"form-control"
             
            ]);!!}

         
                @if(count($errors) > 0)
            <label style="color: red"> {{ $errors->first('title') }} </label>
            @endif

            
                 <a href="#" style="text-decoration:none;" data-container="body" data-toggle="popover" data-placement="top" data-content="
                  1.max latter 120.
                  2. min 30.
                  3. must be required.


                 ">
  Role?
</a>
      
            
            <br />
            

            {!! Form::label('body', 'Description');!!}
            {!! Form::textarea('body',null, [
            "class" =>"form-control"
            ]);!!}
            @if($errors->has('body'))
            <label style="color: red"> {{ $errors->first('body') }} </label>
            @endif
            <br>

{{--  {!! Form::label('question_image', 'question Image');!!}
            {!! Form::file('question_image');!!}
                @if(count($errors) > 0)
            <label style="color: red"> {{ $errors->first('question_image') }} </label>
            @endif
            <br />
 --}}

               
                {!! Form::label('tags', 'Tags');!!}
            <select class="selectpicker form-control" data-show-subtext="true" data-live-search="true" name="tags[]" multiple="multiple">
            <option value="">select one</option>
            @foreach($tags as $tag)
                <option value="{{ $tag->name }}">{{ $tag->name }}</option>
            @endforeach
          </select>
           @if($errors->has('tags'))
            <label style="color: red"> {{ $errors->first('tags') }} </label>
            @endif
 <br>
<br>
  {!! Form::label('select_category', 'Select Category');!!}
 
<select class="form-control selectpicker" data-show-subtext="true" data-live-search="true" name="category_id">

       @foreach($categories as $category)
     <option style="display: block !important;" value="{{$category->name}}"> {{$category->name}} </option>
@endforeach
          </select>



 <br>
 <br>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
              </div>
            </form>
          </div>
          <!-- /.box -->



  </div>
</div>

@endsection

@section('script')
 <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>
@endsection