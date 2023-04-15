cd `dirname "$0"`
echo -e "\n==>当前路径："
pwd

echo -e "\n==>1.当前git文件状态："
git status

echo -e "\n==>2.拉取所有文件到待提交："
git pull
echo ""
git status
git log -n 10 --oneline
echo ""

read -p "==>拉取完毕，按回车键退出！" wait
