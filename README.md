[![xplr-zoxide.gif](https://s6.gifyu.com/images/xplr-zoxide.gif)](https://gifyu.com/image/AclQ)

Requirements
------------

- [zoxide](https://github.com/ajeetdsouza/zoxide)


Installation
------------

### Install manually

- Add the following line in `~/.config/xplr/init.lua`

  ```lua
  package.path = os.getenv("HOME") .. '/.config/xplr/plugins/?/src/init.lua'
  ```

- Clone the plugin

  ```bash
  mkdir -p ~/.config/xplr/plugins

  git clone https://github.com/sayanarijit/zoxide.xplr ~/.config/xplr/plugins/zoxide
  ```

- Require the module in `~/.config/xplr/init.lua`

  ```lua
  require("zoxide").setup()
  
  -- Or
  
  require("zoxide").setup{
    mode = "default",
    key = "Z",
  }

  -- Type `Z` to spawn zoxide prompt.
  ```
