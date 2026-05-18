#!/bin/bash

# --- CONFIGURATION ---
# Tên file bundle được chuyển từ máy B.
BUNDLE_FILE="changes.bundle"
# Tên branch tạm thời để chứa các thay đổi từ bundle.
TEMP_BRANCH="develop-from-b"
# ---------------------

# Dừng script ngay lập tức nếu có bất kỳ lệnh nào thất bại
set -e

echo "### BẮT ĐẦU QUÁ TRÌNH ÁP DỤNG THAY ĐỔI TRÊN MÁY A ###"

# --- BƯỚC 1: Kiểm tra sự tồn tại của file bundle ---
if [ ! -f "$BUNDLE_FILE" ]; then
    echo "Lỗi: Không tìm thấy file '$BUNDLE_FILE'. Hãy đảm bảo bạn đã chuyển nó từ máy B vào cùng thư mục."
    exit 1
fi

echo "--> Đang xác thực file bundle..."
# Lệnh này kiểm tra xem file bundle có hợp lệ và chứa đủ thông tin cần thiết không.
git bundle verify "$BUNDLE_FILE"

# --- BƯỚC 2: Lấy (fetch) các commit từ file bundle vào một branch tạm thời ---
# Để an toàn, chúng ta không áp dụng trực tiếp vào 'master'.
# Thay vào đó, chúng ta tạo một branch tạm thời để kiểm tra trước.
echo "--> Đang lấy dữ liệu từ '$BUNDLE_FILE' vào branch tạm thời '$TEMP_BRANCH'..."

# Lệnh fetch hoạt động với file bundle tương tự như với một remote repository.
# Nó sẽ đọc branch 'develop' từ bundle và tạo một branch cục bộ tên là 'develop-from-b'.
# Dùng `|| true` để tránh lỗi nếu branch tạm đã tồn tại.
git fetch "$BUNDLE_FILE" develop:"$TEMP_BRANCH"

# --- BƯỚC 3: Hợp nhất (merge) branch tạm thời vào branch 'master' ---
echo "--> Đang chuyển sang branch 'master'..."
git checkout master

echo "--> Đang cập nhật branch 'master' với phiên bản mới nhất từ remote..."
# Luôn pull code mới nhất về trước khi merge để tránh conflict không đáng có.
git pull origin master

echo "--> Đang hợp nhất (merge) các thay đổi từ '$TEMP_BRANCH' vào 'master'..."
# Merge các commit từ branch tạm vào master.
# --no-ff để luôn tạo một merge commit, giúp lịch sử rõ ràng hơn.
git merge --no-ff "$TEMP_BRANCH" -m "Merge: Tích hợp các thay đổi từ máy B"

# --- BƯỚC 4: Dọn dẹp ---
echo "--> Đang xóa branch tạm thời '$TEMP_BRANCH'..."
git branch -d "$TEMP_BRANCH"

echo ""
echo "### HOÀN TẤT! ###"
echo "Tất cả các thay đổi từ máy B đã được hợp nhất vào branch 'master' của bạn."
echo "Bây giờ, hãy kiểm tra lại bằng các lệnh sau:"
echo "  -> git log --oneline --graph --all"
echo "  -> git status"
echo "Nếu mọi thứ đã ổn, bạn có thể đẩy (push) code lên remote:"
echo "  -> git push origin master"
