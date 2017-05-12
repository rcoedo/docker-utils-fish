function __docker_run_in_dir
  if test (count $argv) = 2
    docker run --rm -t -i -v (bash -c "echo \$(cd $argv[2] && pwd)"):/volume -w /volume $argv[1] /bin/bash
  else
    echo "Usage: __docker_run_in_dir <image> <directory>"
  end
end
