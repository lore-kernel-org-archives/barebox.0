Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YT5cy-0008R1-V2
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 09:30:06 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed,  4 Mar 2015 10:29:28 +0100
Message-Id: <1425461372-31740-1-git-send-email-jlu@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/4] Device Tree Overlay Support
To: barebox@lists.infradead.org

This adds support for device tree overlays as supported by Linux 4.0-rc1.
Patches 2-4 update the included DTC with overlay support.

Jan Luebbe (4):
  drivers: of: implement overlay support
  scripts/dtc: import update-dtc-source.sh from kernel v4.0-rc1
  scripts/dtc: Update to upstream version 1.4.1
  scripts/dtc: Update to upstream version 1.4.1 with overlay support

 Documentation/user/devicetree.rst     |  101 +-
 arch/sandbox/dts/Makefile             |    5 +-
 arch/sandbox/dts/sandbox-overlay.dtso |   26 +
 arch/sandbox/dts/sandbox.dts          |    6 +
 commands/oftree.c                     |   65 +-
 drivers/of/Kconfig                    |    6 +
 drivers/of/Makefile                   |    1 +
 drivers/of/overlay.c                  |  234 ++++
 drivers/of/resolver.c                 |  346 +++++
 include/of.h                          |   71 +
 scripts/Makefile.lib                  |    5 +-
 scripts/dtc/checks.c                  |  137 +-
 scripts/dtc/data.c                    |   12 +-
 scripts/dtc/dtc-lexer.l               |   72 +-
 scripts/dtc/dtc-lexer.lex.c_shipped   |  701 +++++-----
 scripts/dtc/dtc-parser.tab.c_shipped  | 2411 ++++++++++++++++-----------------
 scripts/dtc/dtc-parser.tab.h_shipped  |  110 +-
 scripts/dtc/dtc-parser.y              |  169 +--
 scripts/dtc/dtc.c                     |  136 +-
 scripts/dtc/dtc.h                     |   59 +-
 scripts/dtc/fdt.c                     |   30 +-
 scripts/dtc/fdt.h                     |   93 +-
 scripts/dtc/fdt_addresses.c           |   96 ++
 scripts/dtc/fdt_ro.c                  |    7 +-
 scripts/dtc/fdt_rw.c                  |   10 +-
 scripts/dtc/fdt_sw.c                  |   36 +-
 scripts/dtc/fdt_wip.c                 |    2 +-
 scripts/dtc/fdtdump.c                 |  135 +-
 scripts/dtc/fdtget.c                  |   60 +-
 scripts/dtc/fdtput.c                  |  225 ++-
 scripts/dtc/flattree.c                |  206 ++-
 scripts/dtc/fstree.c                  |   16 +-
 scripts/dtc/libfdt.h                  |  133 +-
 scripts/dtc/libfdt/Makefile.libfdt    |   10 -
 scripts/dtc/libfdt_env.h              |  104 +-
 scripts/dtc/libfdt_internal.h         |    6 +-
 scripts/dtc/livetree.c                |    4 +-
 scripts/dtc/srcpos.c                  |   49 +-
 scripts/dtc/srcpos.h                  |   15 +-
 scripts/dtc/treesource.c              |   14 +-
 scripts/dtc/update-dtc-source.sh      |   61 +
 scripts/dtc/util.c                    |  153 ++-
 scripts/dtc/util.h                    |  111 +-
 scripts/dtc/version_gen.h             |    2 +-
 44 files changed, 4104 insertions(+), 2147 deletions(-)
 create mode 100644 arch/sandbox/dts/sandbox-overlay.dtso
 create mode 100644 drivers/of/overlay.c
 create mode 100644 drivers/of/resolver.c
 create mode 100644 scripts/dtc/fdt_addresses.c
 delete mode 100644 scripts/dtc/libfdt/Makefile.libfdt
 create mode 100755 scripts/dtc/update-dtc-source.sh

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
