@extends('admin_layout')
@section('admin_content')
<ul class="breadcrumb">
	<li>
		<i class="icon-home"></i>
		<a href="index.html">Home</a>
		<i class="icon-angle-right"></i> 
	</li>
	<li>
		<i class="icon-edit"></i>
		<a href="#">Add product</a>
	</li>
</ul>

<div class="row-fluid sortable">
	<div class="box span12">
		<div class="box-header" data-original-title>
			<h2><i class="halflings-icon edit"></i><span class="break"></span>Add product</h2>
		</div>
		<p class="alert-success">
			<?php
			$message=Session::get('message');
			if($message)
			{
				echo $message;
				Session::put('message',null);

			}
           ?>
		</p>
		<div class="box-content">
			<form class="form-horizontal" action="{{ url('/save-product') }}" method="post" 
			enctype="multipart/form-data">
				{{ csrf_field() }}
			  <fieldset>
				<div class="control-group">
				  <label class="control-label" for="date01">Product Name</label>
				  <div class="controls">
					<input type="text" class="input-xlarge" name="product_name" required="">
				  </div>
				</div>
                <div class="control-group">
					<label class="control-label" for="selectError3">Product category</label>
					<div class="controls">
					  <select id="selectError3" name="category_id"> 
					  	<option>select category</option>
                     <?php
                           $all_published_category=DB::table('tbl_category')
                                                  ->where('publication_status',1)
                                                  ->get();
                            foreach($all_published_category as $v_category){?>  
					<option value="{{$v_category->category_id}}">{{$v_category->category_name}}</option>	
					<?php } ?>				
					  </select>
					</div>
				  </div>
				  <div class="control-group">
					<label class="control-label" for="selectError3">Manufacture Name</label>
					<div class="controls">
					  <select id="selectError3" name="manufacture_id">
						<option>seslect manufacture </option>
                        <?php
                           $all_published_manufacture=DB::table('tbl_manufacture')
                                                  ->where('publication_status',1)
                                                  ->get();
                            foreach($all_published_manufacture as $v_manufacture){?>  
					   <option value="{{$v_manufacture->manufacture_id}}">{{$v_manufacture->manufacture_name}}</option>	
					<?php } ?>	

					  </select>
					</div>
				  </div>
				<div class="control-group hidden-phone">
				  <label class="control-label" for="textarea2">Product short description </label>
				  <div class="controls">
					<textarea class="cleditor" name="product_short_description" rows="3" required=""></textarea>
				  </div>
				</div>

				<div class="control-group hidden-phone">
				  <label class="control-label" for="textarea2">Product Long description </label>
				  <div class="controls">
					<textarea class="cleditor" name="product_long_description" rows="3" required=""></textarea>
				  </div>
				</div>
				<div class="control-group">
				  <label class="control-label" for="date01">Product Price</label>
				  <div class="controls">
					<input type="text" class="input-xlarge" name="product_price" required="">
				  </div>
				</div>
                <div class="control-group">
				  <label class="control-label" for="fileInput">Image </label>
				  <div class="controls">
					<input class="input-file uniform_on" name="product_image" id="fileInput" type="file">
				  </div>
				</div>  
				<div class="control-group">
				  <label class="control-label" for="date01">Product Size</label>
				  <div class="controls">
					<input type="text" class="input-xlarge" name="product_size" required="">
				  </div>
				</div>
				<div class="control-group">
				  <label class="control-label" for="date01">Product Color</label>
				  <div class="controls">
					<input type="text" class="input-xlarge" name="product_color" required="">
				  </div>
				</div>
				<div class="control-group hidden-phone">
				  <label class="control-label" for="textarea2">Publication status  </label>
				  <div class="controls">
					<input type="checkbox" name="publication_status" value="1">
				  </div>
				</div>
				<div class="form-actions">
				  <button type="submit" class="btn btn-primary">Add Product </button>
				  <button type="reset" class="btn">Cancel</button>
				</div>
			  </fieldset>
			</form>   

		</div>
	</div><!--/span-->

</div><!--/row-->
@endsection