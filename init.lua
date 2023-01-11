local function setup(args)
  local xplr = xplr

  args = args or {}

  args.mode = args.mode or "default"
  args.key = args.key or "Z"

  xplr.config.modes.builtin[args.mode].key_bindings.on_key[args.key] = {
    help = "zoxide jump",
    messages = {
      {
        BashExec = [===[
          PTH="$(zoxide query -i)"
          if [ -d "$PTH" ]; then
            "$XPLR" -m "ChangeDirectory: %q" "${PTH:?}"
          fi
        ]===],
      },
      "PopMode",
    },
  }
end

return { setup = setup }
