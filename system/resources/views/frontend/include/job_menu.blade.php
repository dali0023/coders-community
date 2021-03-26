<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="tanzina akter">

  <title>
    @yield('title')
  </title>

  <!-- Bootstrap Core CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

  {{-- <link href="{{ URL::asset('frontend-style/css/bootstrap.min.css') }}" rel="stylesheet"> --}}
  {{-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"> --}}
  <!--font-awesome CSS -->
  <link href="{{ URL::asset('frontend-style/css/font-awesome.min.css')}}" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700" rel="stylesheet">

  <!--Custom CSS -->
  <link href="{{ URL::asset('frontend-style/css/style.css')}}" rel="stylesheet">
  <link href="{{ URL::asset('frontend-style/css/question.css')}}" rel="stylesheet">
  @yield('stylesheet')
  <style>
    .navbar-default .navbar-nav>.active>a,
    .navbar-default .navbar-nav>.active>a:focus,
    .navbar-default .navbar-nav>.active>a:hover {
      color: #f90;
      background-color: white;
    }
  </style>
</head>

<body>
  <div class="container-fluid">


    <nav class="navbar navbar-default bg-white" style="margin-bottom:0px !important; background-color:white">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
            data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="{{ url('/') }}"
            style="font-size: 19px; padding: 7px 15px 0 15px; margin:auto; text-align:center">
            Coders <br> Community
            {{-- <img style="width: 40px !important; border-radius: 61%; height: 42px; border: 1px solid orange;" src="{{ URL::asset('frontend-style/images/logo5.png')}}"
            alt="Logo"> --}}
          </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"
          style="padding:12px 10px 8px 12px; margin: 0 0 0 -15px; font-size:18px">
          <ul class="nav navbar-nav text-center">
            <li class="nav-item {{ Request::is('/') ? 'active' : '' }}">
              <a class="nav-link" href="{{ url('/') }}">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item  {{ Request::is('question') ? 'active' : '' }}"> <a href="{{ url('/question') }}"
                class="nav-link "> Question </a> </li>


            <li class="nav-item {{ Request::is('article') ? 'active' : '' }}"> <a href="{{ url('/article') }}"
                class="nav-link"> Article </a> </li>

            {{-- <li class="dropdown nav-item ">
              <a href="#" onmouseover="this.style.borderColor='#f90';" onmouseout="this.style.borderColor='white';"
                class="dropdown-toggle nav-link" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false">Groups <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li>{{$group}}</li>
            @if (Auth::guest())
            <li><a href="{{url('/group-search')}}">Search Group</a></li>
            <li><a href="{{url('/group')}}">Create Group</a></li>
            @else

            @if(count($group) != 0)

            @endif
            <li><a href="{{url('/group-search')}}">Search Group</a></li>
            <li><a href="{{url('/group')}}">Create Group</a></li>
            @endif
          </ul>
          </li> --}}
          <li class="nav-item {{ Request::is('jobs') ? 'active' : '' }}"> <a href="{{ url('/jobs') }}"
              class="nav-link">Jobs </a> </li>
          </ul>

          <ul class="nav navbar-nav navbar-right  text-center" style="margin-top: 4px">
            @if (Auth::guest())
            <li style="display:inline-block !important;" class="">
              <a href="{{ url('/login') }}" class="btn btn-primary"
                style="text-decoration:none;margin-left:10px; color:white;font-size:14px; padding:4px 6px;"
                onmouseover="this.style.backgroundColor='#007bff';">
                login
              </a>

            </li>
            <li class="nav-item" style="display:inline-block !important;">
              <a class="btn btn-success test-danger" href="{{ url('/register') }}"
                style="text-decoration:none;margin-left:10px; color:white; font-size:14px; padding:4px 6px; margin-right: 20px;"
                onmouseover="this.style.backgroundColor='#5cb85c';">
                Join Now
              </a> </li>

            @else
            <li class="dropdown">
              <a href="#" style="font-size: 17px;text-decoration: none" class="dropdown-toggle" data-toggle="dropdown"
                role="button" aria-expanded="false">
                {{ Auth::user()->name }} <span class="caret"></span>
              </a>

              <ul class="dropdown-menu" role="menu">
                <li><a href="{{ url('/profile') }}"> Profile </a></li>
                <li>
                  <a href="{{ url('/logout') }}" onclick="event.preventDefault();
                                        document.getElementById('logout-form').submit();">
                    Logout
                  </a>

                  <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
                    {{ csrf_field() }}
                  </form>
                </li>
              </ul>
            </li>
            @endif
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>