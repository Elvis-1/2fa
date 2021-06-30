
@extends('template')

@section('content')
    <div class="container">
        <div class="card login-card">
            <div class="row no-gutters">
                
                 <div class="col-md-7">
                    <div class="card-body">
                        @if(!auth()->user()->two_factor_secret)
                           You have not enabled 2fa
                         @else
                        You have enabled 2fa
                       @endif
                    <form method="POST" action="{{url('user/two-factor-authentication')}}">
                        @csrf
                        <button type="submit"  class="btn btn-primary">Enable</button>
                    </form>
            </div>
        </div>
    </div>
</div>
</div>
@endsection
