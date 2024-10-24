return {
  'klen/nvim-test',
  config = function()
    require('nvim-test').setup {
      run = true,
      commands_create = true,
      filename_modifier = ':.',
      silent = false,
      term = 'terminal',
      termopts = {
        direction = 'vertical',
        stopinsert = 'auto',
        keep_one = true,
      },
    }

    require('nvim-test.runners.pytest'):setup {
      command = 'docker',
      args = { 'exec', 'test01', 'pytest' },
      file_pattern = '\\v(test_[^.]+|[^.]+_test|tests)\\.py$',
      find_files = { 'test_{name}.py', '{name}_test.py', 'tests.py' },
      filename_modifier = ':s?PythonTests/??',
    }
  end,
}
