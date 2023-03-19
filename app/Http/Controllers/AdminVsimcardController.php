<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminVsimcardController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {
	    	# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = false;
			$this->button_action_style = "button_icon";
			$this->button_add = false;
			$this->button_edit = false;
			$this->button_delete = false;
			$this->button_detail = false;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "sim_cards";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

	        $this->col = [];
			$this->col[] = ["label"=>"Lote","name"=>"lotes_id","join"=>"lotes,descripcion"];
			$this->col[] = ["label"=>"Serial","name"=>"serial"];
			$this->col[] = ["label"=>"Pin","name"=>"cod_pin"];
			$this->col[] = ["label"=>"Puk","name"=>"puk"];
			$this->col[] = ["label"=>"Numero","name"=>"numero"];
			$this->col[] = ["label"=>"Fecha Act","name"=>"fecha_act"];
			$this->col[] = ["label"=>"Fecha Plan","name"=>"fecha_plan"];
			$this->col[] = ["label"=>"Planes","name"=>"planes_id","join"=>"planes,plan"];
			$this->col[] = ["label"=>"Persona","name"=>"personas_id","join"=>"personas,nombres"];
			//$this->col[] = ["label"=>"Recargas","name"=>"(SELECT 
							//group_concat(
								//'fecha:','&nbsp;',recargas.fecha_recarga,'/','&nbsp;','Monto:','&nbsp;',recargas.monto_bs,'&nbsp;','BS','/','&nbsp;',recargas.equivalencia_usd,'&nbsp;','$' SEPARATOR '<BR>'
							//)
							//FROM
								//recargas
							//where sim_cards_id = sim_cards.id) as Recargas"];
			//$this->col[] = ["label"=>"Historico","name"=>"(SELECT 
							//group_concat(
								//'fecha:','&nbsp;',historicos_sim.fecha_historico,'/','&nbsp;','Status:','&nbsp;',status.descripcion,'&nbsp;','/','Almacen:','&nbsp;',almacenes.descripcion SEPARATOR '<BR>'
							//)
							//FROM
								//historicos_sim
								//JOIN status ON historicos_sim.status_id = status.id
								//JOIN almacenes ON historicos_sim.almacenes_id = almacenes.id
							//where sim_cards_id = sim_cards.id) as Historico"];				

			# END COLUMNS DO NOT REMOVE THIS LINE
			# START FORM DO NOT REMOVE THIS LINE
		$this->form = [];
		

			# END FORM DO NOT REMOVE THIS LINE     

			/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
	        $this->addaction = array();
			$this->addaction[] = ['label'=>'Ver Detalle','url'=>CRUDBooster::mainpath('historico/[id]/[serial]'),'icon'=>'fa fa-check','color'=>'success'];


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
	        $this->button_selected = array();

	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                

	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
	        $this->index_button = array();



	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();     	          

	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();
	        
	        
	    }

		//public function getIndex() {
			//First, Add an auth
			 //if(!CRUDBooster::isView()) CRUDBooster::redirect(CRUDBooster::adminPath(),trans('crudbooster.denied_access'));
			 
			 //Create your own query 
			 //$data = [];
			 //$data['page_title'] = 'Vista Sim Cardsooooo';
			 //$data['result'] = DB::table('vsimcard')->orderby('id','desc')->paginate(10);
			  
			 //Create a view. Please use `view` method instead of view method from laravel.
			 //return $this->view('vista_sim_cards',$data);
		  //}

		public function getHistorico($id,$serial) {
			
			if(!CRUDBooster::isUpdate() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {    
				CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
			  }
			 
			 //Create your own query 

			 $serial_format = trim($serial);
			 
			 $data = [];
  			 $data['page_title'] = 'Detalles de Sim Card';
  			 $data['sim'] = DB::table('vsimcard')->where('id', $id)->first();
			 $data['recargas'] = DB::table('recargas')->where('sim_cards_id', $id)->get();
			 $data['historico'] = DB::table('call_record')->where('iccid', ' '.$serial_format)->get();
			 //$data['mi_id'] = $id;
			 //$data['mi_serial'] = $serial;
			  
			 //Create a view. Please use `view` method instead of view method from laravel.
			 return $this->view('vista_historicos',$data);
		  }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here
	            
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here
	            
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here 

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }



	    //By the way, you can still create your own method in here... :) 


	}