@extends('template')
 @section('content')
  <div class="container">
        <div class="row">
           <div class="col-md-12 text-center">
            <h1>Home Page</h1>
           </div>
        </div>
        <hr>
        {{-- <p class="login-card-footer-text">Don't have an account? <a href="{{ route('/register') }}" class="text-reset">Register here</a></p> --}}
        @if(!auth()->user()->two_factor_secret)
        You have not enabled 2fa<br>
         @else
        You have enabled 2fa
        <form method="POST" action="{{url('user/two-factor-authentication')}}">
        @csrf
        @method('DELETE')
        <button type="submit"  class="btn btn-primary">Disable</button>
        </form>
    @endif
         <br><br>
 <form method="POST" action="{{url('user/two-factor-authentication')}}">
  @csrf
<button type="submit"  class="btn btn-primary">Enable</button>
 </form>
   <div class="container">
    <div class="row">
    <div class="col-md-4">
     
     </div>
 
     <div class="col-md-8">
        <div class="" style="text-align:center; margin-top:-100px">
        
         @if (session('status') == 'two-factor-authentication-enabled')
                   <div class="mb-4 font-medium text-sm text-green-600">
                     Two factor authentication has been enabled. Please scan the following QR code into your phone authenticator
                      </div>
         {!! auth()->user()->twoFactorQrCodeSvg() !!}
                       <p>Please store the following codes in a secure location</p>
                      @foreach (json_decode(decrypt(auth()->user()->two_factor_recovery_codes, true)) as $code)
                          {{trim($code)}} <br>
                      @endforeach
                   @endif

        <div class="">
        
        
        </div>
        </div>
     </div>
    </div>
 </div>
   
@endsection