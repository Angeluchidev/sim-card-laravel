<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class SimCard
 * 
 * @property int $id
 * @property string $serial
 * @property string|null $cod_pin
 * @property string|null $puk
 * @property string|null $numero
 * @property Carbon|null $fecha_act
 * @property Carbon|null $fecha_plan
 * @property int|null $planes_id
 * @property int|null $personas_id
 * @property int $lotes_id
 * 
 * @property Plane|null $plane
 * @property Persona|null $persona
 * @property Lote $lote
 * @property Collection|HistoricosSim[] $historicos_sims
 * @property Collection|Recarga[] $recargas
 *
 * @package App\Models
 */
class SimCard extends Model
{
	protected $table = 'sim_cards';
	public $timestamps = false;

	protected $casts = [
		'fecha_act' => 'date',
		'fecha_plan' => 'date',
		'planes_id' => 'int',
		'personas_id' => 'int',
		'lotes_id' => 'int'
	];

	protected $fillable = [
		'serial',
		'cod_pin',
		'puk',
		'numero',
		'fecha_act',
		'fecha_plan',
		'planes_id',
		'personas_id',
		'lotes_id'
	];

	public function plane()
	{
		return $this->belongsTo(Plane::class, 'planes_id');
	}

	public function persona()
	{
		return $this->belongsTo(Persona::class, 'personas_id');
	}

	public function lote()
	{
		return $this->belongsTo(Lote::class, 'lotes_id');
	}

	public function historicos_sims()
	{
		return $this->hasMany(HistoricosSim::class, 'sim_cards_id');
	}

	public function recargas()
	{
		return $this->hasMany(Recarga::class, 'sim_cards_id');
	}
}
