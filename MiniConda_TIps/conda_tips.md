# condaコマンド
```bash
# 1. 仮想環境を作成(virtualenv的なもの)
conda create -n my_env

# 例：scikit-learnをJupyter Notebook上で行うというような一般的な機械学習の環境の構築
conda create -n my_env numpy scipy scikit-learn matplotlib jupyter

## 仮想環境の一覧を表示
conda info -e

# 2. 仮想環境を有効化
activate my_env # Windows
source activate my_env # Max/Linux

## 仮想環境に追加でインストール(バージョンを指定する場合conda install scipy=0.12.0など)
conda install scikit-learn

## condaで取得できないものについて、pipでインストール(仮想環境にpipを入れて対応)
conda install pip
pip install Flask

## インストールしたパッケージのアップデート(conda自身はconda update conda)
conda update numpy

# 3. condaで構築した環境を書き出し/読み込み
conda env export > environment.yml
conda env create -f environment.yml

# 4. テキストファイルからパッケージをインストール(requests.txt)
pip install -r requests.txt

requests.txtの中身例
jupyter==1.0.0
numpy==1.15.4
pandas==0.23.4
scipy==1.1.0
scikit-learn==0.20.0
matplotlib==3.0.1
tensorflow==1.12.0
-e git+https://github.com/ntasfi/PyGame-Learning-Environment.git#egg=ple
-e git+https://github.com/lusob/gym-ple.git#egg=gym-ple

# 5. 仮想環境無効化
deactivate # Windows
source deactivate # Max/Linux

# 6. 仮想環境の削除
conda remove --name my_env --all

# 7. 使っていないパッケージを削除※condaが一度ダウンロードしたことがあるパッケージをキャッシュとして保管するためである。今は使っていない古いパッケージであっても消していない限り残る
conda clean --all

# 7. conda本体のアップデート
conda update conda

# 8. パッケージ一式のアップデート
conda update --all

# 9. pythonのバージョンのアップデート
conda update python

```