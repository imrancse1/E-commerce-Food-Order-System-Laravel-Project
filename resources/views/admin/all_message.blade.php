@extends('admin_layout')
@section('admin_content')
<ul class="breadcrumb">
			<li>
				<i class="icon-home"></i>
				<a href="index.html">Home</a> 
				<i class="icon-angle-right"></i>
			</li>
			<li><a href="#">Tables</a></li>
		</ul>
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
		<div class="row-fluid sortable">		
			<div class="box span12">
				<div class="box-header" data-original-title>
					<h2><i class="halflings-icon user"></i><span class="break"></span>Members</h2>
				</div>
				<div class="box-content">
					<table class="table table-striped table-bordered bootstrap-datatable datatable">
					  <thead>
						  <tr>
						  	  <th>Contact ID</th>
							  <th>First Name</th>
							  <th>Last Name</th>
							  <th>Email</th>
							  <th>Body</th>
							  <th>Actions</th>
						  </tr>
					  </thead> 
                 @foreach( $all_message_info as $v_message)
					  <tbody>
						<tr>
						<td>{{ $v_message->contact_id }}</td>
						<td class="center">{{ $v_message->first_name }}</td>
						<td class="center">{{ $v_message->last_name }}</td>
						<td class="center">{{ $v_message->email }}</td>
						<td class="center">{{$v_message->body}}</td>

						<td class="center">
							@if($v_message->publication_status==1)
							<span class="label label-success">Unseen</span>
							@else
                                <span class="label label-danger">Seen</span>
							@endif
						</td>

						<td class="center">
                            @if($v_message->publication_status==1)
							<a class="btn btn-danger" href="{{URL::to('/unactive_contact/'.$v_message->contact_id)}}">
								<i class="halflings-icon white thumbs-down"></i>  
							</a>
                            @else
                             <a class="btn btn-success" href="{{URL::to('/active_contact/'.$v_message->contact_id)}}">
								<i class="halflings-icon white thumbs-up"></i>  
							</a>
                            @endif

							<a class="btn btn-info" href="{{URL::to('/view-message/'.$v_message->contact_id)}}">
								<i class="halflings-icon white edit"></i>  
							</a>
							<a class="btn btn-danger" href="{{URL::to('/delete-contact/'.$v_message->contact_id)}}" id="delete">
								<i class="halflings-icon white trash"></i> 
							</a>
						</td>
						</tr>				
					  </tbody>
                   @endforeach
				  </table>            
				</div>
			</div><!--/span-->
		
		</div><!--/row-->

@endsection