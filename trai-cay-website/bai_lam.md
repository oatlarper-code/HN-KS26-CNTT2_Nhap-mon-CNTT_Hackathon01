# BÀI LÀM – HACKATHON 01

- **Mã đề:** 17
- **Họ tên:** Nguyễn Hoàng Minh Phúc
- **Lớp:** CNTT2
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):** Window

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```
mkdir docs,media,data,logs,backup
pwd
ls -Force
mv .\Nguon_Hang.txt docs; mv .\Logo_Trai_Cay_Sach.PNG .\media\
cp .\media\Logo_Trai_Cay_Sach.PNG .\backup\ 
rm *tmp
cd logs; gc Fruit.log
cd ..

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```
    Directory: C:\Users\My Laptop\Downloads\trai-cay-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----          28/10/26   1:36 PM                backup
d-----          28/10/26   1:51 PM                data
d-----          28/10/26   1:36 PM                docs
d-----          28/10/26   1:49 PM                logs
d-----          28/10/26   1:36 PM                media
d-----          28/10/26   1:34 PM                Trai Cay Website FINAL
-a-h--          27/10/26   1:32 AM             70 .env
-a----          28/10/26   1:46 PM            278 auto_report.ps1
-a----          27/10/26   1:32 AM           2228 bai_lam.md
-a----          28/10/26   1:38 PM              0 README.md


    Directory: C:\Users\My Laptop\Downloads\trai-cay-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----          27/10/26   1:32 AM           7054 Logo_Trai_Cay_Sach.PNG


    Directory: C:\Users\My Laptop\Downloads\trai-cay-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----          28/10/26   1:51 PM          11123 Ban_Trai_Cay_Thang_7.xlsx


    Directory: C:\Users\My Laptop\Downloads\trai-cay-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----          27/10/26   1:32 AM             66 Nguon_Hang.txt


    Directory: C:\Users\My Laptop\Downloads\trai-cay-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----          28/10/26   1:46 PM            584 auto_report.txt
-a----          28/10/26   1:38 PM            584 daily_report.txt
-a----          27/10/26   1:32 AM           1041 Fruit.log
-a----          28/10/26   1:49 PM            992 tong_hop.txt


    Directory: C:\Users\My Laptop\Downloads\trai-cay-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----          27/10/26   1:32 AM           7054 Logo_Trai_Cay_Sach.PNG

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```
cd .\logs\; gc Fruit.log | Select-String "ERROR" > daily_report.txt

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```
2026-07-28 09:31:32 [ERROR] Thanh toan bi tu choi
2026-07-28 09:40:32 [ERROR] Het thoi gian cho (timeout)

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```
Set-ExecutionPolicy Bypass -Scope Process
.\auto_report.ps1
```

### Kết quả hiển thị

```
Dang loc log...
===BAO CAO LOI===
Hoan thanh!
```

## 4.6. Đếm số dòng lỗi

### Lệnh

```
gc .\logs\Fruit.log | Select-String "ERROR" | Measure-Object

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```
Count    : 5
Average  :
Sum      :
Maximum  :
Minimum  :
Property :
```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```
"=== TONG HOP LOG===" > .\logs\tong_hop.txt; gc .\logs\Fruit.log | Select-String "Warning" >> .\logs\tong_hop.txt; gc .\logs\Fruit.log | Select-String "ERROR" >> .\logs\tong_hop.txt
```

### Nội dung file logs/tong_hop.txt

```
=== TONG HOP LOG===

2026-07-28 09:37:32 [WARNING] Don giao trong gio cao diem
2026-07-28 10:07:32 [WARNING] Don giao trong gio cao diem
2026-07-28 10:13:32 [WARNING] Don giao trong gio cao diem



2026-07-28 09:31:32 [ERROR] Thanh toan bi tu choi
2026-07-28 09:40:32 [ERROR] Het thoi gian cho (timeout)
2026-07-28 09:49:32 [ERROR] Khong tim thay trang /hang-moi-ve (404)
2026-07-28 10:04:32 [ERROR] Thanh toan bi tu choi
2026-07-28 10:16:32 [ERROR] Het thoi gian cho (timeout)
```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/ban_trai_cay_thang_7.xlsx`, không cần ghi vào đây.
