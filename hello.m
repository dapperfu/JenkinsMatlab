try
  fprintf('World\n');
  assert(1==0)
  exit(0)
catch ME
  exit(1)
