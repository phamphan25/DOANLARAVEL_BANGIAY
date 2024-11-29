<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Comment extends Model
{
    use HasFactory;

    protected $table = 'danh_gia'; 
    protected $primaryKey = 'id_user';
    protected $fillable = ['id','id_user', 'ten_danh_gia', 'danh_gia', 'danh_gia_binh_luan','id_giay'];

    // Quan hệ với bảng khách hàng (customer)
    public function customer()
    {
        return $this->belongsTo(User::class, 'id_user','id');  // customer_id là khóa ngoại trong bảng comment
    }

    // Quan hệ với bảng sản phẩm (product)
    public function product()
    {
        return $this->belongsTo(Giay::class, 'id_giay','id_giay'); // Đảm bảo chỉ rõ product_id nếu cần
    }
}