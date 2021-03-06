FROM ubuntu:latest
RUN apt update && apt install -y \
	sudo \
	wget \
	vim
# ワークスペースをインストールフォルダに変更
WORKDIR /opt
RUN wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh && \
	# /opt/anaconda3にインストール
	sh Anaconda3-2020.02-Linux-x86_64.sh -b -p /opt/anaconda3 && \
	# 使用したファイルの削除
	rm -f Anaconda3-2020.02-Linux-x86_64.sh
# パスを通す
ENV PATH /opt/anaconda3/bin:$PATH
# pipをインストール
RUN pip install --upgrade pip && \
	pip install torch==1.5.0+cpu torchvision==0.6.0+cpu -f https://download.pytorch.org/whl/torch_stable.html

# ワークスペースを元に戻す
WORKDIR /
# runした時にjupyter labをlocalhostで起動し、root、パスなし
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]