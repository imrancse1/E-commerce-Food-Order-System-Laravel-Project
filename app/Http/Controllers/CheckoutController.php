<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use Session;
use Cart;
use Illuminate\Support\Facades\Redirect;
class CheckoutController extends Controller
{
    public function login_check()
    {
    	return view('pages.login');
    }

    public function customer_registration(Request $request)
    {
      $data=array();
      $data['customer_name']=$request->customer_name;
      $data['customer_email']=$request->customer_email;
      $data['password']=md5($request->password);
      $data['mobile_number']=$request->mobile_number;

        $customer_id=DB::table('tbl_customer')
                     ->insertGetId($data);

               Session::put('customer_id',$customer_id);
               Session::put('customer_name',$request->customer_name);
               return Redirect('/checkout');      

    }

    public function checkout()
    {
    	
      return view('pages.checkout');


    }

    public function save_shipping_details(Request $request)
    {

      $data=array();
      $data['shipping_email']=$request->shipping_email;
      $data['shipping_first_name']=$request->shipping_first_name;
      $data['shipping_last_name']=$request->shipping_last_name;
      $data['shipping_address']=$request->shipping_address;
      $data['shipping_mobile_number']=$request->shipping_mobile_number;
      $data['shipping_city']=$request->shipping_city;

        $shipping_id=DB::table('tbl_shipping')
                     ->insertGetId($data);
           Session::put('shipping_id',$shipping_id);
           return Redirect::to('/payment'); 

    }

    public function customer_login(Request $request)
    {
      $customer_email=$request->customer_email;
      $password=md5($request->password);
      $result=DB::table('tbl_customer')
              ->where('customer_email',$customer_email)
              ->where('password',$password)
              ->first();

             if ($result) {
               
               Session::put('customer_id',$result->customer_id);
               return Redirect::to('/checkout');
             }else{
                
                return Redirect::to('/login-check');
             }
    }
  
    public function payment()
    {
      return view('pages.payment');
    }
    
    public function order_place(Request $request)
    {
      $payment_gateway=$request->payment_method;

      // $total=Cart::total();
      // echo $total;
      
      $pdata=array();
      $pdata['payment_method']=$payment_gateway;
      $pdata['payment_status']='pending';
      $payment_id=DB::table('tbl_payment')
             ->insertGetId($pdata);
  

      $odata=array();
      $odata['customer_id']=Session::get('customer_id');
      $odata['shipping_id']=Session::get('shipping_id');
      $odata['payment_id']=$payment_id;
      $odata['order_total']=Cart::total();
      $odata['order_status']='pending';
      $order_id=DB::table('tbl_order')
               ->insertGetId($odata);
  
     $contents=Cart::content();
     $oddata=array();

     foreach ($contents as  $v_content) 
     {
        $oddata['order_id']=$order_id;
        $oddata['product_id']=$v_content->id;
        $oddata['product_name']=$v_content->name;
        $oddata['product_price']=$v_content->price;
        $oddata['product_sales_quantity']=$v_content->qty;

        DB::table('tbl_order_details')
            ->insert($oddata);

     }

     if ($payment_gateway=='handcash') {
          
           Cart::destroy();
          return view('pages.handcash');
         
        
     }elseif ($payment_gateway=='cart') {
   
      echo "cart";
      
     }elseif($payment_gateway=='paypal'){

         echo "paypal";
     }else{
      echo "not selectd";
     }


    }

    public function manage_order()
    {
     
      $all_order_info=DB::table('tbl_order')
                     ->join('tbl_customer','tbl_order.customer_id','=','tbl_customer.customer_id')
                     ->select('tbl_order.*','tbl_customer.customer_name')
                     ->get();

       $manage_order=view('admin.manage_order')
               ->with('all_order_info',$all_order_info);
       return view('admin_layout')
               ->with('admin.manage_order',$manage_order); 

    }

  public function view_order($order_id)
  {
      $order_by_id=DB::table('tbl_order')
              ->join('tbl_customer','tbl_order.customer_id','=','tbl_customer.customer_id')
              ->join('tbl_order_details','tbl_order.order_id','=','tbl_order_details.order_id')
              ->join('tbl_shipping','tbl_order.shipping_id','=','tbl_shipping.shipping_id')
              ->select('tbl_order.*','tbl_order_details.*','tbl_shipping.*','tbl_customer.*')
              ->where('tbl_order.order_id',$order_id)
              ->get();

       $view_order=view('admin.view_order')
               ->with('order_by_id',$order_by_id);
       return view('admin_layout')
               ->with('admin.view_order',$view_order); 

                     // echo "<pre>";
                     //  print_r($order_by_id);
                     // echo "</pre>";

  }

   public function unactive_order($order_id)
    {
          DB::table('tbl_order')
              ->where('order_id',$order_id)
              ->update(['order_status' => 0]);
          Session::put('message','order Unactive successfully !! ');
              return Redirect::to('manage-order');
    }

    public function active_order($order_id)
    {
          DB::table('tbl_order')
              ->where('order_id',$order_id)
              ->update(['order_status' => 1]);
          Session::put('message','order active successfully !! ');
              return Redirect::to('manage-order');
    }


    public function customer_logout()
    {
      Session::flush();
      return Redirect::to('/');
    }


    
}
