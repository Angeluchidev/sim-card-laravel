<!-- First you need to extend the CB layout -->
@extends('crudbooster::admin_template')
@section('content')
<!-- Your custom  HTML goes here -->

<!-- DataTales Example -->
<div class="card shadow mb-4">
    {{-- Message --}}
    @if (Session::has('success'))
    <div class="alert alert-success alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert">
            <i class="fa fa-times"></i>
        </button>
        <strong>Que bien !</strong> {{ session('success') }}
    </div>
    @endif

    @if (Session::has('error'))
    <div class="alert alert-danger alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert">
            <i class="fa fa-times"></i>
        </button>
        <strong>Error !</strong> {{ session('error') }}
    </div>
    @endif
   
    <form method="POST" action="{{route('upload')}}" enctype="multipart/form-data">
        @csrf
        <div class="card-body">
            <div class="form-group row">

                {{-- Archivo formato --}}
                <div class="col-md-12 mb-3 mt-3">
                    <p>Por favor descargue Formato <a href="{{ asset('files/formato_exel.xls') }}" target="_blank">Archivo xls</a></p>
                </div>
                
                {{-- Selecciona lote --}}
                <div class="col-md-4 mb-3 mt-3">
                    <label>Lote</label>
                    <select class="form-control" name="lote">
                        <option selected>Seleciona Lote</option>
                        @foreach ($lotes as $row )
                        <option value="{{$row->id}}">{{$row->descripcion}}</option>     
                        @endforeach
                        
                    </select>
                </div>
                
                {{-- File Input --}}
                <div class="col-sm-12 mb-3 mt-3 mb-sm-0">
                    <span style="color:red;">*</span>Entrada de archivo (hoja de datos)</label>
                    <input 
                        type="file" 
                        class="form-control form-control-user @error('file') is-invalid @enderror" 
                        id="file"
                        name="archivo" 
                        value="{{ old('file') }}">

                    @error('file')
                        <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>

            </div>
        </div>

        <div class="card-footer">
            <button type="submit" class="btn btn-success btn-user float-right mb-3">Importar Sim Cards</button>
            <a class="btn btn-primary float-right mr-3 mb-3" href="/admin">Cancelar</a>
        </div>
    </form>
</div>
@endsection