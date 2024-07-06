vim.api.nvim_create_user_command('MakefileTemplate', function()
  local lines = {
    'CC = g++',
    'CCFLAGS = -std=c++2b -g -O3 -fsanitize=address -Wall -Wextra',
    '',
    'a.out: main.o',
    '\t$(CC) $(CCFLAGS) -o a.out main.o',
    '',
    'main.o: main.cc',
    '\t$(CC) $(CCFLAGS) -c main.cc',
    '',
    '# Clean target',
    'clean:',
    '\trm -rf a.out main.o',
  }
  vim.api.nvim_buf_set_lines(0, 0, -1, true, lines)
end, { desc = 'Insert Makefile Template' })
