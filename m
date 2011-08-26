Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QwxZv-0008K1-HI
	for barebox@lists.infradead.org; Fri, 26 Aug 2011 14:40:18 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QwxZt-0008UO-Gt
	for barebox@lists.infradead.org; Fri, 26 Aug 2011 16:40:13 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QwxZt-000212-FI
	for barebox@lists.infradead.org; Fri, 26 Aug 2011 16:40:13 +0200
Date: Fri, 26 Aug 2011 16:40:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110826144013.GG31404@pengutronix.de>
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2011.09.0 - holiday release
To: barebox@lists.infradead.org

I just released v2011.09.0. It's a little early, but I won't be available
for the next two weeks and only partly available the week after.
Provided I am not eaten by sharks I'll be back online in the middle of
september.

Have fun
 Sascha

Antony Pavlov (5):
      debug_ll.h: add PUTS_LL() function
      startup.c: make DEBUG_LL output more useful
      DRIVER_SERIAL_LINUX_CONSOLE: fix misprint
      Add option DEBUG_LL to common/Kconfig
      remove unused U-Boot header file include/ioports.h

Fabio Estevam (1):
      ARM: mx53loco: Fix DD3 initialization

Franck Jullien (4):
      nios2/generic.c: Add resources for altera TSE
      nios2/altera_tse: Switch to resources
      nios2/serial_altera: Switch to resources
      nios2/altera_serial_jtag: Switch to resources

Jean-Christophe PLAGNIOL-VILLARD (68):
      device: introduce resource structure to simplify resource declaration
      at91: switch to all resource declaration to "struct resource"
      at91/serial: switch to "struct resource"
      macb: switch to "struct resource"
      atmel_mci: switch to "struct resource"
      atmel_nand: switch to "struct resource"
      dm9200: use "struct resource" instead of platform_data
      nomadik: switch to all resource declaration to "struct resource"
      nomadik_nand: use "struct resource" instead of platform_data
      amba-pl011: switch to "struct resource"
      mem: replace DEVFS_RDWR by IORESOURCE_MEM_WRITEABLE
      at91: add missing IORESOURCE_MEM flags to resources
      atmel/drivers: switch to dev_request_mem_region
      dm9000: switch to dev_request_mem_region
      nomadik: add missing IORESOURCE_MEM flags to resources
      nomadik/nand: switch to dev_request_mem_region
      amba-pl011: fix missing switch to "struct resource"
      amba-pl011: switch to dev_request_mem_region
      armlinux: mem tag switch to "struct resource"
      drivers/bus: move to drivers/base
      drivers: move resource generic management to driver/base/resource.c
      resource: introduce add_generic_device to register simple device
      at91: switch to add_generic_device
      imx/devices: switch to add_generic_device
      resource: introduce add_cfi_device to register simple cfi device
      versatile: switch to add_generic_device
      nomadik: switch to add_generic_device
      mci: switch to "struct resource"
      ata/bios: convert to struct resource
      i2c: convert to struct resource
      nand: convert to struct resource
      eukrea_cpuimx35: fix warning: 'usbotg_dev' defined but not used
      generic_memmap_ro/rw: switch to resource
      devinfo: switch to resource
      dm9000: replace DM9000_WIDTH_8/16/32 by IORESOURCE_MEM_8/16/32BIT
      dm9000: introduce add_dm9000_device to register dm9000 device
      resource: introduce add_usb_ehci_device to register echi device
      omap: switch to add_generic_device
      fb: switch to "struct resource"
      cfi_flash: convert missing map_base
      fsl_udc: switch to resource
      pcm030: switch to resources
      ipe337: switch to resources
      s3c/boards: switch to resources
      ns16550: if not specific f_caps defined use default stdin, stdout, st=
derr
      edb93xx: switch to resource
      netx: switch to resource
      fs: switch to resource
      ata: switch to resource
      sandbox: switch to resource
      imx: switch remaing board to resource
      mci-core: switch to resource
      nios2: remove dead code in generic board
      ns16550: switch to resource
      driver: remove map_base
      arm: introduce arm_add_mem_device to register dram device
      init: introduce mem, mmu and postmmu initcall
      serial_ns16550: drop the non working check
      at91: swtich to clkdev
      arm_dcc: fix missing switch to resource
      at91sam9261ek: fix missing ecc type
      nomadik: switch to static allocation clkdev
      versatilek: switch to static allocation clkdev
      clkdev: factorize macro
      nomadik: fix static allocation clkdev
      versatile: fix static allocation clkdev
      disk_drive: fix x86 support
      x86/generic_pc: fix missing switch to resource

Juergen Beisert (1):
      phyCORE-i.MX27: Keep frequency multiplier enabled to be able to do a =
warmstart

Marc Kleine-Budde (3):
      mx51: rename clock-imx51.h -> clock-imx51_53.h
      ARM: add support for the i.MX53
      arm: add support for the i.MX53 loco board

Paul Fertser (1):
      iomux-mx25: fix MDIO pin configuration

Sascha Hauer (94):
      register_device: Add IORESOURCE_MEM flag
      device: Add a dev_request_mem_region function
      add a add_mem_device function
      mem_read/write: use resources
      nand i.MX: convert to struct resource
      video i.MX: convert to struct resource
      serial i.MX: convert to struct resource
      i2c i.MX: convert to struct resource
      mci i.MX: convert to struct resource
      net i.MX fec: convert to struct resource
      mci i.MX esdhc: convert to struct resource
      spi i.MX: convert to struct resource
      video i.MX ipu: convert to struct resource
      i.MX devices: convert to struct resource
      cfi: convert to struct resource
      MCI imx-esdhc: Fix multiblock transfers on i.MX53
      MCI imx-esdhc: remove unnecessary large delay
      Merge branch 'resource' of git://uboot.jcrosoft.org/barebox into next
      ARM dma_alloc_coherent: Fix alignment for !MMU case
      net i.MX fec: make multi instance safe
      net i.MX fec: remove unnecessary alignment
      net i.MX fec: embed ethernet device into priv
      net i.MX fec: rename driver struct to be generic
      serial netx: get rid of map_base
      serial s3c: get rid of map_base
      serial pl010: get rid of map_base
      serial stm: get rid of map_base
      serial mpc5xxx: get rid of map_base
      smc911x: use dev_* instead of printf
      smc911x: switch to use resources
      smc911x: embed eth_device into priv
      ARM pcm037: Fix wrong sdram base
      smc91111: switch to resources
      fec_mpc5200: switch to resources
      ARM i.MX cupid: use device registration helpers
      ARM i.MX pca100: use device registration helpers
      ARM i.MX scb9328: create uart registration helpers and use them
      ARM i.MX35 3stack: use device registration helpers
      ARM i.MX21ads : use device registration helpers
      ARM i.MX pcm037: use device registration helpers
      add a ns16550 registration helper and use it
      net: remove unused fields from struct eth_device
      ARM i.MX: Add missing cpu_is_mx53()
      fix typo
      mci: do not use unitialized resource
      Merge branch 'pu' into next
      ARM i.MX IIM: Add a iim read function
      net: Add a possibility for boards to give network devices a MAC addre=
ss
      ARM i.MX: rework IIM MAC address setting
      ARM i.MX51 babbage: set fec ethernet address from IIM
      ARM i.MX25 tx25: Add IIM support for MAC address
      ARM i.MX: IIM rework
      ARM i.MX IIM: add support for more SoCs
      ARM i.MX IIM: Make explicit sensing the default
      ARM i.MX25 IIM: switch IIM support to use resources
      ARM i.MX35: Add IIM support
      ARM i.MX31: Add IIM support
      ARM i.MX51: Add IIM support
      ARM i.MX IIM: switch to resources
      ARM i.MX27: Add IIM support
      Merge branches 'pu-ethaddr', 'pu-fec', 'pu-imx-iim', 'pu-resources' a=
nd 'pu-resources1' into next
      remove unused DECLARE_GLOBAL_DATA_PTR
      remove unused global_data.h
      Merge branch 'resource' of git://uboot.jcrosoft.org/barebox into next
      ARM cache l2x0: depend on MMU
      ARM: move armlinux_add_dram to location which is always compiled
      ARM l2x0: make init function static inline if l2 is not available
      ARM: pass size to dma_free_coherent
      ARM boards: move sdram setup before mmu setup
      ARM: rework MMU support
      ARM boards: remove now unnecessary mmu calls
      ARM mmu: Fix arm_create_pte
      remove now unnecessary HAVE_MMU from Kconfig
      memcpy command: allow to interrupt
      Add 'time' command to measure execution time of a command
      Merge branch 'pu-remove-gd_t' into next
      ARM scb9328: Add missing env
      ARM cupid: update defconfig
      ARM babbage: update defconfig
      ARM cupid: update defconfig
      ARM pca100: update defconfig
      ARM pcm037: update defconfig
      ARM pcm038: update defconfig
      ARM pcm043: update defconfig
      ARM scb9328: update defconfig
      Merge branch 'pu-mmu' into next
      Merge branch 'pu-time' into next
      Merge branch 'pu-defconfig' into next
      Merge branch 'next'
      drivers/base: initialize active list
      net fec_mpc5200: fix lineendings
      mci mxs: fix line endings
      ARM i.MX51: Fix gpio1 base address
      Release v2011.09.0

Teresa G=E1mez (2):
      ARM pcm043: Check silicon revision to set up cpu freq correct
      ARM pcm043: New RAM timings

 Documentation/boards.dox                           |    1 +
 Makefile                                           |    2 +-
 arch/arm/Kconfig                                   |    1 +
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/a9m2410/a9m2410.c                  |   83 +-
 arch/arm/boards/a9m2440/a9m2440.c                  |   70 +-
 arch/arm/boards/at91rm9200ek/init.c                |   18 +-
 arch/arm/boards/at91sam9260ek/init.c               |    9 +-
 arch/arm/boards/at91sam9261ek/init.c               |   24 +-
 arch/arm/boards/at91sam9263ek/init.c               |   18 +-
 arch/arm/boards/at91sam9m10g45ek/init.c            |    8 +-
 arch/arm/boards/chumby_falconwing/falconwing.c     |   79 +--
 arch/arm/boards/edb93xx/edb93xx.c                  |  119 +--
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   56 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |  107 +--
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |   59 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |   41 +-
 arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S    |  110 +-
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |   34 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |   63 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   49 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |   38 +-
 arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S |  110 +-
 arch/arm/boards/freescale-mx53-loco/Makefile       |    3 +
 arch/arm/boards/freescale-mx53-loco/board.c        |  129 +++
 .../freescale-mx53-loco/config.h}                  |   20 +-
 arch/arm/boards/freescale-mx53-loco/env/config     |   51 +
 arch/arm/boards/freescale-mx53-loco/flash_header.c |  101 ++
 .../arm/boards/freescale-mx53-loco/lowlevel_init.S |  172 +++
 arch/arm/boards/freescale-mx53-loco/mx53-pdk.dox   |    4 +
 arch/arm/boards/guf-cupid/board.c                  |   81 +--
 arch/arm/boards/guf-neso/board.c                   |   46 +-
 arch/arm/boards/imx21ads/imx21ads.c                |   42 +-
 arch/arm/boards/imx27ads/imx27ads.c                |   34 +-
 arch/arm/boards/karo-tx25/board.c                  |   72 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c              |   39 +-
 arch/arm/boards/karo-tx28/tx28.c                   |   33 +-
 arch/arm/boards/mini2440/mini2440.c                |   76 +-
 arch/arm/boards/mmccpu/init.c                      |   18 +-
 arch/arm/boards/netx/netx.c                        |   57 +-
 arch/arm/boards/nhk8815/setup.c                    |   39 +-
 arch/arm/boards/omap/board-beagle.c                |   78 +-
 arch/arm/boards/omap/board-omap3evm.c              |   55 +-
 arch/arm/boards/omap/board-sdp343x.c               |   57 +-
 arch/arm/boards/panda/board.c                      |   72 +-
 arch/arm/boards/pcm037/pcm037.c                    |  148 +--
 arch/arm/boards/pcm038/pcm038.c                    |   70 +-
 arch/arm/boards/pcm038/pll.h                       |    2 +
 arch/arm/boards/pcm043/lowlevel.c                  |   15 +-
 arch/arm/boards/pcm043/pcm043.c                    |   56 +-
 arch/arm/boards/pcm049/board.c                     |   80 +--
 arch/arm/boards/phycard-i.MX27/pca100.c            |   61 +-
 arch/arm/boards/pm9261/init.c                      |   30 +-
 arch/arm/boards/pm9263/init.c                      |   18 +-
 arch/arm/boards/pm9g45/init.c                      |    9 +-
 arch/arm/boards/scb9328/env/config                 |   56 +
 arch/arm/boards/scb9328/scb9328.c                  |   58 +-
 arch/arm/boards/versatile/versatilepb.c            |   27 +-
 arch/arm/configs/cupid_defconfig                   |    6 +-
 arch/arm/configs/freescale_mx51_babbage_defconfig  |    9 +-
 arch/arm/configs/freescale_mx53_loco_defconfig     |   51 +
 arch/arm/configs/neso_defconfig                    |    9 +-
 arch/arm/configs/pca100_defconfig                  |    6 +-
 arch/arm/configs/pcm037_defconfig                  |    5 +
 arch/arm/configs/pcm038_defconfig                  |    7 +-
 arch/arm/configs/pcm043_defconfig                  |    1 +
 arch/arm/configs/scb9328_defconfig                 |    4 +-
 arch/arm/cpu/Kconfig                               |    2 +-
 arch/arm/cpu/cpu.c                                 |   14 +
 arch/arm/cpu/mmu.c                                 |  196 +++-
 arch/arm/include/asm/armlinux.h                    |   10 +-
 arch/arm/include/asm/memory.h                      |   24 +-
 arch/arm/include/asm/mmu.h                         |   30 +-
 arch/arm/lib/armlinux.c                            |   24 +-
 arch/arm/lib/bootm.c                               |    1 -
 arch/arm/mach-at91/at91rm9200.c                    |   11 +
 arch/arm/mach-at91/at91rm9200_devices.c            |   96 +--
 arch/arm/mach-at91/at91sam9260.c                   |   13 +
 arch/arm/mach-at91/at91sam9260_devices.c           |  135 +--
 arch/arm/mach-at91/at91sam9261.c                   |   10 +
 arch/arm/mach-at91/at91sam9261_devices.c           |   90 +--
 arch/arm/mach-at91/at91sam9263.c                   |   17 +
 arch/arm/mach-at91/at91sam9263_devices.c           |  116 +--
 arch/arm/mach-at91/at91sam9g45.c                   |   36 +-
 arch/arm/mach-at91/at91sam9g45_devices.c           |  132 +--
 arch/arm/mach-at91/clock.c                         |   70 +-
 arch/arm/mach-at91/clock.h                         |    7 +-
 arch/arm/mach-at91/generic.h                       |    2 -
 arch/arm/mach-at91/include/mach/clkdev.h           |    7 +
 arch/arm/mach-imx/Kconfig                          |   60 +-
 arch/arm/mach-imx/Makefile                         |    1 +
 arch/arm/mach-imx/devices.c                        |   16 +-
 arch/arm/mach-imx/iim.c                            |  131 ++-
 arch/arm/mach-imx/imx25.c                          |   39 +-
 arch/arm/mach-imx/imx27.c                          |   10 +
 arch/arm/mach-imx/imx31.c                          |   11 +
 arch/arm/mach-imx/imx35.c                          |   10 +
 arch/arm/mach-imx/imx51.c                          |   12 +-
 .../asm/global_data.h =3D> arm/mach-imx/imx53.c}     |   37 +-
 arch/arm/mach-imx/include/mach/clock-imx51.h       |  696 -----------
 arch/arm/mach-imx/include/mach/clock-imx51_53.h    |  623 ++++++++++
 arch/arm/mach-imx/include/mach/devices-imx1.h      |   11 +
 arch/arm/mach-imx/include/mach/devices-imx53.h     |   58 +
 arch/arm/mach-imx/include/mach/generic.h           |    6 +
 arch/arm/mach-imx/include/mach/iim.h               |   38 +-
 arch/arm/mach-imx/include/mach/imx-flash-header.h  |   52 +
 arch/arm/mach-imx/include/mach/imx-regs.h          |    4 +-
 arch/arm/mach-imx/include/mach/imx27-regs.h        |    1 +
 arch/arm/mach-imx/include/mach/imx53-regs.h        |  139 +++
 arch/arm/mach-imx/include/mach/iomux-mx25.h        |    2 +-
 arch/arm/mach-imx/include/mach/iomux-mx53.h        | 1203 ++++++++++++++++=
++++
 arch/arm/mach-imx/speed-imx51.c                    |   60 +-
 arch/arm/mach-imx/speed-imx53.c                    |  204 ++++
 arch/arm/mach-mxs/Kconfig                          |    2 -
 arch/arm/mach-netx/netx-cm.c                       |    1 -
 arch/arm/mach-nomadik/8815.c                       |   49 +-
 arch/arm/mach-nomadik/include/mach/nand.h          |    3 -
 arch/arm/mach-omap/Kconfig                         |    2 -
 arch/arm/mach-omap/Makefile                        |    2 +-
 arch/arm/mach-omap/devices-gpmc-nand.c             |   15 +-
 arch/arm/mach-omap/include/mach/syslib.h           |    4 -
 arch/arm/mach-omap/omap-uart.c                     |   36 -
 arch/arm/mach-versatile/core.c                     |   77 +-
 arch/blackfin/boards/ipe337/ipe337.c               |   45 +-
 arch/nios2/boards/generic/generic.c                |   64 +-
 arch/ppc/boards/pcm030/pcm030.c                    |   55 +-
 arch/ppc/include/asm/global_data.h                 |  140 ---
 arch/ppc/lib/ppclinux.c                            |    1 -
 arch/sandbox/board/hostfile.c                      |   14 +-
 arch/sandbox/mach-sandbox/include/mach/hostfile.h  |    2 +-
 arch/sandbox/os/common.c                           |    4 +-
 arch/x86/boards/x86_generic/generic_pc.c           |   44 +-
 commands/Kconfig                                   |   10 +
 commands/Makefile                                  |    1 +
 commands/loads.c                                   |    2 -
 commands/mem.c                                     |   35 +-
 commands/time.c                                    |   57 +
 common/Kconfig                                     |   14 +-
 common/startup.c                                   |   22 +-
 drivers/Makefile                                   |    1 +
 drivers/ata/bios.c                                 |    2 +-
 drivers/ata/disk_drive.c                           |    8 +-
 drivers/base/Makefile                              |    3 +
 {lib =3D> drivers/base}/driver.c                     |   40 +-
 lib/bus.c =3D> drivers/base/platform.c               |    0
 drivers/base/resource.c                            |  135 +++
 drivers/i2c/busses/i2c-imx.c                       |   34 +-
 drivers/i2c/busses/i2c-omap.c                      |    3 +-
 drivers/mci/Kconfig                                |    2 +-
 drivers/mci/atmel_mci.c                            |    2 +-
 drivers/mci/imx-esdhc.c                            |   29 +-
 drivers/mci/imx.c                                  |    2 +-
 drivers/mci/mci-core.c                             |   11 +-
 drivers/mci/mxs.c                                  |   10 +-
 drivers/mci/omap_hsmmc.c                           |    2 +-
 drivers/mci/s3c.c                                  |  105 +-
 drivers/mtd/nand/atmel_nand.c                      |    2 +-
 drivers/mtd/nand/nand_imx.c                        |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |   10 +-
 drivers/mtd/nand/nand_s3c2410.c                    |    4 +-
 drivers/mtd/nand/nomadik_nand.c                    |    7 +-
 drivers/net/altera_tse.c                           |   63 +-
 drivers/net/altera_tse.h                           |   15 +-
 drivers/net/cs8900.c                               |    2 +-
 drivers/net/dm9000.c                               |   25 +-
 drivers/net/fec_imx.c                              |   70 +-
 drivers/net/fec_imx.h                              |    1 +
 drivers/net/fec_mpc5200.c                          |   18 +-
 drivers/net/macb.c                                 |    4 +-
 drivers/net/smc91111.c                             |    2 +-
 drivers/net/smc911x.c                              |   42 +-
 drivers/nor/cfi_flash.c                            |   38 +-
 drivers/serial/Kconfig                             |    2 +-
 drivers/serial/Makefile                            |    2 +-
 drivers/serial/amba-pl011.c                        |   32 +-
 drivers/serial/arm_dcc.c                           |    1 -
 drivers/serial/atmel.c                             |   29 +-
 drivers/serial/serial_altera.c                     |   31 +-
 drivers/serial/serial_altera_jtag.c                |   27 +-
 drivers/serial/serial_imx.c                        |    5 +-
 drivers/serial/serial_mpc5xxx.c                    |   11 +-
 drivers/serial/serial_netx.c                       |   37 +-
 drivers/serial/serial_ns16550.c                    |  130 ++-
 drivers/serial/serial_pl010.c                      |   11 +-
 drivers/serial/serial_s3c24x0.c                    |   31 +-
 drivers/serial/stm-serial.c                        |   94 +-
 drivers/spi/Kconfig                                |    2 +-
 drivers/spi/imx_spi.c                              |    4 +-
 drivers/usb/gadget/fsl_udc.c                       |    4 +-
 drivers/usb/host/ehci-hcd.c                        |   22 +-
 drivers/video/fb.c                                 |   16 +-
 drivers/video/imx-ipu-fb.c                         |    2 +-
 drivers/video/imx.c                                |    2 +-
 drivers/video/s3c.c                                |   16 +-
 drivers/video/stm.c                                |    2 +-
 fs/devfs.c                                         |    4 +-
 fs/fs.c                                            |   13 +-
 include/asm-generic/barebox.lds.h                  |    7 +-
 include/common.h                                   |    1 +
 include/debug_ll.h                                 |   13 +
 include/dm9000.h                                   |    7 -
 include/driver.h                                   |   91 ++-
 include/init.h                                     |   11 +-
 include/ioports.h                                  |   65 --
 include/linux/clkdev.h                             |   19 +
 include/linux/ioport.h                             |  115 ++
 include/net.h                                      |    8 +-
 include/ns16550.h                                  |    2 +
 lib/Makefile                                       |    2 -
 net/eth.c                                          |   59 +-
 210 files changed, 5546 insertions(+), 4353 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx53-loco/Makefile
 create mode 100644 arch/arm/boards/freescale-mx53-loco/board.c
 rename arch/arm/{include/asm/global_data.h =3D> boards/freescale-mx53-loco=
/config.h} (64%)
 create mode 100644 arch/arm/boards/freescale-mx53-loco/env/config
 create mode 100644 arch/arm/boards/freescale-mx53-loco/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx53-loco/lowlevel_init.S
 create mode 100644 arch/arm/boards/freescale-mx53-loco/mx53-pdk.dox
 create mode 100644 arch/arm/boards/scb9328/env/config
 create mode 100644 arch/arm/configs/freescale_mx53_loco_defconfig
 create mode 100644 arch/arm/mach-at91/include/mach/clkdev.h
 rename arch/{sandbox/include/asm/global_data.h =3D> arm/mach-imx/imx53.c} =
(54%)
 delete mode 100644 arch/arm/mach-imx/include/mach/clock-imx51.h
 create mode 100644 arch/arm/mach-imx/include/mach/clock-imx51_53.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx1.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx53.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx53-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx53.h
 create mode 100644 arch/arm/mach-imx/speed-imx53.c
 delete mode 100644 arch/arm/mach-omap/omap-uart.c
 delete mode 100644 arch/ppc/include/asm/global_data.h
 create mode 100644 arch/sandbox/include/asm/io.h
 create mode 100644 commands/time.c
 create mode 100644 drivers/base/Makefile
 rename {lib =3D> drivers/base}/driver.c (89%)
 rename lib/bus.c =3D> drivers/base/platform.c (100%)
 create mode 100644 drivers/base/resource.c
 delete mode 100644 include/ioports.h
 create mode 100644 include/linux/ioport.h
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
