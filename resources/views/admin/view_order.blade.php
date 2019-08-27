@extends('admin_layout')
@section('admin_content')
	<div class="row-fluid sortable">
				<div class="box span6">
					<div class="box-header">
						<h2><i class="halflings-icon align-justify"></i><span class="break"></span>Customer Details </h2>
					</div>
					<div class="box-content">
						<table class="table">
							  <thead>
								  <tr>
									  <th>customer name</th>
									  <th>mobile</th>                                       
								  </tr>
							  </thead>   
							  <tbody>
								<tr>
									 @foreach($order_by_id as $v_order)
									 @endforeach 
							         <td>{{$v_order->customer_name}}</td>
							         <td>{{$v_order->mobile_number}}</td> 
							                                  
								</tr>                                
							  </tbody>
						 </table>      
					</div>
				</div>
				
				<div class="box span6">
					<div class="box-header">
						<h2><i class="halflings-icon align-justify"></i><span class="break"></span>Shipping Details</h2>
					</div>
					<div class="box-content">
						<table class="table table-striped">
							  <thead>
								  <tr>
									  <th>Username</th>
									  <th>Address</th>
									  <th>Mobile</th> 
									   <th>Email</th>           
								  </tr>
							  </thead>   
							  <tbody>
								<tr>
									@foreach($order_by_id as $v_order)
									 @endforeach
								      <td>{{$v_order->shipping_first_name}}</td>
								      <td>{{$v_order->shipping_address}}</td>                   
								      <td>{{$v_order->shipping_mobile_number}}</td>
								      <td>{{$v_order->shipping_email}}</td>   
								     
								</tr>
							                                 
							  </tbody>
						 </table>    
					</div>
				</div><!--/span-->
			</div><!--/row-->
<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>Order Details</h2>
					</div>
					<div class="box-content">
						<table class="table table-striped ">
						  <thead>
							  <tr>
								  <th>Order Id</th>
								  <th>Product name</th>
								  <th>Product price</th>
								  <th>Product sales quantity</th>
								  <th>Product sub total</th>
							  </tr>
						  </thead> 

						  <tbody>
						 @foreach($order_by_id as $v_order)							  	 
							<tr>
						
				             <td>{{$v_order->order_id}}</td> 
				             <td>{{$v_order->product_name}}</td> 
				             <td>{{$v_order->product_price}}</td>
				             <td>{{$v_order->product_sales_quantity}}</td> 
                             <td>{{$v_order->product_price*$v_order->product_sales_quantity}}</td>
				                
                              
							</tr>
						@endforeach
							
						  </tbody>
                          <tfoot>
                          	<tr>
                          	<td colspan="4">Total with vat: </td>
                          	<td><strong>={{$v_order->order_total}}  Tk</strong></td>
                          	</tr>
                          </tfoot>
				               
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->

		
			
			

@endsection