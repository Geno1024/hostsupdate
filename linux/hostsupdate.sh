until  
        echo "1.更新hosts"  
        echo "2.恢复备份1"  
        echo "3.恢复备份2"  
        echo "4.退出"    
        read input  
        test $input = 6  
        do  
            case $input in  
            1)  echo 正在更新hosts
		cd /etc
		sudo wget -O hosts.new http://www.runningcheese.com/hosts
		echo hosts下载成功
		sudo rm hosts.old2
		echo 备份2已删除
		sudo mv hosts.old1 hosts.old2
		echo 备份1已变为备份2
		sudo mv hosts hosts.old1
		echo 备份现有hosts成功
		sudo mv hosts.new hosts
		echo 更新hosts成功;;  
		  
            2)  echo 开始恢复备份1
		cd /etc
		sudo mv hosts.old1 hosts.ta
		sudo mv hosts hosts.old1
		sudo mv hosts.ta hosts
		echo 备份1已变为恢复
		echo 现有hosts已备份为备份1;;  
                  
            3)  echo 开始恢复备份2
		cd /etc
		sudo mv hosts.old2 hosts.ta
		sudo mv hosts hosts.old2
		sudo mv hosts.ta hosts
		echo 备份2已变为恢复
		echo 现有hosts已备份为备份2;;  
                  
            4)  exit
            esac  
done  
