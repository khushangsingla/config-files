source /home/khushangsingla/Downloads/Setups_Used/pwndbg/pwndbg/gdbinit.py
set disassembly-flavor intel
set print asm-demangle on
# source /home/khushangsingla/Downloads/Setups_Used/pwndbg/splitmind/gdbinit.py
# Setting up pwndbg and tmux
# python
# import splitmind
# (splitmind.Mind()
#   .tell_splitter(show_titles=True)
#   .tell_splitter(set_title="Main")
#   .right(display="backtrace", size="25%")
#   .above(of="main", display="disasm", size="80%", banner="top")
#   .show("code", on="disasm", banner="none")
#   .right(cmd='tty; tail -f /dev/null', size="65%", clearing=False)
#   .tell_splitter(set_title='Input / Output')
#   .above(display="stack", size="75%")
#   .above(display="legend", size="25")
#   .show("regs", on="legend")
#   .below(of="backtrace", cmd="ipython", size="30%")
# ).build(nobanner=True)
# end
set debuginfod enabled on
python
import atexit
from pwndbg.commands.context import contextoutput, output, clear_screen

import os
os.popen('tmux resize-pane -y 30')
col3 = os.popen('tmux split-window -h -P -F "#{pane_id}:#{pane_tty}" -d "cat -"').read().strip().split(":")
col2 = os.popen('tmux split-window -h -P -F "#{pane_id}:#{pane_tty}" -d "cat -"').read().strip().split(":")
f_in_out = os.popen('tmux split-window -P -F "#{pane_id}:#{pane_tty}" -d "cat -"').read().strip().split(":")
col4 = os.popen(F'tmux split-window -h -t {col3[0]} -P -F '+'"#{pane_id}:#{pane_tty}" -d "cat -"').read().strip().split(":")
col4_bottom_half = os.popen(F'tmux split-window -t {col4[0]} -P -F '+'"#{pane_id}:#{pane_tty}" -d "cat -"').read().strip().split(":")
f_cmd_out = os.popen(F'tmux split-window -t {col4[0]} -P -F '+'"#{pane_id}:#{pane_tty}" -d "cat -"').read().strip().split(":")
f_bt = col4
os.popen(F"tmux kill-pane -t {col4_bottom_half[0]}")

os.popen(F'tmux kill-pane -t {col3[0]}')
f_disasm = os.popen(F'tmux split-window -t {col2[0]} -P -F '+'"#{pane_id}:#{pane_tty}" -d "cat -"').read().strip().split(":")
f_stack = os.popen(F'tmux split-window -h -t {col2[0]} -P -F '+'"#{pane_id}:#{pane_tty}" -d "cat -"').read().strip().split(":")
os.popen(F'tmux kill-pane -t {col2[0]}')
f_reg = os.popen(F'tmux split-window -t {f_cmd_out[0]} -P -F '+'"#{pane_id}:#{pane_tty}" -d "cat -"').read().strip().split(":")
os.popen('tmux set -w pane-border-status top')
os.popen(f'tmux kill-pane -t {f_bt[0]}')
os.popen(f'tmux kill-pane -t {f_cmd_out[0]}')
f_bt = f_in_out
panes = dict(backtrace=f_bt, stack=f_stack, regs=f_reg, disasm=f_disasm)
os.popen('tmux set -p pane-border-format [GDB]')
os.popen(F'tmux set -t {f_disasm[0]} -p pane-border-format [Disassembly]')
os.popen(F'tmux set -t {f_bt[0]} -p pane-border-format [Backtrace]')
os.popen(F'tmux set -t {f_stack[0]} -p pane-border-format [Stack]')
os.popen(F'tmux set -t {f_reg[0]} -p pane-border-format [Registers]')

all_panes = [f_disasm,f_bt,f_stack,f_reg]

for sec, p in panes.items():
  contextoutput(sec, p[1], True)
contextoutput("legend", f_disasm[1], True)
exit_cmds = [F"tmux kill-pane -t {p[0]}" for p in all_panes]
exit_cmds.append('tmux set -w pane-border-status off')
atexit.register(lambda: [os.popen(cmd) for cmd in exit_cmds])
# atexit.register(os.popen('tmux set -w pane-border-status off'))
end
