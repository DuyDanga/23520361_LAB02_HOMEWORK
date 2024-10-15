

-- Liệt kê tất cả các chuyên gia và sắp xếp theo họ tên.
SELECT * FROM CHUYENGIA 
ORDER BY CHUYENGIA.HoTen;

-- Hiển thị tên và số điện thoại của các chuyên gia có chuyên ngành 'Phát triển phần mềm'.
SELECT CHUYENGIA.HoTen, CHUYENGIA.SoDienThoai
FROM CHUYENGIA
WHERE CHUYENGIA.ChuyenNganh = N'Phát triển phần mềm';

-- Liệt kê tất cả các công ty có trên 100 nhân viên.
SELECT * FROM CongTy
WHERE CongTy.SoNhanVien > 100;

-- Hiển thị tên và ngày bắt đầu của các dự án bắt đầu trong năm 2023.
SELECT DuAn.TenDuAn, DuAn.NgayBatDau
FROM DuAn
WHERE YEAR(DuAn.NgayBatDau) = 2023;

-- Liệt kê tất cả các kỹ năng và sắp xếp theo tên kỹ năng.
SELECT * FROM KyNang
ORDER BY KyNang.TenKyNang;

-- Hiển thị tên và email của các chuyên gia có tuổi dưới 35 (tính đến năm 2024).
SELECT CHUYENGIA.HoTen, CHUYENGIA.Email
FROM CHUYENGIA
WHERE 2024 - YEAR(CHUYENGIA.NgaySinh) < 35;

-- Hiển thị tên và chuyên ngành của các chuyên gia nữ.
SELECT CHUYENGIA.HoTen, CHUYENGIA.ChuyenNganh
FROM CHUYENGIA
WHERE CHUYENGIA.GioiTinh = N'Nữ';

-- Liệt kê tên các kỹ năng thuộc loại 'Công nghệ'.
SELECT KyNang.TenKyNang
FROM KyNang
WHERE KyNang.LoaiKyNang = N'Công nghệ';

-- Hiển thị tên và địa chỉ của các công ty trong lĩnh vực 'Phân tích dữ liệu'.
SELECT CongTy.TenCongTy, CongTy.DiaChi
FROM CongTy
WHERE CongTy.LinhVuc = N'Phân tích dữ liệu';

-- Liệt kê tên các dự án có trạng thái 'Hoàn thành'.
SELECT DuAn.TenDuAn
FROM DuAn
WHERE DuAn.TrangThai = N'Hoàn thành';

-- Hiển thị tên và số năm kinh nghiệm của các chuyên gia, sắp xếp theo số năm kinh nghiệm giảm dần.
SELECT CHUYENGIA.HoTen, CHUYENGIA.NamKinhNghiem
FROM ChuyenGia
ORDER BY CHUYENGIA.NamKinhNghiem DESC;

-- Liệt kê tên các công ty và số lượng nhân viên, chỉ hiển thị các công ty có từ 100 đến 200 nhân viên.
SELECT CongTy.TenCongTy,CongTy.SoNhanVien
FROM CongTy
WHERE CongTy.SoNhanVien BETWEEN 100 AND 200;

-- Hiển thị tên dự án và ngày kết thúc của các dự án kết thúc trong năm 2023.
SELECT DuAn.TenDuAn, DuAn.NgayKetThuc
FROM DuAn
WHERE YEAR(DuAn.NgayKetThuc) = 2023;

-- Liệt kê tên và email của các chuyên gia có tên bắt đầu bằng chữ 'N'.
SELECT CHUYENGIA.HoTen, CHUYENGIA.Email
FROM CHUYENGIA
WHERE CHUYENGIA.HoTen LIKE 'N%';

-- Hiển thị tên kỹ năng và loại kỹ năng, không bao gồm các kỹ năng thuộc loại 'Ngôn ngữ lập trình'.
SELECT KyNang.TenKyNang, KyNang.LoaiKyNang
FROM KyNang
EXCEPT
SELECT KyNang.TenKyNang, KyNang.LoaiKyNang
FROM KyNang
WHERE KyNang.LoaiKyNang = N'Ngôn ngữ lập trình'

-- Hiển thị tên công ty và lĩnh vực hoạt động, sắp xếp theo lĩnh vực.
SELECT CongTy.TenCongTy, CongTy.LinhVuc
FROM CongTy
ORDER BY CongTy.LinhVuc;

-- Hiển thị tên và chuyên ngành của các chuyên gia nam có trên 5 năm kinh nghiệm.
SELECT CHUYENGIA.HoTen, CHUYENGIA.ChuyenNganh
FROM CHUYENGIA
WHERE CHUYENGIA.NamKinhNghiem > 5;

-- Liệt kê tất cả các chuyên gia trong cơ sở dữ liệu.
SELECT * FROM ChuyenGia;

-- Hiển thị tên và email của tất cả các chuyên gia nữ.
SELECT CHUYENGIA.HoTen, CHUYENGIA.Email
FROM CHUYENGIA
WHERE CHUYENGIA.GioiTinh = N'Nữ';

--  Liệt kê tất cả các công ty và số nhân viên của họ, sắp xếp theo số nhân viên giảm dần.
SELECT CongTy.TenCongTy, CongTy.SoNhanVien
FROM CongTy
ORDER BY CongTy.SoNhanVien DESC;

-- Hiển thị tất cả các dự án đang trong trạng thái "Đang thực hiện".
SELECT *
FROM DuAn
WHERE DuAn.TrangThai = N'Đang thực hiện';

-- Liệt kê tất cả các kỹ năng thuộc loại "Ngôn ngữ lập trình".
SELECT *
FROM KyNang
WHERE KyNang.LoaiKyNang = N'Ngôn ngữ lập trình';

-- Hiển thị tên và chuyên ngành của các chuyên gia có trên 8 năm kinh nghiệm.
SELECT CHUYENGIA.HoTen, CHUYENGIA.ChuyenNganh
FROM CHUYENGIA
WHERE CHUYENGIA.NamKinhNghiem > 8;

-- Liệt kê tất cả các dự án của công ty có MaCongTy là 1.
SELECT *
FROM DuAn
WHERE DuAn.MaCongTy = 1;

-- Đếm số lượng chuyên gia trong mỗi chuyên ngành.
SELECT CHUYENGIA.ChuyenNganh, COUNT(*) AS SOLUONGCHUYENGIA
FROM CHUYENGIA
GROUP BY CHUYENGIA.ChuyenNganh;

-- Tìm chuyên gia có số năm kinh nghiệm cao nhất.
SELECT TOP 1 HOTEN, NAMKINHNGHIEM
FROM CHUYENGIA
ORDER BY NamKinhNghiem DESC;

-- Liệt kê tổng số nhân viên cho mỗi công ty mà có số nhân viên lớn hơn 100. Sắp xếp kết quả theo số nhân viên tăng dần.
SELECT CongTy.TenCongTy, CongTy.SoNhanVien
FROM CongTy
WHERE CongTy.SoNhanVien >100
ORDER BY CongTy.SoNhanVien ASC;

-- Xác định số lượng dự án mà mỗi công ty tham gia có trạng thái 'Đang thực hiện'. 
-- Chỉ bao gồm các công ty có hơn một dự án đang thực hiện. Sắp xếp kết quả theo số lượng dự án giảm dần.
SELECT CongTy.TenCongTy, COUNT(*) AS SoLuongDuAn
FROM CongTy
JOIN DuAn On CongTy.MaCongTy = DuAn.MaCongTy
WHERE DuAn.TrangThai = N'Đang thực hiện'
GROUP BY CongTy.TenCongTy
HAVING COUNT(*) >= 1
ORDER BY SoLuongDuAn DESC;

-- Tìm kiếm các kỹ năng mà chuyên gia có cấp độ từ 4 trở lên và tính tổng số chuyên gia cho mỗi kỹ năng đó. 
-- Chỉ bao gồm những kỹ năng có tổng số chuyên gia lớn hơn 2. Sắp xếp kết quả theo tên kỹ năng tăng dần.
SELECT KyNang.TenKyNang, COUNT(*) AS TONGSOCHUYENGIA
FROM CHUYENGIA
JOIN ChuyenGia_KyNang ON CHUYENGIA.MaChuyenGia = ChuyenGia_KyNang.MaChuyenGia
JOIN KyNang ON ChuyenGia_KyNang.MaKyNang = KyNang.MaKyNang
GROUP BY KyNang.TenKyNang
HAVING COUNT(*) > 2
ORDER BY KyNang.TenKyNang ASC;

-- Liệt kê tên các công ty có lĩnh vực 'Điện toán đám mây' và tính tổng số nhân viên của họ. 
-- Sắp xếp kết quả theo tổng số nhân viên tăng dần.
SELECT CongTy.TenCongTy, CongTy.LinhVuc, SUM(CongTy.SoNhanVien) AS TongSoNhanVien
FROM CongTy
WHERE CongTy.LinhVuc = N'Điện toán đám mây'
GROUP BY CongTy.TenCongTy, CongTy.LinhVuc
ORDER BY TongSoNhanVien ASC;
-- Liệt kê tên các công ty có số nhân viên từ 50 đến 150 và tính trung bình số nhân viên của họ. 
-- Sắp xếp kết quả theo tên công ty tăng dần.
SELECT CongTy.TenCongTy, AVG(CongTy.SoNhanVien) AS TBSoNhanVien
FROM CongTy
WHERE CongTy.SoNhanVien BETWEEN 50 AND 150
GROUP BY CongTy.TenCongTy
ORDER BY CongTy.TenCongTy ASC;

-- Xác định số lượng kỹ năng cho mỗi chuyên gia có cấp độ tối đa là 5 
-- và chỉ bao gồm những chuyên gia có ít nhất một kỹ năng đạt cấp độ tối đa này. Sắp xếp kết quả theo tên chuyên gia tăng dần.
SELECT ChuyenGia.HoTen, COUNT(*) SoLuongKyNang
FROM ChuyenGia_KyNang
JOIN ChuyenGia ON ChuyenGia.MaChuyenGia = ChuyenGia_KyNang.MaChuyenGia
WHERE ChuyenGia_KyNang.CapDo = 5
GROUP BY ChuyenGia.HoTen
HAVING COUNT(*) >= 1
ORDER BY HoTen ASC;
-- Liệt kê tên các kỹ năng mà chuyên gia có cấp độ từ 4 trở lên và tính tổng số chuyên gia cho mỗi kỹ năng đó. 
-- Chỉ bao gồm những kỹ năng có tổng số chuyên gia lớn hơn 2. Sắp xếp kết quả theo tên kỹ năng tăng dần.
SELECT KyNang.TenKyNang, COUNT(*) AS TongSoChuyenGia
FROM KyNang
JOIN ChuyenGia_KyNang ON KyNang.MaKyNang = ChuyenGia_KyNang.MaKyNang
WHERE ChuyenGia_KyNang.CapDo > 4
GROUP BY KyNang.TenKyNang
HAVING COUNT(*) > 2
ORDER BY KyNang.TenKyNang DESC;

-- Tìm kiếm tên của các chuyên gia trong lĩnh vực 'Phát triển phần mềm' và tính trung bình cấp độ kỹ năng của họ. 
-- Chỉ bao gồm những chuyên gia có cấp độ trung bình lớn hơn 3. Sắp xếp kết quả theo cấp độ trung bình giảm dần.
SELECT CHUYENGIA.HoTen, AVG(ChuyenGia_KyNang.CapDo) AS TBKyNang
FROM CHUYENGIA
JOIN ChuyenGia_KyNang ON CHUYENGIA.MaChuyenGia = ChuyenGia_KyNang.MaChuyenGia	
WHERE CHUYENGIA.ChuyenNganh = N'Phát triển phần mềm'
GROUP BY CHUYENGIA.HoTen
HAVING AVG(ChuyenGia_KyNang.CapDo) > 3
ORDER BY TBKyNang DESC;


