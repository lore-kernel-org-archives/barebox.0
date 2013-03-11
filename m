Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF9r6-0003Qw-KK
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 21:02:02 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UF9r4-0007YF-GL
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 22:01:58 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UF9r4-00048o-FK
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 22:01:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Mar 2013 22:01:51 +0100
Message-Id: <1363035716-13386-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Add dtc
To: barebox@lists.infradead.org

This adds the devicetree compiler (dtc) and rules to generate dtbs
to barebox. With this devicetrees can be compiled into the barebox
binary and devices can be probed from it. Also added are i.MX27
devicetree files, these are basically meant as example, I won't apply
them eight now.

The dtc probably doesn't make it to the list due to its size. This
doesn't really matter, it's the unchanged version from the kernel.

Also in this series, currently not for merging are some basic i.MX27
devicetree files.

This all works quite good, but there is a problem. Devices in barebox
are usually registered in various initcalls. Most drivers currently
unfortunately don't test if dev_request_mem_region succeeds, instead
they silently try to access NULL pointers. So if you test this series,
make sure that no devices are registered twice.

Sascha

The following changes since commit 695a7ca89f5aae1b8a12d1300eb8b52ac0f05d3b:

  Merge branch 'for-next/pr_print' into next (2013-03-09 11:18:40 +0100)

are available in the git repository at:


  git://git.pengutronix.de/git/barebox.git pu/dtc

for you to fetch changes up to a0976cf182fc9ba15cb12980b4153eca0779fa1c:

  drivers: Bail out if dev_request_mem_region fails (2013-03-11 21:38:09 +0100)

----------------------------------------------------------------
Sascha Hauer (5):
      scripts: Add dtc
      Makefile.lib: Add dtc support
      ARM: Initial dts support
      ARM: Add initial i.MX27 dts files
      drivers: Bail out if dev_request_mem_region fails

 Makefile                              |    2 +-
 arch/arm/Kconfig                      |    4 +
 arch/arm/Makefile                     |   14 +
 arch/arm/cpu/Makefile                 |    3 +
 arch/arm/cpu/dtb.c                    |   41 +
 arch/arm/dts/Makefile                 |   13 +
 arch/arm/dts/imx27-phytec-phycore.dts |  106 ++
 arch/arm/dts/imx27.dtsi               |  250 ++++
 arch/arm/dts/skeleton.dtsi            |   13 +
 arch/arm/lib/barebox.lds.S            |    2 +
 arch/arm/mach-imx/clk-imx1.c          |    2 +
 arch/arm/mach-imx/clk-imx21.c         |    2 +
 arch/arm/mach-imx/clk-imx25.c         |    2 +
 arch/arm/mach-imx/clk-imx27.c         |    2 +
 arch/arm/mach-imx/clk-imx31.c         |    2 +
 arch/arm/mach-imx/clk-imx35.c         |    2 +
 arch/arm/mach-imx/clk-imx5.c          |    4 +
 arch/arm/mach-imx/clk-imx6.c          |    2 +
 arch/arm/mach-imx/clocksource.c       |    2 +
 arch/arm/mach-imx/esdctl.c            |    2 +-
 arch/arm/mach-imx/gpio.c              |   10 +
 arch/arm/mach-imx/iim.c               |    2 +
 arch/arm/mach-imx/imx27.c             |    3 +
 arch/arm/mach-imx/iomux-v2.c          |    2 +
 arch/arm/mach-imx/iomux-v3.c          |    2 +
 drivers/mci/mxs.c                     |   10 +
 drivers/mci/omap_hsmmc.c              |   10 +
 drivers/mci/s3c.c                     |   10 +
 drivers/mtd/nor/cfi_flash.c           |   12 +
 drivers/net/fec_imx.c                 |    4 +
 drivers/of/Kconfig                    |    4 +
 drivers/serial/serial_altera_jtag.c   |   11 +
 drivers/serial/serial_imx.c           |    5 +
 drivers/serial/serial_s3c.c           |   10 +
 drivers/serial/stm-serial.c           |   10 +
 drivers/spi/imx_spi.c                 |    4 +
 drivers/watchdog/imxwd.c              |    5 +
 include/asm-generic/barebox.lds.h     |   12 +
 scripts/Makefile                      |    2 +
 scripts/Makefile.lib                  |   41 +
 scripts/dtc/Makefile                  |   31 +
 scripts/dtc/Makefile.dtc              |   18 +
 scripts/dtc/checks.c                  |  759 +++++++++++
 scripts/dtc/data.c                    |  269 ++++
 scripts/dtc/dtc-lexer.l               |  250 ++++
 scripts/dtc/dtc-lexer.lex.c_shipped   | 2195 ++++++++++++++++++++++++++++++
 scripts/dtc/dtc-parser.tab.c_shipped  | 2398 +++++++++++++++++++++++++++++++++
 scripts/dtc/dtc-parser.tab.h_shipped  |  107 ++
 scripts/dtc/dtc-parser.y              |  532 ++++++++
 scripts/dtc/dtc.c                     |  260 ++++
 scripts/dtc/dtc.h                     |  270 ++++
 scripts/dtc/fdtdump.c                 |  162 +++
 scripts/dtc/fdtget.c                  |  366 +++++
 scripts/dtc/fdtput.c                  |  362 +++++
 scripts/dtc/flattree.c                |  933 +++++++++++++
 scripts/dtc/fstree.c                  |   91 ++
 scripts/dtc/libfdt/Makefile.libfdt    |   10 +
 scripts/dtc/libfdt/fdt.c              |  222 +++
 scripts/dtc/libfdt/fdt.h              |   60 +
 scripts/dtc/libfdt/fdt_empty_tree.c   |   84 ++
 scripts/dtc/libfdt/fdt_ro.c           |  574 ++++++++
 scripts/dtc/libfdt/fdt_rw.c           |  492 +++++++
 scripts/dtc/libfdt/fdt_strerror.c     |   96 ++
 scripts/dtc/libfdt/fdt_sw.c           |  256 ++++
 scripts/dtc/libfdt/fdt_wip.c          |  118 ++
 scripts/dtc/libfdt/libfdt.h           | 1478 ++++++++++++++++++++
 scripts/dtc/libfdt/libfdt_env.h       |   29 +
 scripts/dtc/libfdt/libfdt_internal.h  |   95 ++
 scripts/dtc/livetree.c                |  709 ++++++++++
 scripts/dtc/modules.order             |    0
 scripts/dtc/srcpos.c                  |  336 +++++
 scripts/dtc/srcpos.h                  |  118 ++
 scripts/dtc/treesource.c              |  284 ++++
 scripts/dtc/util.c                    |  331 +++++
 scripts/dtc/util.h                    |  153 +++
 scripts/dtc/version_gen.h             |    1 +
 76 files changed, 15086 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/cpu/dtb.c
 create mode 100644 arch/arm/dts/Makefile
 create mode 100644 arch/arm/dts/imx27-phytec-phycore.dts
 create mode 100644 arch/arm/dts/imx27.dtsi
 create mode 100644 arch/arm/dts/skeleton.dtsi
 create mode 100644 scripts/dtc/Makefile
 create mode 100644 scripts/dtc/Makefile.dtc
 create mode 100644 scripts/dtc/checks.c
 create mode 100644 scripts/dtc/data.c
 create mode 100644 scripts/dtc/dtc-lexer.l
 create mode 100644 scripts/dtc/dtc-lexer.lex.c_shipped
 create mode 100644 scripts/dtc/dtc-parser.tab.c_shipped
 create mode 100644 scripts/dtc/dtc-parser.tab.h_shipped
 create mode 100644 scripts/dtc/dtc-parser.y
 create mode 100644 scripts/dtc/dtc.c
 create mode 100644 scripts/dtc/dtc.h
 create mode 100644 scripts/dtc/fdtdump.c
 create mode 100644 scripts/dtc/fdtget.c
 create mode 100644 scripts/dtc/fdtput.c
 create mode 100644 scripts/dtc/flattree.c
 create mode 100644 scripts/dtc/fstree.c
 create mode 100644 scripts/dtc/libfdt/Makefile.libfdt
 create mode 100644 scripts/dtc/libfdt/fdt.c
 create mode 100644 scripts/dtc/libfdt/fdt.h
 create mode 100644 scripts/dtc/libfdt/fdt_empty_tree.c
 create mode 100644 scripts/dtc/libfdt/fdt_ro.c
 create mode 100644 scripts/dtc/libfdt/fdt_rw.c
 create mode 100644 scripts/dtc/libfdt/fdt_strerror.c
 create mode 100644 scripts/dtc/libfdt/fdt_sw.c
 create mode 100644 scripts/dtc/libfdt/fdt_wip.c
 create mode 100644 scripts/dtc/libfdt/libfdt.h
 create mode 100644 scripts/dtc/libfdt/libfdt_env.h
 create mode 100644 scripts/dtc/libfdt/libfdt_internal.h
 create mode 100644 scripts/dtc/livetree.c
 create mode 100644 scripts/dtc/modules.order
 create mode 100644 scripts/dtc/srcpos.c
 create mode 100644 scripts/dtc/srcpos.h
 create mode 100644 scripts/dtc/treesource.c
 create mode 100644 scripts/dtc/util.c
 create mode 100644 scripts/dtc/util.h
 create mode 100644 scripts/dtc/version_gen.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
