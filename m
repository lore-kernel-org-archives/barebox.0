Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLUU8-0005Oq-8o
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 08:48:55 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VLUTm-0001X6-56
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 10:48:22 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VLUTm-0007yN-3d
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 10:48:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Sep 2013 10:48:09 +0200
Message-Id: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Altera SoCFPGA support
To: barebox@lists.infradead.org

The following adds Altera SoCFPGA support to barebox. The port has
been tested on two boards, The Terasic SoCkit and and EBV SoCrates.

With the patches previously merged Console, SD/MMC and network is supported
which is enough for booting and developing.

The SoCFPGA supports loading of the initial image into SRAM. The usable
size in the SRAM is less than 64KiB, so the SoCFPGA has a two staged
bootstrap like the OMAP/AM33xx boards. The good thing is that only two
configs are required, one for the 1st stage loader (I called it xload
like the OMAPs do) and one for the regular build. Both configs support
both boards, so there are no board config files but only socfpga_xload_defconfig
and socfpga_defconfig.

The port should be relatively clean apart from the SDRAM setup. The SDRAM
setup is a huge blob which is controlled by defines which directly fall
out of the Altera Quartus/Qsys toolchain. As users are used to the Altera
toolchain I used the files that Quartus generates for barebox aswell, so
supporting a new board should be a straight forward task.

Sascha

----------------------------------------------------------------
Sascha Hauer (11):
      ARM: invalidate caches thoroughly
      clk: of: introduce of_clk_src_simple_get
      of: partition: Check for valid partition name
      serial: ns16550: Add compatible entry for snps,dw-apb-uart
      clk: Add Altera SoCFPGA clk support
      scripts: Add Altera SoCFPGA mkimage support
      ARM: Add Altera SoCFPGA support
      ARM: socfpga: Add FPGA programming command
      ARM: SoCFPGA: Add Terasic SoCkit board support
      ARM: SoCFPGA: Add EBV SoCrates board support
      ARM: Altera SoCFPGA: Add defconfig files

 arch/arm/Kconfig                                   |   12 +
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/Makefile                           |    2 +
 arch/arm/boards/ebv-socrates/Makefile              |    2 +
 arch/arm/boards/ebv-socrates/board.c               |   37 +
 arch/arm/boards/ebv-socrates/config.h              |    1 +
 arch/arm/boards/ebv-socrates/lowlevel.c            |   99 +
 arch/arm/boards/ebv-socrates/pinmux_config.c       |  210 +
 arch/arm/boards/ebv-socrates/pll_config.h          |   97 +
 arch/arm/boards/ebv-socrates/sdram_config.h        |   73 +
 arch/arm/boards/ebv-socrates/sequencer_auto.h      |  174 +
 .../boards/ebv-socrates/sequencer_auto_ac_init.c   |   40 +
 .../boards/ebv-socrates/sequencer_auto_inst_init.c |  132 +
 arch/arm/boards/ebv-socrates/sequencer_defines.h   |  118 +
 arch/arm/boards/terasic-sockit/Makefile            |    2 +
 arch/arm/boards/terasic-sockit/board.c             |   37 +
 arch/arm/boards/terasic-sockit/config.h            |    1 +
 arch/arm/boards/terasic-sockit/lowlevel.c          |   99 +
 arch/arm/boards/terasic-sockit/pinmux_config.c     |  211 +
 arch/arm/boards/terasic-sockit/pll_config.h        |   98 +
 arch/arm/boards/terasic-sockit/sdram_config.h      |   69 +
 arch/arm/boards/terasic-sockit/sequencer_auto.h    |  173 +
 .../boards/terasic-sockit/sequencer_auto_ac_init.c |   40 +
 .../terasic-sockit/sequencer_auto_inst_init.c      |  134 +
 arch/arm/boards/terasic-sockit/sequencer_defines.h |  118 +
 arch/arm/configs/socfpga-xload_defconfig           |   30 +
 arch/arm/configs/socfpga_defconfig                 |   89 +
 arch/arm/cpu/Makefile                              |    6 +-
 arch/arm/cpu/start.c                               |    4 +-
 arch/arm/cpu/uncompress.c                          |    2 +
 arch/arm/dts/Makefile                              |    4 +
 arch/arm/dts/socfpga.dtsi                          |  648 +++
 arch/arm/dts/socfpga_cyclone5.dtsi                 |   78 +
 arch/arm/dts/socfpga_cyclone5_sockit.dts           |  121 +
 arch/arm/dts/socfpga_cyclone5_socrates.dts         |   64 +
 arch/arm/include/asm/cache.h                       |   10 -
 arch/arm/mach-socfpga/Kconfig                      |   24 +
 arch/arm/mach-socfpga/Makefile                     |    5 +
 arch/arm/mach-socfpga/bootsource.c                 |   57 +
 arch/arm/mach-socfpga/clock-manager.c              |  285 ++
 arch/arm/mach-socfpga/fpga.c                       |  422 ++
 arch/arm/mach-socfpga/freeze-controller.c          |  218 +
 arch/arm/mach-socfpga/generic.c                    |  116 +
 arch/arm/mach-socfpga/include/mach/clkdev.h        |    7 +
 arch/arm/mach-socfpga/include/mach/clock-manager.h |  188 +
 arch/arm/mach-socfpga/include/mach/debug_ll.h      |   55 +
 .../mach-socfpga/include/mach/freeze-controller.h  |   85 +
 arch/arm/mach-socfpga/include/mach/generic.h       |   16 +
 arch/arm/mach-socfpga/include/mach/nic301.h        |   34 +
 arch/arm/mach-socfpga/include/mach/pll_config.h    |   53 +
 arch/arm/mach-socfpga/include/mach/reset-manager.h |   93 +
 arch/arm/mach-socfpga/include/mach/scan-manager.h  |  131 +
 arch/arm/mach-socfpga/include/mach/sdram.h         |  399 ++
 arch/arm/mach-socfpga/include/mach/sdram_config.h  |  161 +
 arch/arm/mach-socfpga/include/mach/sequencer.c     | 4324 ++++++++++++++++++++
 arch/arm/mach-socfpga/include/mach/sequencer.h     |  448 ++
 arch/arm/mach-socfpga/include/mach/socfpga-regs.h  |   20 +
 .../arm/mach-socfpga/include/mach/system-manager.h |   68 +
 arch/arm/mach-socfpga/init.c                       |   58 +
 arch/arm/mach-socfpga/iocsr-config-cyclone5.c      |  649 +++
 arch/arm/mach-socfpga/nic301.c                     |   40 +
 arch/arm/mach-socfpga/reset-manager.c              |   51 +
 arch/arm/mach-socfpga/scan-manager.c               |  220 +
 arch/arm/mach-socfpga/system-manager.c             |   33 +
 arch/arm/mach-socfpga/xload.c                      |  125 +
 drivers/clk/Kconfig                                |    5 +
 drivers/clk/Makefile                               |    1 +
 drivers/clk/clk.c                                  |    7 +
 drivers/clk/socfpga.c                              |  412 ++
 drivers/of/partition.c                             |    3 +
 drivers/serial/serial_ns16550.c                    |    2 +
 images/.gitignore                                  |    1 +
 images/Makefile                                    |    3 +-
 images/Makefile.socfpga                            |   34 +
 include/linux/clk.h                                |    1 +
 scripts/.gitignore                                 |    1 +
 scripts/Makefile                                   |    1 +
 scripts/socfpga_mkimage.c                          |  287 ++
 78 files changed, 12164 insertions(+), 15 deletions(-)
 create mode 100644 arch/arm/boards/ebv-socrates/Makefile
 create mode 100644 arch/arm/boards/ebv-socrates/board.c
 create mode 100644 arch/arm/boards/ebv-socrates/config.h
 create mode 100644 arch/arm/boards/ebv-socrates/lowlevel.c
 create mode 100644 arch/arm/boards/ebv-socrates/pinmux_config.c
 create mode 100644 arch/arm/boards/ebv-socrates/pll_config.h
 create mode 100644 arch/arm/boards/ebv-socrates/sdram_config.h
 create mode 100644 arch/arm/boards/ebv-socrates/sequencer_auto.h
 create mode 100644 arch/arm/boards/ebv-socrates/sequencer_auto_ac_init.c
 create mode 100644 arch/arm/boards/ebv-socrates/sequencer_auto_inst_init.c
 create mode 100644 arch/arm/boards/ebv-socrates/sequencer_defines.h
 create mode 100644 arch/arm/boards/terasic-sockit/Makefile
 create mode 100644 arch/arm/boards/terasic-sockit/board.c
 create mode 100644 arch/arm/boards/terasic-sockit/config.h
 create mode 100644 arch/arm/boards/terasic-sockit/lowlevel.c
 create mode 100644 arch/arm/boards/terasic-sockit/pinmux_config.c
 create mode 100644 arch/arm/boards/terasic-sockit/pll_config.h
 create mode 100644 arch/arm/boards/terasic-sockit/sdram_config.h
 create mode 100644 arch/arm/boards/terasic-sockit/sequencer_auto.h
 create mode 100644 arch/arm/boards/terasic-sockit/sequencer_auto_ac_init.c
 create mode 100644 arch/arm/boards/terasic-sockit/sequencer_auto_inst_init.c
 create mode 100644 arch/arm/boards/terasic-sockit/sequencer_defines.h
 create mode 100644 arch/arm/configs/socfpga-xload_defconfig
 create mode 100644 arch/arm/configs/socfpga_defconfig
 create mode 100644 arch/arm/dts/socfpga.dtsi
 create mode 100644 arch/arm/dts/socfpga_cyclone5.dtsi
 create mode 100644 arch/arm/dts/socfpga_cyclone5_sockit.dts
 create mode 100644 arch/arm/dts/socfpga_cyclone5_socrates.dts
 create mode 100644 arch/arm/mach-socfpga/Kconfig
 create mode 100644 arch/arm/mach-socfpga/Makefile
 create mode 100644 arch/arm/mach-socfpga/bootsource.c
 create mode 100644 arch/arm/mach-socfpga/clock-manager.c
 create mode 100644 arch/arm/mach-socfpga/fpga.c
 create mode 100644 arch/arm/mach-socfpga/freeze-controller.c
 create mode 100644 arch/arm/mach-socfpga/generic.c
 create mode 100644 arch/arm/mach-socfpga/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/clock-manager.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/freeze-controller.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/generic.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/nic301.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/pll_config.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/reset-manager.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/scan-manager.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/sdram.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/sdram_config.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/sequencer.c
 create mode 100644 arch/arm/mach-socfpga/include/mach/sequencer.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/socfpga-regs.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/system-manager.h
 create mode 100644 arch/arm/mach-socfpga/init.c
 create mode 100644 arch/arm/mach-socfpga/iocsr-config-cyclone5.c
 create mode 100644 arch/arm/mach-socfpga/nic301.c
 create mode 100644 arch/arm/mach-socfpga/reset-manager.c
 create mode 100644 arch/arm/mach-socfpga/scan-manager.c
 create mode 100644 arch/arm/mach-socfpga/system-manager.c
 create mode 100644 arch/arm/mach-socfpga/xload.c
 create mode 100644 drivers/clk/socfpga.c
 create mode 100644 images/Makefile.socfpga
 create mode 100644 scripts/socfpga_mkimage.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
