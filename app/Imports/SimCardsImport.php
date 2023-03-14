<?php

namespace App\Imports;

use Session;
use App\Models\SimCard;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;


class SimCardsImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    * @return SimCard|null 
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    private $lote;

    public function __construct()
    {
        $this->lote = Session::get('milote');
    }

    public function model(array $row)
    {
        return new SimCard([
            //
            
            "serial" => $row['serial'],
            "puk" => $row['puk'],
            "numero" => $row['numero'],
            "lotes_id" => $this->lote
        ]);
    }
}
