#!/bin/bash
git_install(){

}

git_command(){
	#Git config
	git config --list
	git --version
	git config --global user.name "hoanghd"
	git config --global user.email "hoanghd164@gmail.com"

	#Git commit
	git init
	git add . #
	git commit -m"khoi tao"
	git log --oneline or git log --oneline --graph
	git status
	git restore <file_name> #phục hồi file từ commit cuối
	git diff <file_name> #so sánh file ở vùng chưa được theo dõi với commit cuối
	git diff --staged #so sánh staged với commit cuối
	git diff <commit1> <commit2> #so sánh sự khác nhau giữa 2 commit
	git checkout <id_commit> <file_name> #Phục hồi 1 file
	git restore --staged <file_name> #Đưa 1 file ra khỏi vùng staged
	git checkout -- <file_name> #phục hồi file từ commit cuối

	#Bỏ qua không theo dõi
	#Tạo file .gitignore và thêm tên file hoặc folder không theo dõi (example: *.tmp, file_name, folder_name, folder_name/folder_name)

	git commit --amend -m"C4" #Chỉ định tạo đưa 1 file vào commit cuối
	git diff <commit1> <commit2>  --stat

	#Xóa commit
	git reset --soft #Không xóa hẳn mà đưa vào vùng staged
	git reset --soft #Xoá hẳn không thể phục hồi
	git reset --soft HEAD~1 #Xóa commit cuối cùng
	git reset --hard HEAD~1 #Xóa commit cuối cùng
	git reset -- <file_name> #Xóa file ở vùng staged

	#branch
	git branch #show branch
	git branch -a #show branch
	git branch <branch_name> #create branch
	gi branch -D <branch_name> #xóa nhánh
	git checkout <branch_name> or git switch <branch_name> #chuyển nhánh
	git checkout <commit> #chuyển commit
	git merge <branch_name> #gộp nhanh, lưu ý chuyển về nhánh master trước khi merge, xung đột sẽ được sửa đổi trước khi gộp nhánh
	git rebase <branch_name> #gộp nhanh, lưu ý chuyển về nhánh master trước khi merge, xung đột sẽ được sửa đổi tại commit có xung đột, toàn bộ commit của nhánh remote sẽ là commit cơ sở của nhánh local
	git rebase continue #tiếp tục gộp nhánh sau khi đã xử lý xung đột
	git mergetool -> vimdiff #tool xử lý xung đột commit, (diffg LO: giữ lại master, diffg RE: giữ lại nhánh remote, diffg BA giữ lại bản gốc lúc chưa bị 2 nhánh sửa đổi, bấm wq! để lưu và thoát)

	#Git remote
	git remote add <remote_server_name> root@172.16.2.100:/home/myproject
	git remote -v #show git remote
	git remote rm <remote_server_name> #remove git remote
	git push <remote_server_name> <branch_name> #push dư liệu lên 1 nhánh cụ thể
	git push <remote_server_name> --all
	git push -u <remote_server_name> #tham số -u để ghi nhớ lịch sử, lần sau chỉ cần gõ git push hệ thống sẽ push lên theo ghi nhớ cài đặt ở thời điểm này
	git push --delete <remote_server_name> <branch_name #xóa 1 nhánh ở trên remote
	git clone x.x.x.x:/home/myproject
	git fetch #giúp chúng ta tra cứu được thông tin ở trên git remote
	git pull <remote_server_name> <branch_name>#cập nhật dữ liệu mới từ remote về local
	git pull <remote_server_name> --all #cập nhật dữ liệu mới từ remote về local

	#Github
	git remote add github git@github.com:hoanghd164/demo.git:/root/mycode/
	folder_gitkey='/root/gitkey1' && mkdir -p $folder_gitkey && cd $folder_gitkey && ssh-keygen -t rsa -f id_rsa
}
