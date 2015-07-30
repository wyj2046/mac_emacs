# mac_emacs
mac环境下的emacs配置

将目录名mac_emacs改为.emacs.d, 放在~目录下即可使用

# elpy安装的package
- exec-path-from-shell
- elpy
- color-theme-sanityinc-tomorrow
- auto-complete hideshowvis
- mark-multiple
- autopair
- paredit
- ace-jump-mode
- wrap-region
- undo-tree
- highlight-symbol
- expand-region
- smex
- window-number
- yasnippet
- tabbar

# mode
## python mode
依赖elpy, 需要用pip安装如下包

    pip install rope
    pip install jedi
    pip install flake8
    pip install importmagic

## go mode
依赖go的第三方库 用go get安装如下包

    gocode 提供代码补全
    go get -u github.com/nsf/gocode
    godef 代码跳转
    go get github.com/rogpeppe/godef
    goimports 自动整理imports
    go get golang.org/x/tools/cmd/goimports
    oracle 代码callgraph查询
    go get golang.org/x/tools/cmd/oracle

## c/c++ mode
主要参考这篇blog: http://tuhdo.github.io/c-ide.html

安装gtags

    brew install global

elpy安装的package

    company-c-headers
    ws-butler
    dtrt-indent
    clean-aindent-mode
    volatile-highlights
    sr-speedbar
    function-args
    helm-gtags
    helm-swoop
    helm