#!/bin/bash

# --- CONFIGURATION ---
# Tên file bundle sẽ được tạo ra. Đây là file chứa tất cả các commit mới.
BUNDLE_FILE="changes.bundle"
# ---------------------

# Dừng script ngay lập tức nếu có bất kỳ lệnh nào thất bại
set -e

echo "### BẮT ĐẦU QUÁ TRÌNH ĐÓNG GÓI TRÊN MÁY B ###"

# --- BƯỚC 1: Commit tất cả các thay đổi hiện tại vào branch 'develop' ---
# Để đảm bảo tất cả các thay đổi (modified và untracked) đều được đưa vào gói,
# chúng ta cần commit chúng. Đây là cách làm an toàn và toàn diện nhất.

echo "--> Đang thêm tất cả các thay đổi (modified và untracked) vào staging area..."
# Lệnh 'git add .' sẽ thêm tất cả các file đã thay đổi và các file mới (untracked)
git add .

# Kiểm tra xem có gì để commit không. Nếu không có gì thay đổi, bỏ qua bước commit.
if ! git diff-index --quiet HEAD --; then
    echo "--> Tạo một commit tạm thời chứa tất cả các thay đổi..."
    # Tạo một commit với một message rõ ràng.
    # Commit này sẽ được chuyển sang máy A.
    git commit -m "WIP: Chuẩn bị chuyển code từ máy B sang máy A"
else
    echo "--> Không có thay đổi nào để commit. Bỏ qua."
fi

# --- BƯỚC 2: Tạo file bundle ---
# Git bundle là một file duy nhất, hoạt động như một kho lưu trữ git thu nhỏ.
# Nó sẽ chứa tất cả các commit có trên branch 'develop' mà không có trên branch 'main'.

echo "--> Đang tạo file bundle '$BUNDLE_FILE' từ các commit trên branch 'develop'..."
# Lệnh này sẽ tạo một file bundle chứa các đối tượng git cần thiết để tái tạo lại
# lịch sử commit từ 'main' đến 'develop'.
git bundle create "$BUNDLE_FILE" main..develop

echo ""
echo "### HOÀN TẤT! ###"
echo "Quá trình đóng gói đã xong."
echo "Bây giờ, hãy chuyển file sau đây từ máy B sang máy A:"
echo "  -> $BUNDLE_FILE"
echo "Bạn có thể dùng USB, scp, hoặc bất kỳ phương thức truyền file nào khác."