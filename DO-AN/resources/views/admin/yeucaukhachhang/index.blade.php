@extends('layout.layout')
@section('content')
@endsection
@section('main_content')


<div class="row row-sm">
    <div class="col-lg-12">
        <div class="card custom-card">
            <div class="card-header border-bottom">
                <h3 class="card-title">Comment Table</h3>
            </div>
            <div class="card-body">
                <p class="text-muted">
                    Danh Sách Liên Hệ
                </p>
                @if(session('success'))
                <div class="alert alert-success">
                    {{ session('success') }}
                </div>
                @endif

                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Tên</th>
                                <th>Email</th>
                                <th>Thông Điệp</th>
                                <th>Ngày Tạo</th>
                                <th>Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($inquiries as $inquiry)
                            <tr>
                                <td>{{ $inquiry->ten ?? '' }}</td>
                                <td>{{ $inquiry->email ?? '' }}</td>
                                <td>{{ $inquiry->tin_nhan ?? ''}}</td>
                                <td>{{ $inquiry->created_at->format('d/m/Y H:i') ?? '' }}</td>
                                <td>
                                    <!-- Delete Button Form -->
                                    <form action="{{ route('inquiries.destroy', $inquiry->id) }}" method="POST"
                                        style="display:inline-block;">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-danger"
                                            onclick="return confirm('Bạn có chắc chắn muốn xóa thông tin này?');">
                                            Xóa
                                        </button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>
@endsection