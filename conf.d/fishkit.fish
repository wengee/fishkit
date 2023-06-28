set -q fisher_path; or set -l fisher_path $__fish_config_dir
if test -f $fisher_path/functions/__fishkit.init.fish
  source $fisher_path/functions/__fishkit.init.fish
  __fishkit.init
end
