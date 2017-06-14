
docker run -p 4000:80  -d \
-v ~/.ssh:/root/.ssh \
-v ~/workspace/github/hexo/source:/hexo/source \
-v ~/workspace/github/hexo/themes:/hexo/themes \
-v ~/workspace/github/hexo/_config.yml:/hexo/_config.yml \
chao/hexo zhangchao super.chao.zhang@gmail.com s
