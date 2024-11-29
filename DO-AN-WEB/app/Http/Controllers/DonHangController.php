<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Redirect;

use App\Models\User;
use App\Models\Giay;
use App\Models\LoaiGiay;
use App\Models\ThuongHieu;
use App\Models\KhuyenMai;
use App\Models\GioHang;
use App\Models\PhanQuyen;
use App\Models\DonHang;

class DonHangController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(session()->get(key:'check') == 0){
            return view('auth.login');
        } else{
            $data = User::where('id',session('DangNhap'))->first();
            $thuonghieus = ThuongHieu::all();
            $loaigiays = LoaiGiay::all();
            $giays = Giay::all();
            $users = User::all();
            $phanquyens = PhanQuyen::all();
            $khuyenmais = KhuyenMai::all();

            $giohangs = session()->get(key:'gio_hang');
            if(!$giohangs){
                $giohangs = array();
            }

            return view('index')->with('route', 'thanh-toan')
            ->with('data', $data)
            ->with('thuonghieus', $thuonghieus)
            ->with('loaigiays', $loaigiays)
            ->with('giays', $giays)
            ->with('users', $users)
            ->with('phanquyens', $phanquyens)
            ->with('khuyenmais', $khuyenmais)
            ->with('giohangs', $giohangs)
            ;
        }

    }

    public function thanhtoan(Request $request)
    {

        $giohangs = session()->get(key:'gio_hang');
        if(!$giohangs){
            $giohangs = array();
        }

        $thanhtoans = array();

        $check_gio_hangs = $request->input('check-gio-hang');
        foreach($check_gio_hangs as $check_gio_hang){
            foreach($giohangs as $id=>$giohang){
                if($check_gio_hang == $id){
                    $thanhtoans[$id] = $giohang;
                }
            }
        }

        if(session()->get(key:'check') == 0){
            return view('auth.login');
        } else{
            $data = User::where('id',session('DangNhap'))->first();
            $thuonghieus = ThuongHieu::all();
            $loaigiays = LoaiGiay::all();
            $giays = Giay::all();
            $users = User::all();
            $phanquyens = PhanQuyen::all();
            $khuyenmais = KhuyenMai::all();

            return view('index')->with('route', 'thanh-toan')
            ->with('data', $data)
            ->with('thuonghieus', $thuonghieus)
            ->with('loaigiays', $loaigiays)
            ->with('giays', $giays)
            ->with('users', $users)
            ->with('phanquyens', $phanquyens)
            ->with('khuyenmais', $khuyenmais)
            ->with('giohangs', $thanhtoans)
            ;
        }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    function execPostRequest($url, $data)
    {
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
                'Content-Type: application/json',
                'Content-Length: ' . strlen($data))
        );
        curl_setopt($ch, CURLOPT_TIMEOUT, 5);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        //execute post
        $result = curl_exec($ch);
        //close connection
        curl_close($ch);
        return $result;
    }
    public function store(Request $request)
    {
        // 'ten_nguoi_nhan', 'sdt', 'dia_chi_nhan', 'ghi_chu', 'ten_giay', 'don_gia', 'so_luong', 'thanh_tien'
        // serialize() - unserialize()
        $giohangs = session()->get(key:'gio_hang');
        if($request->hinh_thuc_thanh_toan === "MOMO"){
            $endpoint = "https://test-payment.momo.vn/v2/gateway/api/create";
            $partnerCode = 'MOMOBKUN20180529';
            $accessKey = 'klm05TvNBzhg7h7j';
            $secretKey = 'at67qH6mk8w5Y1nAyMoYKMWACiEi2bsa';
            $orderInfo = "Thanh toán qua MoMo";
            $amount = preg_replace('/[^0-9]/', '', $request->tong_tien);
            $orderId = time() . "";
            $redirectUrl = "http://localhost:8000/thanh-toan";
            $ipnUrl = "http://localhost:8000/thanh-toan";
            $extraData = "";
                $requestId = time() . "";
                $requestType = "payWithATM";
                //before sign HMAC SHA256 signature
                $rawHash = "accessKey=" . $accessKey . "&amount=" . $amount . "&extraData=" . $extraData . "&ipnUrl=" . $ipnUrl . "&orderId=" . $orderId . "&orderInfo=" . $orderInfo . "&partnerCode=" . $partnerCode . "&redirectUrl=" . $redirectUrl . "&requestId=" . $requestId . "&requestType=" . $requestType;
                $signature = hash_hmac("sha256", $rawHash, $secretKey);
                $data = array('partnerCode' => $partnerCode,
                    'partnerName' => "Test",
                    "storeId" => "MomoTestStore",
                    'requestId' => $requestId,
                    'amount' =>intval($amount),
                    'orderId' => $orderId,
                    'orderInfo' => $orderInfo,
                    'redirectUrl' => $redirectUrl,
                    'ipnUrl' => $ipnUrl,
                    'lang' => 'vi',
                    'extraData' => $extraData,
                    'requestType' => $requestType,
                    'signature' => $signature);
                $result = $this->execPostRequest($endpoint, json_encode($data));
                $jsonResult = json_decode($result, true);  // decode json

                $donhang = DonHang::create([
                    'ten_nguoi_nhan' => $request->input('ten_nguoi_nhan'),
                    'sdt' => $request->input('sdt'),
                    'dia_chi_nhan' => $request->input('dia_chi_nhan'),
                    'ghi_chu' => $request->input('ghi_chu'),
                    'tong_tien' => $request->input('tong_tien'),
                    'hoa_don' => $request->input('thanh_toans'),
                    'hinh_thuc_thanh_toan' => $request->input('hinh_thuc_thanh_toan'),
                    
                ]);

                $danh_gias = session()->get(key:'danh_gias');
                if(!$danh_gias){
                    $danh_gias = array();
                }
                $oks = unserialize($request->input('thanh_toans'));
                foreach($oks as $id=>$ok){
                    $danh_gias[$id] = $ok;
                    $giay = Giay::find($id);
                    $giay['so_luong_mua'] = $giay['so_luong_mua'] + 1;
                    $giay->save();
        
                }
                session()->put('danh_gias', $danh_gias);
        
                foreach($danh_gias as $iddg=>$danh_gia){
                    // dd($danh_gias);
                    foreach($giohangs as $idgh=>$giohang){
                        if($idgh == $iddg){
                            unset($giohangs[$idgh]);
                            // $giohangs[$idgh] = '';
                        }
                    }
                }

                $success = "Chúc mừng bạn đã thanh toán thành công";
                session()->flash('show_success_popup', true);
                session()->put('gio_hang', $giohangs);
                return redirect()->to($jsonResult['payUrl']);
        }
        else{
            $donhang = DonHang::create([
                'ten_nguoi_nhan' => $request->input('ten_nguoi_nhan'),
                'sdt' => $request->input('sdt'),
                'dia_chi_nhan' => $request->input('dia_chi_nhan'),
                'ghi_chu' => $request->input('ghi_chu'),
                'tong_tien' => $request->input('tong_tien'),
                'hoa_don' => $request->input('thanh_toans'),
                'hinh_thuc_thanh_toan' => $request->input('hinh_thuc_thanh_toan'),
                
            ]);
    
            // $danh_gias = $request->input('thanh_toans');
            $danh_gias = session()->get(key:'danh_gias');
            if(!$danh_gias){
                $danh_gias = array();
            }
            $oks = unserialize($request->input('thanh_toans'));
            foreach($oks as $id=>$ok){
                $danh_gias[$id] = $ok;
                $giay = Giay::find($id);
                $giay['so_luong_mua'] = $giay['so_luong_mua'] + 1;
                $giay->save();
    
            }
            session()->put('danh_gias', $danh_gias);
    
            foreach($danh_gias as $iddg=>$danh_gia){
                // dd($danh_gias);
                foreach($giohangs as $idgh=>$giohang){
                    if($idgh == $iddg){
                        unset($giohangs[$idgh]);
                        // $giohangs[$idgh] = '';
                    }
                }
    
            
    
            }
            // dd($giohangs);
            session()->flash('show_success_popup', true);
            session()->put('gio_hang', $giohangs);
    
            return Redirect('/thanh-toan');
        }

       
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = User::where('id',session('DangNhap'))->first();
        $thuonghieus = ThuongHieu::all();
        $loaigiays = LoaiGiay::all();
        $giays = Giay::all();
        $users = User::all();
        $phanquyens = PhanQuyen::all();
        $khuyenmais = KhuyenMai::all();
        $donhangId = DonHang::find($id);
        $giohangs = session()->get(key:'gio_hang');

        return view('admin.donhang.xem', compact('donhangId', 'data', 'thuonghieus', 'loaigiays', 'giays', 'users', 'phanquyens', 'khuyenmais'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }
    public function updateStatus(Request $request){
        $donhang = DonHang::find($request->id_don_hang);
        $donhang->status = 1;
        $donhang->save();
        return Redirect('/admin/donhang')->with('success','Đơn hàng đã được duyệt');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $data = DonHang::find($id);
        $data->delete();
        return Redirect('/admin/donhang');
    }
}
