<!-- First you need to extend the CB layout -->
@extends('crudbooster::admin_template')
@section('content')
<!-- Your custom  HTML goes here -->
<form method="POST" action="" enctype="multipart/form-data">
    @csrf
    <div class="card-body">
        <div class="form-group row">

            {{-- File Input --}}
            <div class="col-sm-12 mb-3 mt-3 mb-sm-0">
                <label for="staticEmail" class="col-form-label">Buscar</label>
                <input type="text" class="form-control-plaintext" id="buscar" value="buscar">
            </div>

        </div>
    </div>

    <div class="card-footer">
        <button type="submit" class="btn btn-success btn-user float-right mb-3">Buscar</button>
        <a class="btn btn-primary float-right mr-3 mb-3" href="{{CRUDBooster::mainpath()}}">Limpiar</a>
    </div>
</form>
<table class='table table-striped table-bordered'>
  <thead>
      <tr>
        <th>Serial</th>
        <th>Numero</th>
        <th>Persona</th>
        <th>Accion</th>
       </tr>
  </thead>
  <tbody>
    @foreach($result as $row)
      <tr>
        <td>{{$row->serial}}</td>
        <td>{{$row->numero}}</td>
        <td>{{$row->nombres}}</td>
        <td>
          <!-- Boton mostrar historico -->
          <a class='btn btn-success btn-sm' href='{{CRUDBooster::mainpath("edit/$row->id")}}'>Ver Detalles</a>
        </td>
       </tr>
    @endforeach
  </tbody>
</table>

<!-- Paginacion -->
<p>{!! urldecode(str_replace("/?","?",$result->appends(Request::all())->render())) !!}</p>
@endsection