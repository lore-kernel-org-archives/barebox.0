Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAgk-0008T6-Qq
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:31:09 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 4B290104E56B
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:42:09 +0100 (CET)
Date: Wed, 6 Mar 2013 10:26:43 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130306092643.GF4401@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC PATCH 00/20] introduce application support
To: barebox@lists.infradead.org

HI,

	this patch serie introduce the application support to barebox

	This will allow to run application at run time by calling barebox
	syscalls and as this will be a stable ABI the application will able
	the run against any barebox that support it

	As the application are not linked to barebox the GPLv2 licence does
	not apply.

	This patch serie provide a small libc (partialy implemented) which is
	under GPLv2 + exception

As a special exception, if other files instantiate templates or use macros
or inline functions from this file, or you compile this file and link it
with other works to produce a work based on this file, this file does not
by itself cause the resulting work to be covered by the GNU General Public
License. However the source code for this file must still be made available
in accordance with section (3) of the GNU General Public License.

This exception does not invalidate any other reasons why a work based on
this file might be covered by the GNU General Public License.

	This also provide the curses support proted against the libary with some examples

	One of the idea will be to create a curses interface bios like for barebox

The following changes since commit 94e71b843f6456abacc2fe76a5c375a461fabdf7:

  libubi: Use global mtd_all_ff function (2013-03-04 10:54:46 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/application

for you to fetch changes up to aa6566a71ec01c48ce12325e19d1027d7d11316f:

  highbank: enable application support (2013-03-04 20:02:32 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (20):
      Makefile: x_flags prepare for apps support
      tlsf_malloc: drop duplicate include
      kbuild: add application (app) target
      Introduce application (app) support
      app: Introduce libc support
      app: add some utils
      app: Introduce example application
      filetype: add barebox arm application
      arm: add application support
      app: printf: use HelenOS verison with wide char support
      app: printf: add version from contiki
      app: add tinycurses support
      app: curses: add pdcurses
      app: add test curses
      app: pdcurses: add libmenu
      app: pdcurses: add libform
      app: curses: add menu example
      app: curses: add panel example
      app: curses: add form example
      highbank: enable application support

 Makefile                                       |   53 ++-
 apps/Kconfig                                   |   60 +++
 apps/Makefile                                  |   32 ++
 apps/example/Makefile                          |   14 +
 apps/example/example.h                         |    7 +
 apps/example/list.c                            |   98 +++++
 apps/example/ls.c                              |  127 ++++++
 apps/example/main.c                            |  231 +++++++++++
 apps/example/setjmp.c                          |   24 ++
 apps/form_curses/Makefile                      |   11 +
 apps/form_curses/main.c                        |  113 ++++++
 apps/include/appinfo.h                         |   60 +++
 apps/include/assert.h                          |   32 ++
 apps/include/common.h                          |   28 ++
 apps/include/ctype.h                           |  100 +++++
 apps/include/dirent.h                          |   24 ++
 apps/include/errno.h                           |   24 ++
 apps/include/fcntl.h                           |   25 ++
 apps/include/getopt.h                          |   76 ++++
 apps/include/libc_config.h                     |  139 +++++++
 apps/include/limits.h                          |   38 ++
 apps/include/malloc.h                          |   30 ++
 apps/include/module.h                          |    3 +
 apps/include/sections.h                        |   29 ++
 apps/include/setjmp.h                          |   25 ++
 apps/include/stddef.h                          |    1 +
 apps/include/stdint.h                          |   23 ++
 apps/include/stdio.h                           |   69 ++++
 apps/include/stdlib.h                          |   32 ++
 apps/include/string.h                          |   53 +++
 apps/include/sys/ioctl.h                       |   12 +
 apps/include/sys/stat.h                        |   14 +
 apps/include/sys/syscall.h                     |   14 +
 apps/include/sys/types.h                       |   15 +
 apps/include/time.h                            |   27 ++
 apps/include/unistd.h                          |   46 +++
 apps/include/utils/ansi.h                      |   37 ++
 apps/include/utils/getchar.h                   |   22 ++
 apps/include/utils/list.h                      |  114 ++++++
 apps/include/utils/termcap.h                   |   23 ++
 apps/include/wchar.h                           |   33 ++
 apps/lib/Kconfig                               |    1 +
 apps/lib/Makefile                              |    1 +
 apps/lib/Makefile.include                      |    1 +
 apps/lib/curses/Kconfig                        |   29 ++
 apps/lib/curses/Makefile                       |    2 +
 apps/lib/curses/Makefile.include               |    4 +
 apps/lib/curses/pdcurses/Makefile              |   25 ++
 apps/lib/curses/pdcurses/Makefile.include      |    3 +
 apps/lib/curses/pdcurses/backend/Makefile      |    6 +
 apps/lib/curses/pdcurses/backend/barebox.h     |   21 +
 apps/lib/curses/pdcurses/backend/config.h      |  136 +++++++
 apps/lib/curses/pdcurses/backend/pdcdisp.c     |  107 ++++++
 apps/lib/curses/pdcurses/backend/pdcgetsc.c    |   47 +++
 apps/lib/curses/pdcurses/backend/pdckbd.c      |  161 ++++++++
 apps/lib/curses/pdcurses/backend/pdcscrn.c     |  162 ++++++++
 apps/lib/curses/pdcurses/backend/pdcsetsc.c    |   35 ++
 apps/lib/curses/pdcurses/backend/pdcutil.c     |   26 ++
 apps/lib/curses/pdcurses/form/Makefile         |   42 ++
 apps/lib/curses/pdcurses/form/READ.ME          |   42 ++
 apps/lib/curses/pdcurses/form/f_trace.c        |   70 ++++
 apps/lib/curses/pdcurses/form/fld_arg.c        |   98 +++++
 apps/lib/curses/pdcurses/form/fld_attr.c       |  119 ++++++
 apps/lib/curses/pdcurses/form/fld_current.c    |  137 +++++++
 apps/lib/curses/pdcurses/form/fld_def.c        |  399 +++++++++++++++++++
 apps/lib/curses/pdcurses/form/fld_dup.c        |  101 +++++
 apps/lib/curses/pdcurses/form/fld_ftchoice.c   |   70 ++++
 apps/lib/curses/pdcurses/form/fld_ftlink.c     |   87 +++++
 apps/lib/curses/pdcurses/form/fld_info.c       |  113 ++++++
 apps/lib/curses/pdcurses/form/fld_just.c       |   86 +++++
 apps/lib/curses/pdcurses/form/fld_link.c       |   96 +++++
 apps/lib/curses/pdcurses/form/fld_max.c        |   77 ++++
 apps/lib/curses/pdcurses/form/fld_move.c       |   64 ++++
 apps/lib/curses/pdcurses/form/fld_newftyp.c    |  143 +++++++
 apps/lib/curses/pdcurses/form/fld_opts.c       |  138 +++++++
 apps/lib/curses/pdcurses/form/fld_pad.c        |   85 ++++
 apps/lib/curses/pdcurses/form/fld_page.c       |   82 ++++
 apps/lib/curses/pdcurses/form/fld_stat.c       |   79 ++++
 apps/lib/curses/pdcurses/form/fld_type.c       |   97 +++++
 apps/lib/curses/pdcurses/form/fld_user.c       |   72 ++++
 apps/lib/curses/pdcurses/form/form.h           |  423 ++++++++++++++++++++
 apps/lib/curses/pdcurses/form/form.priv.h      |  299 +++++++++++++++
 apps/lib/curses/pdcurses/form/frm_cursor.c     |   70 ++++
 apps/lib/curses/pdcurses/form/frm_data.c       |  193 ++++++++++
 apps/lib/curses/pdcurses/form/frm_def.c        |  448 ++++++++++++++++++++++
 apps/lib/curses/pdcurses/form/frm_driver.c     | 4646 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 apps/lib/curses/pdcurses/form/frm_hook.c       |  142 +++++++
 apps/lib/curses/pdcurses/form/frm_opts.c       |  127 ++++++
 apps/lib/curses/pdcurses/form/frm_page.c       |  106 +++++
 apps/lib/curses/pdcurses/form/frm_post.c       |  124 ++++++
 apps/lib/curses/pdcurses/form/frm_req_name.c   |  170 ++++++++
 apps/lib/curses/pdcurses/form/frm_scale.c      |   69 ++++
 apps/lib/curses/pdcurses/form/frm_sub.c        |   86 +++++
 apps/lib/curses/pdcurses/form/frm_user.c       |   72 ++++
 apps/lib/curses/pdcurses/form/frm_win.c        |   92 +++++
 apps/lib/curses/pdcurses/form/fty_alnum.c      |  202 ++++++++++
 apps/lib/curses/pdcurses/form/fty_alpha.c      |  202 ++++++++++
 apps/lib/curses/pdcurses/form/fty_enum.c       |  442 +++++++++++++++++++++
 apps/lib/curses/pdcurses/form/fty_generic.c    |  297 ++++++++++++++
 apps/lib/curses/pdcurses/form/fty_int.c        |  293 ++++++++++++++
 apps/lib/curses/pdcurses/form/fty_ipv4.c       |  120 ++++++
 apps/lib/curses/pdcurses/form/fty_num.c        |  339 ++++++++++++++++
 apps/lib/curses/pdcurses/form/fty_regex.c      |  350 +++++++++++++++++
 apps/lib/curses/pdcurses/include/curses.h      | 1378 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 apps/lib/curses/pdcurses/include/nc_alloc.h    |    4 +
 apps/lib/curses/pdcurses/include/ncurses_cfg.h |   40 ++
 apps/lib/curses/pdcurses/include/panel.h       |   58 +++
 apps/lib/curses/pdcurses/menu/Makefile         |   26 ++
 apps/lib/curses/pdcurses/menu/READ.ME          |   42 ++
 apps/lib/curses/pdcurses/menu/eti.h            |   54 +++
 apps/lib/curses/pdcurses/menu/m_attribs.c      |  144 +++++++
 apps/lib/curses/pdcurses/menu/m_cursor.c       |  112 ++++++
 apps/lib/curses/pdcurses/menu/m_driver.c       |  556 +++++++++++++++++++++++++++
 apps/lib/curses/pdcurses/menu/m_format.c       |  131 +++++++
 apps/lib/curses/pdcurses/menu/m_global.c       |  598 +++++++++++++++++++++++++++++
 apps/lib/curses/pdcurses/menu/m_hook.c         |  151 ++++++++
 apps/lib/curses/pdcurses/menu/m_item_cur.c     |  113 ++++++
 apps/lib/curses/pdcurses/menu/m_item_nam.c     |   72 ++++
 apps/lib/curses/pdcurses/menu/m_item_new.c     |  275 +++++++++++++
 apps/lib/curses/pdcurses/menu/m_item_opt.c     |  159 ++++++++
 apps/lib/curses/pdcurses/menu/m_item_top.c     |  107 ++++++
 apps/lib/curses/pdcurses/menu/m_item_use.c     |   76 ++++
 apps/lib/curses/pdcurses/menu/m_item_val.c     |  104 +++++
 apps/lib/curses/pdcurses/menu/m_item_vis.c     |   68 ++++
 apps/lib/curses/pdcurses/menu/m_items.c        |  110 ++++++
 apps/lib/curses/pdcurses/menu/m_new.c          |  142 +++++++
 apps/lib/curses/pdcurses/menu/m_opts.c         |  183 +++++++++
 apps/lib/curses/pdcurses/menu/m_pad.c          |   95 +++++
 apps/lib/curses/pdcurses/menu/m_pattern.c      |  124 ++++++
 apps/lib/curses/pdcurses/menu/m_post.c         |  377 ++++++++++++++++++
 apps/lib/curses/pdcurses/menu/m_req_name.c     |  125 ++++++
 apps/lib/curses/pdcurses/menu/m_scale.c        |   76 ++++
 apps/lib/curses/pdcurses/menu/m_spacing.c      |  113 ++++++
 apps/lib/curses/pdcurses/menu/m_sub.c          |  100 +++++
 apps/lib/curses/pdcurses/menu/m_trace.c        |   77 ++++
 apps/lib/curses/pdcurses/menu/m_userptr.c      |   76 ++++
 apps/lib/curses/pdcurses/menu/m_win.c          |  100 +++++
 apps/lib/curses/pdcurses/menu/menu.h           |  261 +++++++++++++
 apps/lib/curses/pdcurses/menu/menu.priv.h      |  157 ++++++++
 apps/lib/curses/pdcurses/menu/mf_common.h      |   95 +++++
 apps/lib/curses/pdcurses/pdcurses/Makefile     |   39 ++
 apps/lib/curses/pdcurses/pdcurses/README       |   25 ++
 apps/lib/curses/pdcurses/pdcurses/addch.c      |  408 ++++++++++++++++++++
 apps/lib/curses/pdcurses/pdcurses/addchstr.c   |  242 ++++++++++++
 apps/lib/curses/pdcurses/pdcurses/addstr.c     |  237 ++++++++++++
 apps/lib/curses/pdcurses/pdcurses/attr.c       |  349 +++++++++++++++++
 apps/lib/curses/pdcurses/pdcurses/beep.c       |   65 ++++
 apps/lib/curses/pdcurses/pdcurses/bkgd.c       |  220 +++++++++++
 apps/lib/curses/pdcurses/pdcurses/border.c     |  408 ++++++++++++++++++++
 apps/lib/curses/pdcurses/pdcurses/clear.c      |  154 ++++++++
 apps/lib/curses/pdcurses/pdcurses/color.c      |  295 ++++++++++++++
 apps/lib/curses/pdcurses/pdcurses/curspriv.h   |  146 +++++++
 apps/lib/curses/pdcurses/pdcurses/debug.c      |   81 ++++
 apps/lib/curses/pdcurses/pdcurses/delch.c      |   93 +++++
 apps/lib/curses/pdcurses/pdcurses/deleteln.c   |  208 ++++++++++
 apps/lib/curses/pdcurses/pdcurses/deprec.c     |   29 ++
 apps/lib/curses/pdcurses/pdcurses/getch.c      |  410 ++++++++++++++++++++
 apps/lib/curses/pdcurses/pdcurses/getstr.c     |  471 +++++++++++++++++++++++
 apps/lib/curses/pdcurses/pdcurses/getyx.c      |  143 +++++++
 apps/lib/curses/pdcurses/pdcurses/inch.c       |  125 ++++++
 apps/lib/curses/pdcurses/pdcurses/inchstr.c    |  211 ++++++++++
 apps/lib/curses/pdcurses/pdcurses/initscr.c    |  339 ++++++++++++++++
 apps/lib/curses/pdcurses/pdcurses/inopts.c     |  321 ++++++++++++++++
 apps/lib/curses/pdcurses/pdcurses/insch.c      |  268 +++++++++++++
 apps/lib/curses/pdcurses/pdcurses/insstr.c     |  261 +++++++++++++
 apps/lib/curses/pdcurses/pdcurses/instr.c      |  243 ++++++++++++
 apps/lib/curses/pdcurses/pdcurses/kernel.c     |  256 +++++++++++++
 apps/lib/curses/pdcurses/pdcurses/keyname.c    |  125 ++++++
 apps/lib/curses/pdcurses/pdcurses/mouse.c      |  429 +++++++++++++++++++++
 apps/lib/curses/pdcurses/pdcurses/move.c       |   54 +++
 apps/lib/curses/pdcurses/pdcurses/outopts.c    |  156 ++++++++
 apps/lib/curses/pdcurses/pdcurses/overlay.c    |  256 +++++++++++++
 apps/lib/curses/pdcurses/pdcurses/pad.c        |  259 +++++++++++++
 apps/lib/curses/pdcurses/pdcurses/panel.c      |  630 ++++++++++++++++++++++++++++++
 apps/lib/curses/pdcurses/pdcurses/printw.c     |  123 ++++++
 apps/lib/curses/pdcurses/pdcurses/refresh.c    |  276 +++++++++++++
 apps/lib/curses/pdcurses/pdcurses/scanw.c      |  575 +++++++++++++++++++++++++++
 apps/lib/curses/pdcurses/pdcurses/scr_dump.c   |  210 ++++++++++
 apps/lib/curses/pdcurses/pdcurses/scroll.c     |   98 +++++
 apps/lib/curses/pdcurses/pdcurses/slk.c        |  643 +++++++++++++++++++++++++++++++
 apps/lib/curses/pdcurses/pdcurses/term.h       |   57 +++
 apps/lib/curses/pdcurses/pdcurses/termattr.c   |  176 +++++++++
 apps/lib/curses/pdcurses/pdcurses/terminfo.c   |  215 +++++++++++
 apps/lib/curses/pdcurses/pdcurses/touch.c      |  160 ++++++++
 apps/lib/curses/pdcurses/pdcurses/util.c       |  309 +++++++++++++++
 apps/lib/curses/pdcurses/pdcurses/window.c     |  562 +++++++++++++++++++++++++++
 apps/lib/curses/tinycurses/Makefile            |    3 +
 apps/lib/curses/tinycurses/Makefile.include    |    1 +
 apps/lib/curses/tinycurses/colors.c            |   62 +++
 apps/lib/curses/tinycurses/curses.h            | 1680 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 apps/lib/curses/tinycurses/curses.priv.h       | 1317 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 apps/lib/curses/tinycurses/keyboard.c          |  247 ++++++++++++
 apps/lib/curses/tinycurses/local.h             |   89 +++++
 apps/lib/curses/tinycurses/tinycurses.c        | 1016 ++++++++++++++++++++++++++++++++++++++++++++++++
 apps/libc/Kconfig                              |   44 +++
 apps/libc/Makefile                             |   38 ++
 apps/libc/appinfo.c                            |   35 ++
 apps/libc/contiki/Makefile                     |    1 +
 apps/libc/contiki/strformat.c                  |  621 ++++++++++++++++++++++++++++++
 apps/libc/contiki/strformat.h                  |   25 ++
 apps/libc/contiki/vsprintf.c                   |  116 ++++++
 apps/libc/dirent.c                             |   59 +++
 apps/libc/errno.c                              |   19 +
 apps/libc/fcntl.c                              |   25 ++
 apps/libc/flags.c                              |   76 ++++
 apps/libc/getopt.c                             |  127 ++++++
 apps/libc/getopt_long.c                        |  625 ++++++++++++++++++++++++++++++
 apps/libc/helenos/Makefile                     |    4 +
 apps/libc/helenos/align.h                      |   63 +++
 apps/libc/helenos/assert.h                     |    2 +
 apps/libc/helenos/ctype.c                      |   52 +++
 apps/libc/helenos/printf_core.c                |  905 +++++++++++++++++++++++++++++++++++++++++++
 apps/libc/helenos/printf_core.h                |   59 +++
 apps/libc/helenos/stdio.c                      |  153 ++++++++
 apps/libc/helenos/str.c                        | 1755 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 apps/libc/helenos/str.h                        |  135 +++++++
 apps/libc/helenos/vsnprintf.c                  |  187 +++++++++
 apps/libc/malloc.c                             |   50 +++
 apps/libc/malloc.h                             |    2 +
 apps/libc/private.h                            |   18 +
 apps/libc/stdio.c                              |  275 +++++++++++++
 apps/libc/stdlib.c                             |   77 ++++
 apps/libc/string.c                             |  159 ++++++++
 apps/libc/sys/Makefile                         |    2 +
 apps/libc/sys/stat.c                           |   25 ++
 apps/libc/syscalls.c                           |  103 +++++
 apps/libc/time.c                               |   41 ++
 apps/libc/unistd.c                             |  108 ++++++
 apps/menu_curses/Makefile                      |   11 +
 apps/menu_curses/main.c                        |  127 ++++++
 apps/panel_curses/Makefile                     |   11 +
 apps/panel_curses/main.c                       |  118 ++++++
 apps/test_curses/Makefile                      |   11 +
 apps/test_curses/main.c                        |  172 +++++++++
 apps/utils/Makefile                            |    2 +
 apps/utils/getchar.c                           |   43 +++
 apps/utils/termcap.c                           |   97 +++++
 arch/arm/Kconfig                               |    2 +
 arch/arm/Makefile                              |   13 +-
 arch/arm/apps/Kconfig                          |   11 +
 arch/arm/apps/Makefile                         |    6 +
 arch/arm/apps/apps.lds.S                       |   64 ++++
 arch/arm/apps/binfmt.c                         |  111 ++++++
 arch/arm/apps/head.S                           |   59 +++
 arch/arm/apps/include/arch/asm/macro.h         |   46 +++
 arch/arm/apps/include/arch/setjmp.h            |   26 ++
 arch/arm/apps/raise.c                          |   27 ++
 arch/arm/apps/setjmp.S                         |   60 +++
 arch/arm/apps/start.c                          |   35 ++
 arch/arm/configs/highbank_defconfig            |   21 +-
 arch/mips/Makefile                             |    8 +-
 arch/ppc/Makefile                              |    4 +-
 arch/sandbox/Makefile                          |    4 +-
 arch/x86/Makefile                              |    4 +-
 commands/Kconfig                               |    7 +
 commands/Makefile                              |    1 +
 commands/appinfo.c                             |  119 ++++++
 common/Kconfig                                 |    3 +
 common/filetype.c                              |   35 ++
 common/tlsf_malloc.c                           |    2 -
 include/apps/syscall_init.h                    |   23 ++
 include/apps/syscalls.h                        |   76 ++++
 include/apps/types.h                           |   24 ++
 include/filetype.h                             |    2 +
 include/linux/license.h                        |   14 +
 lib/Makefile                                   |    1 +
 lib/apps/Makefile                              |    1 +
 lib/apps/syscalls.c                            |  413 ++++++++++++++++++++
 scripts/Makefile.build                         |   78 +++-
 scripts/Makefile.lib                           |   36 +-
 270 files changed, 44450 insertions(+), 32 deletions(-)
 create mode 100644 apps/Kconfig
 create mode 100644 apps/Makefile
 create mode 100644 apps/example/Makefile
 create mode 100644 apps/example/example.h
 create mode 100644 apps/example/list.c
 create mode 100644 apps/example/ls.c
 create mode 100644 apps/example/main.c
 create mode 100644 apps/example/setjmp.c
 create mode 100644 apps/form_curses/Makefile
 create mode 100644 apps/form_curses/main.c
 create mode 100644 apps/include/appinfo.h
 create mode 100644 apps/include/assert.h
 create mode 100644 apps/include/common.h
 create mode 100644 apps/include/ctype.h
 create mode 100644 apps/include/dirent.h
 create mode 100644 apps/include/errno.h
 create mode 100644 apps/include/fcntl.h
 create mode 100644 apps/include/getopt.h
 create mode 100644 apps/include/libc_config.h
 create mode 100644 apps/include/limits.h
 create mode 100644 apps/include/malloc.h
 create mode 100644 apps/include/module.h
 create mode 100644 apps/include/sections.h
 create mode 100644 apps/include/setjmp.h
 create mode 100644 apps/include/stddef.h
 create mode 100644 apps/include/stdint.h
 create mode 100644 apps/include/stdio.h
 create mode 100644 apps/include/stdlib.h
 create mode 100644 apps/include/string.h
 create mode 100644 apps/include/sys/ioctl.h
 create mode 100644 apps/include/sys/stat.h
 create mode 100644 apps/include/sys/syscall.h
 create mode 100644 apps/include/sys/types.h
 create mode 100644 apps/include/time.h
 create mode 100644 apps/include/unistd.h
 create mode 100644 apps/include/utils/ansi.h
 create mode 100644 apps/include/utils/getchar.h
 create mode 100644 apps/include/utils/list.h
 create mode 100644 apps/include/utils/termcap.h
 create mode 100644 apps/include/wchar.h
 create mode 100644 apps/lib/Kconfig
 create mode 100644 apps/lib/Makefile
 create mode 100644 apps/lib/Makefile.include
 create mode 100644 apps/lib/curses/Kconfig
 create mode 100644 apps/lib/curses/Makefile
 create mode 100644 apps/lib/curses/Makefile.include
 create mode 100644 apps/lib/curses/pdcurses/Makefile
 create mode 100644 apps/lib/curses/pdcurses/Makefile.include
 create mode 100644 apps/lib/curses/pdcurses/backend/Makefile
 create mode 100644 apps/lib/curses/pdcurses/backend/barebox.h
 create mode 100644 apps/lib/curses/pdcurses/backend/config.h
 create mode 100644 apps/lib/curses/pdcurses/backend/pdcdisp.c
 create mode 100644 apps/lib/curses/pdcurses/backend/pdcgetsc.c
 create mode 100644 apps/lib/curses/pdcurses/backend/pdckbd.c
 create mode 100644 apps/lib/curses/pdcurses/backend/pdcscrn.c
 create mode 100644 apps/lib/curses/pdcurses/backend/pdcsetsc.c
 create mode 100644 apps/lib/curses/pdcurses/backend/pdcutil.c
 create mode 100644 apps/lib/curses/pdcurses/form/Makefile
 create mode 100644 apps/lib/curses/pdcurses/form/READ.ME
 create mode 100644 apps/lib/curses/pdcurses/form/f_trace.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_arg.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_attr.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_current.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_def.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_dup.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_ftchoice.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_ftlink.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_info.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_just.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_link.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_max.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_move.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_newftyp.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_opts.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_pad.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_page.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_stat.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_type.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_user.c
 create mode 100644 apps/lib/curses/pdcurses/form/form.h
 create mode 100644 apps/lib/curses/pdcurses/form/form.priv.h
 create mode 100644 apps/lib/curses/pdcurses/form/frm_cursor.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_data.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_def.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_driver.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_hook.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_opts.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_page.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_post.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_req_name.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_scale.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_sub.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_user.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_win.c
 create mode 100644 apps/lib/curses/pdcurses/form/fty_alnum.c
 create mode 100644 apps/lib/curses/pdcurses/form/fty_alpha.c
 create mode 100644 apps/lib/curses/pdcurses/form/fty_enum.c
 create mode 100644 apps/lib/curses/pdcurses/form/fty_generic.c
 create mode 100644 apps/lib/curses/pdcurses/form/fty_int.c
 create mode 100644 apps/lib/curses/pdcurses/form/fty_ipv4.c
 create mode 100644 apps/lib/curses/pdcurses/form/fty_num.c
 create mode 100644 apps/lib/curses/pdcurses/form/fty_regex.c
 create mode 100644 apps/lib/curses/pdcurses/include/curses.h
 create mode 100644 apps/lib/curses/pdcurses/include/nc_alloc.h
 create mode 100644 apps/lib/curses/pdcurses/include/ncurses_cfg.h
 create mode 100644 apps/lib/curses/pdcurses/include/panel.h
 create mode 100644 apps/lib/curses/pdcurses/menu/Makefile
 create mode 100644 apps/lib/curses/pdcurses/menu/READ.ME
 create mode 100644 apps/lib/curses/pdcurses/menu/eti.h
 create mode 100644 apps/lib/curses/pdcurses/menu/m_attribs.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_cursor.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_driver.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_format.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_global.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_hook.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_item_cur.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_item_nam.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_item_new.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_item_opt.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_item_top.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_item_use.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_item_val.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_item_vis.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_items.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_new.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_opts.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_pad.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_pattern.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_post.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_req_name.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_scale.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_spacing.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_sub.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_trace.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_userptr.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_win.c
 create mode 100644 apps/lib/curses/pdcurses/menu/menu.h
 create mode 100644 apps/lib/curses/pdcurses/menu/menu.priv.h
 create mode 100644 apps/lib/curses/pdcurses/menu/mf_common.h
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/Makefile
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/README
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/addch.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/addchstr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/addstr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/attr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/beep.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/bkgd.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/border.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/clear.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/color.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/curspriv.h
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/debug.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/delch.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/deleteln.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/deprec.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/getch.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/getstr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/getyx.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/inch.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/inchstr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/initscr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/inopts.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/insch.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/insstr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/instr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/kernel.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/keyname.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/mouse.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/move.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/outopts.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/overlay.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/pad.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/panel.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/printw.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/refresh.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/scanw.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/scr_dump.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/scroll.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/slk.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/term.h
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/termattr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/terminfo.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/touch.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/util.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/window.c
 create mode 100644 apps/lib/curses/tinycurses/Makefile
 create mode 100644 apps/lib/curses/tinycurses/Makefile.include
 create mode 100644 apps/lib/curses/tinycurses/colors.c
 create mode 100644 apps/lib/curses/tinycurses/curses.h
 create mode 100644 apps/lib/curses/tinycurses/curses.priv.h
 create mode 100644 apps/lib/curses/tinycurses/keyboard.c
 create mode 100644 apps/lib/curses/tinycurses/local.h
 create mode 100644 apps/lib/curses/tinycurses/tinycurses.c
 create mode 100644 apps/libc/Kconfig
 create mode 100644 apps/libc/Makefile
 create mode 100644 apps/libc/appinfo.c
 create mode 100644 apps/libc/contiki/Makefile
 create mode 100644 apps/libc/contiki/strformat.c
 create mode 100644 apps/libc/contiki/strformat.h
 create mode 100644 apps/libc/contiki/vsprintf.c
 create mode 100644 apps/libc/dirent.c
 create mode 100644 apps/libc/errno.c
 create mode 100644 apps/libc/fcntl.c
 create mode 100644 apps/libc/flags.c
 create mode 100644 apps/libc/getopt.c
 create mode 100644 apps/libc/getopt_long.c
 create mode 100644 apps/libc/helenos/Makefile
 create mode 100644 apps/libc/helenos/align.h
 create mode 100644 apps/libc/helenos/assert.h
 create mode 100644 apps/libc/helenos/ctype.c
 create mode 100644 apps/libc/helenos/printf_core.c
 create mode 100644 apps/libc/helenos/printf_core.h
 create mode 100644 apps/libc/helenos/stdio.c
 create mode 100644 apps/libc/helenos/str.c
 create mode 100644 apps/libc/helenos/str.h
 create mode 100644 apps/libc/helenos/vsnprintf.c
 create mode 100644 apps/libc/malloc.c
 create mode 100644 apps/libc/malloc.h
 create mode 100644 apps/libc/private.h
 create mode 100644 apps/libc/stdio.c
 create mode 100644 apps/libc/stdlib.c
 create mode 100644 apps/libc/string.c
 create mode 100644 apps/libc/sys/Makefile
 create mode 100644 apps/libc/sys/stat.c
 create mode 100644 apps/libc/syscalls.c
 create mode 100644 apps/libc/time.c
 create mode 100644 apps/libc/unistd.c
 create mode 100644 apps/menu_curses/Makefile
 create mode 100644 apps/menu_curses/main.c
 create mode 100644 apps/panel_curses/Makefile
 create mode 100644 apps/panel_curses/main.c
 create mode 100644 apps/test_curses/Makefile
 create mode 100644 apps/test_curses/main.c
 create mode 100644 apps/utils/Makefile
 create mode 100644 apps/utils/getchar.c
 create mode 100644 apps/utils/termcap.c
 create mode 100644 arch/arm/apps/Kconfig
 create mode 100644 arch/arm/apps/Makefile
 create mode 100644 arch/arm/apps/apps.lds.S
 create mode 100644 arch/arm/apps/binfmt.c
 create mode 100644 arch/arm/apps/head.S
 create mode 100644 arch/arm/apps/include/arch/asm/macro.h
 create mode 100644 arch/arm/apps/include/arch/setjmp.h
 create mode 100644 arch/arm/apps/raise.c
 create mode 100644 arch/arm/apps/setjmp.S
 create mode 100644 arch/arm/apps/start.c
 create mode 100644 commands/appinfo.c
 create mode 100644 include/apps/syscall_init.h
 create mode 100644 include/apps/syscalls.h
 create mode 100644 include/apps/types.h
 create mode 100644 include/linux/license.h
 create mode 100644 lib/apps/Makefile
 create mode 100644 lib/apps/syscalls.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
