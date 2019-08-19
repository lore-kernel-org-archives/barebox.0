Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhs4-0002DB-2J
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 13:38:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Aug 2019 15:38:39 +0200
Message-Id: <20190819133847.17015-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/8] Add support for a generic DT based 2nd stage ARM image
To: Barebox List <barebox@lists.infradead.org>

This series adds support for a generic DT based 2nd stage ARM image.
This image can be enabled in Kconfig for multiimage based ARM builds.
The result is an image which can be started just like a Kernel and just
like the Kernel it will pick the device tree from r2, so basically
a put-it-somewhere-as-a-kernel image. This can help with starting
barebox on qemu.

Sascha

Sascha Hauer (8):
  dtc: Update update-dtc-source.sh from Linux
  scripts/dtc: Update to upstream version v1.5.0
  pbl: Implement strrchr
  Compile libfdt for barebox
  common: return "none" when board unset
  ARM: Add generic device tree 2nd stage support
  ARM: i.MX: Do not hang() on unknown SoCs
  ARM: i.MX: When generic DT image is enabled do not hardcode SoC

 arch/arm/Kconfig                           |  11 +
 arch/arm/cpu/Makefile                      |   3 +
 arch/arm/cpu/board-dt-2nd-aarch64.S        |  11 +
 arch/arm/cpu/board-dt-2nd.c                | 127 +++++++
 arch/arm/mach-imx/imx.c                    |   2 +-
 arch/arm/mach-imx/include/mach/generic.h   |   9 +
 common/misc.c                              |   5 +-
 images/Makefile                            |   4 +
 include/fdt.h                              |  69 +---
 include/linux/libfdt.h                     |   8 +
 include/linux/libfdt_env.h                 |  19 +
 lib/Kconfig                                |   3 +
 lib/Makefile                               |  10 +
 lib/fdt.c                                  |   2 +
 lib/fdt_empty_tree.c                       |   2 +
 lib/fdt_ro.c                               |   2 +
 lib/fdt_rw.c                               |   2 +
 lib/fdt_strerror.c                         |   2 +
 lib/fdt_sw.c                               |   2 +
 lib/fdt_wip.c                              |   2 +
 pbl/string.c                               |  16 +
 scripts/dtc/Makefile                       |  49 +--
 scripts/dtc/Makefile.dtc                   |   4 +
 scripts/dtc/checks.c                       | 255 +++++++++++++-
 scripts/dtc/data.c                         |   2 +-
 scripts/dtc/dtc-lexer.l                    |   4 +-
 scripts/dtc/dtc-parser.y                   |  53 ++-
 scripts/dtc/dtc.c                          |  22 +-
 scripts/dtc/dtc.h                          |  18 +-
 scripts/dtc/fdtget.c                       | 383 ---------------------
 scripts/dtc/flattree.c                     |   4 +-
 scripts/dtc/fstree.c                       |   5 +-
 scripts/dtc/libfdt/Makefile.libfdt         |  15 +
 scripts/dtc/{ => libfdt}/fdt.c             |   0
 scripts/dtc/{ => libfdt}/fdt.h             |   0
 scripts/dtc/{ => libfdt}/fdt_addresses.c   |  16 +-
 scripts/dtc/{ => libfdt}/fdt_empty_tree.c  |   0
 scripts/dtc/{ => libfdt}/fdt_overlay.c     |   0
 scripts/dtc/{ => libfdt}/fdt_ro.c          |   0
 scripts/dtc/{ => libfdt}/fdt_rw.c          |   0
 scripts/dtc/{ => libfdt}/fdt_strerror.c    |   0
 scripts/dtc/{ => libfdt}/fdt_sw.c          |   0
 scripts/dtc/{ => libfdt}/fdt_wip.c         |   0
 scripts/dtc/{ => libfdt}/libfdt.h          |  30 +-
 scripts/dtc/{ => libfdt}/libfdt_env.h      |   0
 scripts/dtc/{ => libfdt}/libfdt_internal.h |   0
 scripts/dtc/livetree.c                     |  33 +-
 scripts/dtc/srcpos.c                       | 153 +++++++-
 scripts/dtc/srcpos.h                       |  14 +-
 scripts/dtc/treesource.c                   | 124 ++++---
 scripts/dtc/update-dtc-source.sh           |  25 +-
 scripts/dtc/util.c                         |  60 ++--
 scripts/dtc/util.h                         |   2 +
 scripts/dtc/version_gen.h                  |   2 +-
 scripts/dtc/yamltree.c                     | 247 +++++++++++++
 55 files changed, 1180 insertions(+), 651 deletions(-)
 create mode 100644 arch/arm/cpu/board-dt-2nd-aarch64.S
 create mode 100644 arch/arm/cpu/board-dt-2nd.c
 create mode 100644 include/linux/libfdt.h
 create mode 100644 include/linux/libfdt_env.h
 create mode 100644 lib/fdt.c
 create mode 100644 lib/fdt_empty_tree.c
 create mode 100644 lib/fdt_ro.c
 create mode 100644 lib/fdt_rw.c
 create mode 100644 lib/fdt_strerror.c
 create mode 100644 lib/fdt_sw.c
 create mode 100644 lib/fdt_wip.c
 delete mode 100644 scripts/dtc/fdtget.c
 create mode 100644 scripts/dtc/libfdt/Makefile.libfdt
 rename scripts/dtc/{ => libfdt}/fdt.c (100%)
 rename scripts/dtc/{ => libfdt}/fdt.h (100%)
 rename scripts/dtc/{ => libfdt}/fdt_addresses.c (92%)
 rename scripts/dtc/{ => libfdt}/fdt_empty_tree.c (100%)
 rename scripts/dtc/{ => libfdt}/fdt_overlay.c (100%)
 rename scripts/dtc/{ => libfdt}/fdt_ro.c (100%)
 rename scripts/dtc/{ => libfdt}/fdt_rw.c (100%)
 rename scripts/dtc/{ => libfdt}/fdt_strerror.c (100%)
 rename scripts/dtc/{ => libfdt}/fdt_sw.c (100%)
 rename scripts/dtc/{ => libfdt}/fdt_wip.c (100%)
 rename scripts/dtc/{ => libfdt}/libfdt.h (99%)
 rename scripts/dtc/{ => libfdt}/libfdt_env.h (100%)
 rename scripts/dtc/{ => libfdt}/libfdt_internal.h (100%)
 create mode 100644 scripts/dtc/yamltree.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
