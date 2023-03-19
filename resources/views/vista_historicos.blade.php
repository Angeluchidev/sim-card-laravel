<!-- First you need to extend the CB layout -->
@extends('crudbooster::admin_template')
@section('content')
<!-- Your custom  HTML goes here -->
<!-- Mostrar id -->
<div class="container-fluid">
  <h3>{{$mi_serial}}</h3>
  <div class="row alert alert-success" role="alert">
      <div class="col-sm-4">
        <h3>Datos Principales</h3>
        <p><strong> Serial :</strong> {{$sim->serial}}</p>
        <p><strong> Numero :</strong> {{$sim->numero}}</p>
        <p><strong> Pin :</strong> {{$sim->cod_pin}}</p>
        <p><strong> Puk :</strong> {{$sim->puk}}</p>
        <p><strong> Persona/Empresa :</strong> {{$sim->nombres}}</p>
        </div>
        
      <div class="col-sm-4">
        <h3>Datos Lote</h3>
        <h1>{{$sim->lote}}</h1>
        <h4>{{$sim->fecha_lote}}</h4>
      </div>
      <div class="col-sm-4">
        <h3>Datos Operadora</h3>
        <h1>{{$sim->operadora}}</h1>
        <h4>{{$sim->Plan}}</h4>
        <h4>{{$sim->fecha_plan}}</h4>
      </div>
  </div>
  <div class="row">
    <div class="col-sm-4">
      <div class="alert alert-danger " role="alert">
        <h3>Recargas</h3>
        @foreach($recargas as $row)
        <p><strong> Fecha :</strong> {{$row->fecha_recarga}} / <strong> Bs :</strong> {{$row->monto_bs}} / <strong> USD :</strong> {{$row->equivalencia_usd}}</br></p>
        @endforeach
      </div>
    </div>
    <div class="col-sm-8">
      <div class="alert alert-info " role="alert">
        <h3>Historico</h3>
        @foreach($historico as $row1)
        <p><strong> Fecha :</strong> {{$row1->time}} / <strong> Numero :</strong> {{$row1->number}} / <strong> duracion :</strong> {{$row1->duration}}</br></p>
        @endforeach
      </div>
    </div>
  </div>
</div>




@endsection