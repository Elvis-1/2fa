
@extends('template')

@section('content')
    <div class="container">
        <div class="card login-card">
            <div class="row no-gutters">
                
                 
                    <div class="card-body">
                   <div class="row">
                      <div class="col-4">
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
                      </div>
                      
                      
                      <div class="col-4">
                        <form method="POST" action="{{url('user/two-factor-authentication')}}">
                        @csrf
                        <button type="submit"  class="btn btn-primary">Enable</button>
                    </form>
                      </div>
                   </div>
                        

                    
                   @if (session('status') == 'two-factor-authentication-enabled')
                   <div class="mb-4 font-medium text-sm text-green-600">
                     Two factor authentication has been enabled. Please scan the following QR code into your phone authenticator app
                      </div>

                      {!! auth()->user()->twoFactorQrCodeSvg() !!}
                       <p>Please store the following codes in a secure location</p>
                      @foreach (json_decode(decrypt(auth()->user()->two_factor_recovery_codes, true)) as $code)
                          {{trim($code)}} <br>
                      @endforeach
                   @endif
            </div>
        </div>
    </div>
</div>
</div>
@endsection
