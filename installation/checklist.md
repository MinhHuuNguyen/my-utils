
# Danh sách cài đặt

## 1. Nhóm mạng xã hội

### 1.1. Zalo ![Zalo](https://img.shields.io/badge/Zalo-2CA5E0?logo=zalo&style=flat-square&logoColor=white)

### 1.2. Slack ![Slack](https://img.shields.io/badge/Slack-4A154B?logo=slack&style=flat-square&logoColor=white)

### 1.3. Facebook Messenger ![Messenger](https://img.shields.io/badge/Messenger-00B2FF?logo=messenger&style=flat-square&logoColor=white)

## 2. Nhóm technical

### 2.1. Chạy `install_app.sh`

### 2.2. Terminal

1. Preferences
2. Chọn profile Pro: Set `Default` ở phía dưới list profile
3. Chỉnh opacity: `100%` trong `Background/Color & Effects`
4. Cài thêm font: đã cài thông qua `install_by_cmd.sh`
5. Chỉnh cỡ chữ: `18` trong `Font/Change`
6. Chỉnh font: `Meslo LG M DZ Regular for Powerline` trong `Font/Change`

### 2.3. ohmyzsh

1. Đã cài thông qua `install_by_cmd.sh`
2. Chạy

``` bash
nano ~/.zshrc
ZSH_THEME="agnoster"
```

### 2.4. Byobu

### 2.5. Anaconda / Miniconda ![Anaconda](https://img.shields.io/badge/Anaconda-44A833?logo=anaconda&style=flat-square&logoColor=white)

Thêm đoạn phía dưới vào `~./zshrc` để hiển thị tên môi trường Conda

``` bash
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/minhnguyenhuu/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then   
    eval "$__conda_setup"
else
    if [ -f "/Users/minhnguyenhuu/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/minhnguyenhuu/miniconda3/bin/etc/profile.d/conda.sh"
    else
        export PATH="/Users/minhnguyenhuu/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
```

### 2.6. Virtual Environment ![VirtualEnv](https://img.shields.io/badge/VirtualEnv-2C2D72?logo=python&style=flat-square&logoColor=white)

``` bash
python -m venv my_env
```

### 2.7. VSCode ![VSCode](https://img.shields.io/badge/VSCode-007ACC?logo=visual-studio-code&style=flat-square&logoColor=white)


#### 2.7.1. Chạy `install_vscode_extension.sh`

#### 2.7.2. Add `code` to PATH

``` bash
nano ~/.zshrc
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
```

Reference [here](https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line)
    
## 3. Nhóm meeting remote

### 3.1. Zoom ![Zoom](https://img.shields.io/badge/Zoom-2D8CFF?logo=zoom&style=flat-square&logoColor=white)

### 3.2. Teams ![Teams](https://img.shields.io/badge/Teams-6264A7?logo=microsoft-teams&style=flat-square&logoColor=white)

### 3.3. Teamviewer ![Teamviewer](https://img.shields.io/badge/Teamviewer-0E8EE9?logo=teamviewer&style=flat-square&logoColor=white)

## 4. Nhóm utility

### 4.1. Rectangle

Tool sắp xếp cửa sổ, một số lựa chọn khác như BetterSnapTool (charged), Magnet (charged)

### 4.2. The Unarchiver

### 4.3. CleanmymacX

## 5. Nhóm media

### 5.1. Lightroom ![Lightroom](https://img.shields.io/badge/Lightroom-31A8FF?logo=adobe-lightroom&style=flat-square&logoColor=white)

### 5.2. Davinci Resolve

### 5.3. iMovie

## 6. Nhóm productivity

### 6.1. Trello ![Trello](https://img.shields.io/badge/Trello-0079BF?logo=trello&style=flat-square&logoColor=white)

### 6.2. Office365 ![Office365](https://img.shields.io/badge/Office365-D83B01?logo=microsoft-office&style=flat-square&logoColor=white)

### 6.3. LDOCE Plus: Longman dictionary of contemporary English Plus

### 6.4. OneDrive ![OneDrive](https://img.shields.io/badge/OneDrive-0078D4?logo=onedrive&style=flat-square&logoColor=white)

### 6.5. GoogleDrive ![GoogleDrive](https://img.shields.io/badge/GoogleDrive-4285F4?logo=googledrive&style=flat-square&logoColor=white)

### 6.6. Gõ tiếng Việt
