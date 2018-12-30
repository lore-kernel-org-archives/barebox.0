Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdbdf-0007gT-Gu
 for barebox@lists.infradead.org; Sun, 30 Dec 2018 14:00:27 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sun, 30 Dec 2018 22:59:17 +0900
Message-Id: <1546178368-26182-1-git-send-email-yamada.masahiro@socionext.com>
MIME-Version: 1.0
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
Subject: [PATCH 00/11] Sync Kconfig to Linux 4.20
To: barebox@lists.infradead.org

I adjusted other files.

I took care of bisectability being kept.

Caution:
Do not rip off trailing spaces in patch 10/11.
This is intentional for testconfig to work correctly.



Masahiro Yamada (11):
  kbuild: filter-out PHONY targets from "targets"
  kbuild: add .DELETE_ON_ERROR special target
  kbuild: add .SECONDARY special target
  kbuild: add %.lex.c and %.tab.[ch] to 'targets' automatically
  treewide: remove blank texts
  .gitignore: move *.lex.c *.tab.[ch] patterns to the top-level
    .gitignore
  kbuild: clean up *.lex.c and *.tab.[ch] patterns from top-level
    Makefile
  kbuild: rename HOSTLOADLIBES_* to HOSTLDLIBS_*
  kbuild: generate lexer and parser during build instead of shipping
  kconfig: sync to Linux 4.20
  kbuild: remove unnecessary LEX_PREFIX and YACC_PREFIX

 .gitignore                                         |    2 +
 Kconfig                                            |    8 +-
 Makefile                                           |   21 +-
 arch/arm/crypto/Makefile                           |    2 -
 arch/mips/Kconfig                                  |    1 -
 common/Kconfig                                     |   12 +-
 drivers/crypto/Kconfig                             |    1 -
 images/Makefile                                    |    2 -
 scripts/Kbuild.include                             |    6 +
 scripts/Makefile                                   |    6 +-
 scripts/Makefile.build                             |   13 +-
 scripts/Makefile.host                              |    6 +-
 scripts/Makefile.lib                               |   22 +
 scripts/dtc/.gitignore                             |    3 -
 scripts/dtc/Makefile                               |    3 -
 scripts/dtc/dtc-lexer.l                            |  306 ---
 scripts/dtc/dtc-parser.y                           |  538 -----
 scripts/imx/Makefile                               |    4 +-
 scripts/kconfig/.gitignore                         |    9 -
 scripts/kconfig/Makefile                           |  346 +--
 scripts/kconfig/POTFILES.in                        |   12 -
 scripts/kconfig/check.sh                           |   13 -
 scripts/kconfig/conf.c                             |  215 +-
 scripts/kconfig/confdata.c                         |  228 +-
 scripts/kconfig/expr.c                             |  479 ++--
 scripts/kconfig/expr.h                             |  110 +-
 scripts/kconfig/gconf-cfg.sh                       |   30 +
 scripts/kconfig/gconf.c                            |   82 +-
 scripts/kconfig/kconf_id.c                         |   52 +
 scripts/kconfig/kxgettext.c                        |  235 --
 scripts/kconfig/list.h                             |    7 +-
 scripts/kconfig/lkc.h                              |   41 +-
 scripts/kconfig/lkc_proto.h                        |  105 +-
 scripts/kconfig/lxdialog/check-lxdialog.sh         |   91 -
 scripts/kconfig/lxdialog/checklist.c               |    4 +-
 scripts/kconfig/lxdialog/dialog.h                  |    8 +-
 scripts/kconfig/lxdialog/inputbox.c                |    4 +-
 scripts/kconfig/lxdialog/menubox.c                 |   10 +-
 scripts/kconfig/lxdialog/textbox.c                 |    2 +-
 scripts/kconfig/lxdialog/yesno.c                   |    4 +-
 scripts/kconfig/mconf-cfg.sh                       |   47 +
 scripts/kconfig/mconf.c                            |  177 +-
 scripts/kconfig/menu.c                             |  269 ++-
 scripts/kconfig/merge_config.sh                    |   63 +-
 scripts/kconfig/nconf-cfg.sh                       |   47 +
 scripts/kconfig/nconf.c                            |  175 +-
 scripts/kconfig/nconf.gui.c                        |   22 +-
 scripts/kconfig/nconf.h                            |    5 +-
 scripts/kconfig/preprocess.c                       |  572 +++++
 scripts/kconfig/qconf-cfg.sh                       |   32 +
 scripts/kconfig/qconf.cc                           |  765 +++---
 scripts/kconfig/qconf.h                            |  150 +-
 scripts/kconfig/streamline_config.pl               |   53 +-
 scripts/kconfig/symbol.c                           |  335 ++-
 scripts/kconfig/tests/auto_submenu/Kconfig         |   50 +
 scripts/kconfig/tests/auto_submenu/__init__.py     |   12 +
 scripts/kconfig/tests/auto_submenu/expected_stdout |   10 +
 scripts/kconfig/tests/choice/Kconfig               |   54 +
 scripts/kconfig/tests/choice/__init__.py           |   40 +
 .../kconfig/tests/choice/alldef_expected_config    |    5 +
 .../kconfig/tests/choice/allmod_expected_config    |    9 +
 scripts/kconfig/tests/choice/allno_expected_config |    5 +
 .../kconfig/tests/choice/allyes_expected_config    |    9 +
 .../kconfig/tests/choice/oldask0_expected_stdout   |   10 +
 scripts/kconfig/tests/choice/oldask1_config        |    2 +
 .../kconfig/tests/choice/oldask1_expected_stdout   |   15 +
 .../kconfig/tests/choice_value_with_m_dep/Kconfig  |   19 +
 .../tests/choice_value_with_m_dep/__init__.py      |   15 +
 .../kconfig/tests/choice_value_with_m_dep/config   |    2 +
 .../tests/choice_value_with_m_dep/expected_config  |    3 +
 .../tests/choice_value_with_m_dep/expected_stdout  |    4 +
 scripts/kconfig/tests/conftest.py                  |  291 +++
 scripts/kconfig/tests/err_recursive_dep/Kconfig    |   63 +
 .../kconfig/tests/err_recursive_dep/__init__.py    |   10 +
 .../tests/err_recursive_dep/expected_stderr        |   38 +
 scripts/kconfig/tests/err_recursive_inc/Kconfig    |    1 +
 .../kconfig/tests/err_recursive_inc/Kconfig.inc1   |    4 +
 .../kconfig/tests/err_recursive_inc/Kconfig.inc2   |    3 +
 .../kconfig/tests/err_recursive_inc/Kconfig.inc3   |    1 +
 .../kconfig/tests/err_recursive_inc/__init__.py    |   10 +
 .../tests/err_recursive_inc/expected_stderr        |    6 +
 scripts/kconfig/tests/inter_choice/Kconfig         |   23 +
 scripts/kconfig/tests/inter_choice/__init__.py     |   14 +
 scripts/kconfig/tests/inter_choice/defconfig       |    1 +
 scripts/kconfig/tests/inter_choice/expected_config |    4 +
 scripts/kconfig/tests/new_choice_with_dep/Kconfig  |   37 +
 .../kconfig/tests/new_choice_with_dep/__init__.py  |   14 +
 scripts/kconfig/tests/new_choice_with_dep/config   |    3 +
 .../tests/new_choice_with_dep/expected_stdout      |   10 +
 .../kconfig/tests/no_write_if_dep_unmet/Kconfig    |   14 +
 .../tests/no_write_if_dep_unmet/__init__.py        |   19 +
 scripts/kconfig/tests/no_write_if_dep_unmet/config |    1 +
 .../tests/no_write_if_dep_unmet/expected_config    |    5 +
 .../kconfig/tests/preprocess/builtin_func/Kconfig  |   27 +
 .../tests/preprocess/builtin_func/__init__.py      |    9 +
 .../tests/preprocess/builtin_func/expected_stderr  |    5 +
 .../tests/preprocess/builtin_func/expected_stdout  |    1 +
 .../tests/preprocess/circular_expansion/Kconfig    |    5 +
 .../preprocess/circular_expansion/__init__.py      |   11 +
 .../preprocess/circular_expansion/expected_stderr  |    1 +
 scripts/kconfig/tests/preprocess/escape/Kconfig    |   44 +
 .../kconfig/tests/preprocess/escape/__init__.py    |    8 +
 .../tests/preprocess/escape/expected_stderr        |   10 +
 scripts/kconfig/tests/preprocess/variable/Kconfig  |   53 +
 .../kconfig/tests/preprocess/variable/__init__.py  |    8 +
 .../tests/preprocess/variable/expected_stderr      |    9 +
 scripts/kconfig/tests/pytest.ini                   |    7 +
 scripts/kconfig/tests/rand_nested_choice/Kconfig   |   33 +
 .../kconfig/tests/rand_nested_choice/__init__.py   |   16 +
 .../tests/rand_nested_choice/expected_stdout0      |    2 +
 .../tests/rand_nested_choice/expected_stdout1      |    4 +
 .../tests/rand_nested_choice/expected_stdout2      |    5 +
 scripts/kconfig/util.c                             |   93 +-
 scripts/kconfig/zconf.gperf                        |   48 -
 .../kconfig/{zconf.hash.c_shipped => zconf.hash.c} |    0
 scripts/kconfig/zconf.l                            |  194 +-
 scripts/kconfig/zconf.lex.c_shipped                | 2420 -------------------
 scripts/kconfig/zconf.tab.c_shipped                | 2538 --------------------
 scripts/kconfig/zconf.y                            |  163 +-
 scripts/tegra/Makefile                             |    2 +-
 120 files changed, 4268 insertions(+), 8039 deletions(-)
 delete mode 100644 scripts/dtc/dtc-lexer.l
 delete mode 100644 scripts/dtc/dtc-parser.y
 delete mode 100644 scripts/kconfig/POTFILES.in
 delete mode 100755 scripts/kconfig/check.sh
 create mode 100755 scripts/kconfig/gconf-cfg.sh
 create mode 100644 scripts/kconfig/kconf_id.c
 delete mode 100644 scripts/kconfig/kxgettext.c
 delete mode 100755 scripts/kconfig/lxdialog/check-lxdialog.sh
 create mode 100755 scripts/kconfig/mconf-cfg.sh
 create mode 100644 scripts/kconfig/nconf-cfg.sh
 create mode 100644 scripts/kconfig/preprocess.c
 create mode 100755 scripts/kconfig/qconf-cfg.sh
 create mode 100644 scripts/kconfig/tests/auto_submenu/Kconfig
 create mode 100644 scripts/kconfig/tests/auto_submenu/__init__.py
 create mode 100644 scripts/kconfig/tests/auto_submenu/expected_stdout
 create mode 100644 scripts/kconfig/tests/choice/Kconfig
 create mode 100644 scripts/kconfig/tests/choice/__init__.py
 create mode 100644 scripts/kconfig/tests/choice/alldef_expected_config
 create mode 100644 scripts/kconfig/tests/choice/allmod_expected_config
 create mode 100644 scripts/kconfig/tests/choice/allno_expected_config
 create mode 100644 scripts/kconfig/tests/choice/allyes_expected_config
 create mode 100644 scripts/kconfig/tests/choice/oldask0_expected_stdout
 create mode 100644 scripts/kconfig/tests/choice/oldask1_config
 create mode 100644 scripts/kconfig/tests/choice/oldask1_expected_stdout
 create mode 100644 scripts/kconfig/tests/choice_value_with_m_dep/Kconfig
 create mode 100644 scripts/kconfig/tests/choice_value_with_m_dep/__init__.py
 create mode 100644 scripts/kconfig/tests/choice_value_with_m_dep/config
 create mode 100644 scripts/kconfig/tests/choice_value_with_m_dep/expected_config
 create mode 100644 scripts/kconfig/tests/choice_value_with_m_dep/expected_stdout
 create mode 100644 scripts/kconfig/tests/conftest.py
 create mode 100644 scripts/kconfig/tests/err_recursive_dep/Kconfig
 create mode 100644 scripts/kconfig/tests/err_recursive_dep/__init__.py
 create mode 100644 scripts/kconfig/tests/err_recursive_dep/expected_stderr
 create mode 100644 scripts/kconfig/tests/err_recursive_inc/Kconfig
 create mode 100644 scripts/kconfig/tests/err_recursive_inc/Kconfig.inc1
 create mode 100644 scripts/kconfig/tests/err_recursive_inc/Kconfig.inc2
 create mode 100644 scripts/kconfig/tests/err_recursive_inc/Kconfig.inc3
 create mode 100644 scripts/kconfig/tests/err_recursive_inc/__init__.py
 create mode 100644 scripts/kconfig/tests/err_recursive_inc/expected_stderr
 create mode 100644 scripts/kconfig/tests/inter_choice/Kconfig
 create mode 100644 scripts/kconfig/tests/inter_choice/__init__.py
 create mode 100644 scripts/kconfig/tests/inter_choice/defconfig
 create mode 100644 scripts/kconfig/tests/inter_choice/expected_config
 create mode 100644 scripts/kconfig/tests/new_choice_with_dep/Kconfig
 create mode 100644 scripts/kconfig/tests/new_choice_with_dep/__init__.py
 create mode 100644 scripts/kconfig/tests/new_choice_with_dep/config
 create mode 100644 scripts/kconfig/tests/new_choice_with_dep/expected_stdout
 create mode 100644 scripts/kconfig/tests/no_write_if_dep_unmet/Kconfig
 create mode 100644 scripts/kconfig/tests/no_write_if_dep_unmet/__init__.py
 create mode 100644 scripts/kconfig/tests/no_write_if_dep_unmet/config
 create mode 100644 scripts/kconfig/tests/no_write_if_dep_unmet/expected_config
 create mode 100644 scripts/kconfig/tests/preprocess/builtin_func/Kconfig
 create mode 100644 scripts/kconfig/tests/preprocess/builtin_func/__init__.py
 create mode 100644 scripts/kconfig/tests/preprocess/builtin_func/expected_stderr
 create mode 100644 scripts/kconfig/tests/preprocess/builtin_func/expected_stdout
 create mode 100644 scripts/kconfig/tests/preprocess/circular_expansion/Kconfig
 create mode 100644 scripts/kconfig/tests/preprocess/circular_expansion/__init__.py
 create mode 100644 scripts/kconfig/tests/preprocess/circular_expansion/expected_stderr
 create mode 100644 scripts/kconfig/tests/preprocess/escape/Kconfig
 create mode 100644 scripts/kconfig/tests/preprocess/escape/__init__.py
 create mode 100644 scripts/kconfig/tests/preprocess/escape/expected_stderr
 create mode 100644 scripts/kconfig/tests/preprocess/variable/Kconfig
 create mode 100644 scripts/kconfig/tests/preprocess/variable/__init__.py
 create mode 100644 scripts/kconfig/tests/preprocess/variable/expected_stderr
 create mode 100644 scripts/kconfig/tests/pytest.ini
 create mode 100644 scripts/kconfig/tests/rand_nested_choice/Kconfig
 create mode 100644 scripts/kconfig/tests/rand_nested_choice/__init__.py
 create mode 100644 scripts/kconfig/tests/rand_nested_choice/expected_stdout0
 create mode 100644 scripts/kconfig/tests/rand_nested_choice/expected_stdout1
 create mode 100644 scripts/kconfig/tests/rand_nested_choice/expected_stdout2
 delete mode 100644 scripts/kconfig/zconf.gperf
 rename scripts/kconfig/{zconf.hash.c_shipped => zconf.hash.c} (100%)
 delete mode 100644 scripts/kconfig/zconf.lex.c_shipped
 delete mode 100644 scripts/kconfig/zconf.tab.c_shipped

-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
