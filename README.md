Small reproduction of a bug on erlang and application of a fix provided in https://elixirforum.com/t/weird-limit-in-number-of-function-clauses-when-running-on-aarch64/59513/2?u=opsidao

The patch fixing the bug is applied on line 31 of the Dockerfile, the `sed -i 's/a.cmp(TMP1, imm(args.size()));/cmp(TMP1, args.size());/' erts/emulator/beam/jit/arm/instr_select.cpp` command.

Just `docker build . -t erlang_bug_test && docker run erlang_bug_test elixir test.exs` to execute the small test file with the patch applied to see the bug fixed.

Commenting out the mentioned line in the Dockerfile and re-executing the docker build & run will show the original issue happening.
