Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R71zb-0004Ou-E3
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 09:24:32 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1R71zZ-0001eI-CM
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 11:24:21 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1R71zZ-0007pl-AJ
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 11:24:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Sep 2011 11:24:08 +0200
Message-Id: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: patches for next
To: barebox@lists.infradead.org

The following patches introduce include/io.h to be able
to add some generic io accessors, that's what makes the diffstat
so big. Also, the memory bank handling we have on ARM is converted
to some generic infrastructure which makes it usable for other
architectures aswell.

Sascha Hauer (12):
      introduce io.h
      introduce asm-generic/io.h
      arm: use asm-generic/io.h
      Jean-christophe, more careful please
      add cpu native ordered io accessors
      cfi flash: use cpu native accessors
      ppc pcm030: remove puts in early init
      cfi flash: fix flash_make_cmd for big endian access
      rename include/mem_malloc.h to include/memory.h
      ARM mmu: find second level descriptors by walking the page table
      introduce generic memory bank handling
      ARM: switch to generic memory banks

 arch/arm/boards/a9m2410/a9m2410.c                 |    2 +-
 arch/arm/boards/a9m2440/a9m2410dev.c              |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                 |    2 +-
 arch/arm/boards/at91rm9200ek/init.c               |    2 +-
 arch/arm/boards/at91sam9260ek/init.c              |    2 +-
 arch/arm/boards/at91sam9261ek/init.c              |    2 +-
 arch/arm/boards/at91sam9263ek/init.c              |    2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c           |    2 +-
 arch/arm/boards/chumby_falconwing/falconwing.c    |    2 +-
 arch/arm/boards/edb93xx/edb93xx.c                 |    2 +-
 arch/arm/boards/edb93xx/flash_cfg.c               |    2 +-
 arch/arm/boards/edb93xx/pll_cfg.c                 |    2 +-
 arch/arm/boards/edb93xx/sdram_cfg.c               |    2 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    2 +-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c        |    2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    2 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    2 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c        |    2 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |    2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |    2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    2 +-
 arch/arm/boards/freescale-mx51-pdk/board.c        |    2 +-
 arch/arm/boards/freescale-mx53-loco/board.c       |    2 +-
 arch/arm/boards/guf-cupid/board.c                 |    2 +-
 arch/arm/boards/guf-cupid/lowlevel.c              |    2 +-
 arch/arm/boards/guf-neso/board.c                  |    2 +-
 arch/arm/boards/guf-neso/lowlevel.c               |    2 +-
 arch/arm/boards/imx21ads/imx21ads.c               |    2 +-
 arch/arm/boards/imx27ads/imx27ads.c               |    2 +-
 arch/arm/boards/karo-tx25/board.c                 |    2 +-
 arch/arm/boards/karo-tx25/lowlevel.c              |    2 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c             |    2 +-
 arch/arm/boards/karo-tx28/tx28.c                  |    2 +-
 arch/arm/boards/mini2440/mini2440.c               |    2 +-
 arch/arm/boards/mmccpu/init.c                     |    2 +-
 arch/arm/boards/nhk8815/setup.c                   |    2 +-
 arch/arm/boards/omap/board-beagle.c               |    2 +-
 arch/arm/boards/omap/board-omap3evm.c             |    2 +-
 arch/arm/boards/omap/board-sdp343x.c              |    2 +-
 arch/arm/boards/panda/board.c                     |    2 +-
 arch/arm/boards/panda/lowlevel.c                  |    2 +-
 arch/arm/boards/panda/mux.c                       |    2 +-
 arch/arm/boards/pcm037/pcm037.c                   |    2 +-
 arch/arm/boards/pcm038/lowlevel.c                 |    2 +-
 arch/arm/boards/pcm038/pcm038.c                   |    2 +-
 arch/arm/boards/pcm043/lowlevel.c                 |    2 +-
 arch/arm/boards/pcm043/pcm043.c                   |    2 +-
 arch/arm/boards/pcm049/board.c                    |    2 +-
 arch/arm/boards/pcm049/lowlevel.c                 |    2 +-
 arch/arm/boards/pcm049/mux.c                      |    2 +-
 arch/arm/boards/phycard-i.MX27/pca100.c           |    2 +-
 arch/arm/boards/pm9261/init.c                     |    2 +-
 arch/arm/boards/pm9263/init.c                     |    2 +-
 arch/arm/boards/pm9g45/init.c                     |    2 +-
 arch/arm/boards/scb9328/scb9328.c                 |    2 +-
 arch/arm/boards/usb-a926x/init.c                  |    2 +-
 arch/arm/cpu/cache-l2x0.c                         |    2 +-
 arch/arm/cpu/cpu.c                                |   13 --
 arch/arm/cpu/mmu.c                                |   62 +++---
 arch/arm/include/asm/armlinux.h                   |    3 -
 arch/arm/include/asm/io.h                         |   49 +-----
 arch/arm/include/asm/memory.h                     |   18 +-
 arch/arm/lib/arm.c                                |    2 +-
 arch/arm/lib/armlinux.c                           |   10 +-
 arch/arm/lib/bootz.c                              |   13 +-
 arch/arm/mach-at91/at91rm9200_time.c              |    2 +-
 arch/arm/mach-at91/at91sam926x_time.c             |    2 +-
 arch/arm/mach-at91/gpio.c                         |    2 +-
 arch/arm/mach-at91/include/mach/gpio.h            |    2 +-
 arch/arm/mach-at91/include/mach/io.h              |    2 +-
 arch/arm/mach-at91/sam9_smc.c                     |    2 +-
 arch/arm/mach-ep93xx/clocksource.c                |    2 +-
 arch/arm/mach-ep93xx/gpio.c                       |    2 +-
 arch/arm/mach-ep93xx/led.c                        |    2 +-
 arch/arm/mach-imx/boot.c                          |    2 +-
 arch/arm/mach-imx/clocksource.c                   |    2 +-
 arch/arm/mach-imx/gpio.c                          |    2 +-
 arch/arm/mach-imx/iim.c                           |    2 +-
 arch/arm/mach-imx/imx25.c                         |    2 +-
 arch/arm/mach-imx/imx35.c                         |    2 +-
 arch/arm/mach-imx/imx51.c                         |    2 +-
 arch/arm/mach-imx/imx53.c                         |    2 +-
 arch/arm/mach-imx/internal-nand-boot.c            |    2 +-
 arch/arm/mach-imx/iomux-v2.c                      |    2 +-
 arch/arm/mach-imx/iomux-v3.c                      |    2 +-
 arch/arm/mach-imx/nand.c                          |    2 +-
 arch/arm/mach-imx/speed-imx25.c                   |    2 +-
 arch/arm/mach-imx/speed-imx31.c                   |    2 +-
 arch/arm/mach-imx/speed-imx35.c                   |    2 +-
 arch/arm/mach-imx/speed-imx51.c                   |    2 +-
 arch/arm/mach-imx/speed-imx53.c                   |    2 +-
 arch/arm/mach-mxs/clocksource-imx23.c             |    2 +-
 arch/arm/mach-mxs/clocksource-imx28.c             |    2 +-
 arch/arm/mach-mxs/imx_lcd_clk.c                   |    2 +-
 arch/arm/mach-mxs/iomux-imx.c                     |    2 +-
 arch/arm/mach-mxs/reset-imx.c                     |    2 +-
 arch/arm/mach-mxs/speed-imx23.c                   |    2 +-
 arch/arm/mach-mxs/speed-imx28.c                   |    2 +-
 arch/arm/mach-mxs/usb.c                           |    2 +-
 arch/arm/mach-nomadik/reset.c                     |    2 +-
 arch/arm/mach-nomadik/timer.c                     |    2 +-
 arch/arm/mach-omap/devices-gpmc-nand.c            |    2 +-
 arch/arm/mach-omap/gpio.c                         |    2 +-
 arch/arm/mach-omap/gpmc.c                         |    2 +-
 arch/arm/mach-omap/include/mach/syslib.h          |    2 +-
 arch/arm/mach-omap/omap3_clock.c                  |    2 +-
 arch/arm/mach-omap/omap3_generic.c                |    2 +-
 arch/arm/mach-omap/omap4_clock.c                  |    2 +-
 arch/arm/mach-omap/omap4_generic.c                |    2 +-
 arch/arm/mach-omap/s32k_clksource.c               |    2 +-
 arch/arm/mach-omap/syslib.c                       |    2 +-
 arch/arm/mach-s3c24xx/generic.c                   |    2 +-
 arch/arm/mach-s3c24xx/gpio-s3c24x0.c              |    2 +-
 arch/arm/mach-versatile/core.c                    |    2 +-
 arch/arm/mach-versatile/include/mach/debug_ll.h   |    2 +-
 arch/blackfin/lib/board.c                         |    2 +-
 arch/mips/boards/dlink-dir-320/serial.c           |    2 +-
 arch/mips/boards/qemu-malta/serial.c              |    2 +-
 arch/mips/lib/csrc-r4k.c                          |    2 +-
 arch/mips/lib/memory.c                            |    2 +-
 arch/mips/mach-bcm47xx/include/mach/debug_ll.h    |    2 +-
 arch/mips/mach-bcm47xx/reset.c                    |    2 +-
 arch/mips/mach-malta/include/mach/debug_ll.h      |    2 +-
 arch/mips/mach-malta/reset.c                      |    2 +-
 arch/nios2/cpu/interrupts.c                       |    2 +-
 arch/nios2/lib/board.c                            |    2 +-
 arch/nios2/lib/clock.c                            |    2 +-
 arch/nios2/lib/early_printf.c                     |    2 +-
 arch/ppc/boards/pcm030/pcm030.c                   |    5 +-
 arch/ppc/include/asm/mc146818rtc.h                |    2 +-
 arch/ppc/lib/board.c                              |    2 +-
 arch/ppc/mach-mpc5xxx/interrupts.c                |    2 +-
 arch/ppc/mach-mpc5xxx/pci_mpc5200.c               |    2 +-
 arch/x86/boot/a20.c                               |    2 +-
 arch/x86/boot/prepare_uboot.c                     |    2 +-
 arch/x86/lib/memory.c                             |    2 +-
 arch/x86/mach-i386/generic.c                      |    2 +-
 arch/x86/mach-i386/pit_timer.c                    |    2 +-
 common/dlmalloc.c                                 |    2 +-
 common/memory.c                                   |   18 ++
 common/startup.c                                  |    2 +-
 drivers/base/resource.c                           |   17 +--
 drivers/i2c/busses/i2c-imx.c                      |    2 +-
 drivers/i2c/busses/i2c-omap.c                     |    2 +-
 drivers/mci/atmel_mci.c                           |    2 +-
 drivers/mci/imx-esdhc.c                           |    2 +-
 drivers/mci/imx.c                                 |    2 +-
 drivers/mci/mxs.c                                 |    2 +-
 drivers/mci/omap_hsmmc.c                          |    2 +-
 drivers/mci/s3c.c                                 |    2 +-
 drivers/mtd/nand/atmel_nand.c                     |    2 +-
 drivers/mtd/nand/diskonchip.c                     |    2 +-
 drivers/mtd/nand/nand_base.c                      |    2 +-
 drivers/mtd/nand/nand_hwecc.c                     |    2 +-
 drivers/mtd/nand/nand_hwecc_syndrome.c            |    2 +-
 drivers/mtd/nand/nand_imx.c                       |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c                 |    2 +-
 drivers/mtd/nand/nand_s3c2410.c                   |    2 +-
 drivers/mtd/nand/nand_swecc.c                     |    2 +-
 drivers/mtd/nand/nand_write.c                     |    2 +-
 drivers/mtd/nand/nomadik_nand.c                   |    2 +-
 drivers/net/altera_tse.c                          |    2 +-
 drivers/net/cs8900.c                              |    2 +-
 drivers/net/dm9000.c                              |    2 +-
 drivers/net/ep93xx.c                              |    2 +-
 drivers/net/fec_imx.c                             |    2 +-
 drivers/net/macb.c                                |    2 +-
 drivers/net/netx_eth.c                            |    2 +-
 drivers/net/smc91111.c                            |    2 +-
 drivers/net/smc911x.c                             |    2 +-
 drivers/nor/cfi_flash.c                           |   26 +--
 drivers/nor/cfi_flash.h                           |   14 +-
 drivers/serial/amba-pl011.c                       |    2 +-
 drivers/serial/atmel.c                            |    2 +-
 drivers/serial/serial_altera.c                    |    2 +-
 drivers/serial/serial_altera_jtag.c               |    2 +-
 drivers/serial/serial_at91rm9200.c                |    2 +-
 drivers/serial/serial_blackfin.c                  |    2 +-
 drivers/serial/serial_imx.c                       |    2 +-
 drivers/serial/serial_netx.c                      |    2 +-
 drivers/serial/serial_ns16550.c                   |    2 +-
 drivers/serial/serial_pl010.c                     |    2 +-
 drivers/serial/serial_s3c24x0.c                   |    2 +-
 drivers/serial/stm-serial.c                       |    2 +-
 drivers/spi/altera_spi.c                          |    2 +-
 drivers/spi/atmel_spi.c                           |    2 +-
 drivers/spi/imx_spi.c                             |    2 +-
 drivers/usb/gadget/fsl_udc.c                      |    2 +-
 drivers/usb/host/ehci-hcd.c                       |    2 +-
 drivers/usb/host/ehci-omap.c                      |    2 +-
 drivers/usb/host/ohci-at91.c                      |    2 +-
 drivers/usb/host/ohci-hcd.c                       |    2 +-
 drivers/usb/otg/ulpi.c                            |    2 +-
 drivers/video/imx-ipu-fb.c                        |    2 +-
 drivers/video/imx.c                               |    2 +-
 drivers/video/s3c.c                               |    2 +-
 drivers/video/stm.c                               |    2 +-
 include/asm-generic/io.h                          |  222 +++++++++++++++++++++
 include/io.h                                      |   23 ++
 include/mem_malloc.h                              |   10 -
 include/memory.h                                  |   25 +++
 201 files changed, 540 insertions(+), 358 deletions(-)
 create mode 100644 include/asm-generic/io.h
 create mode 100644 include/io.h
 delete mode 100644 include/mem_malloc.h
 create mode 100644 include/memory.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
