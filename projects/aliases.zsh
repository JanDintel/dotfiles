# Aliases for projects
project_aliases=($(find -P "$PROJECTS" -maxdepth 4 -name '*.alias'))

for project_alias in $project_aliases; do
  project_dir=$(dirname $project_alias)
  project_name=$(basename $project_dir)

  alias $project_name="cd $project_dir"
done
