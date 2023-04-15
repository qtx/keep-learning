cd `dirname "$0"`
echo -e "\n==>当前路径："
pwd

echo -e "\n==>1.当前git文件状态："
git status

echo -e "\n==>2.添加所有文件到待提交："
git add . --all
git status
echo ""

read -p "==>3.准备提交代码，请输入备注: " remark
git commit -m "${remark}"

echo -e "\n==>4.开始push到远程库："
setproxy
git push
echo ""
git status
git log -n 10 --oneline
echo ""

read -p "==>推送完毕，按回车键退出！" wait