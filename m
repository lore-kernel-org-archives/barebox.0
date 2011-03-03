Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvAF4-0007wM-I3
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 15:15:06 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1PvAF2-0003gU-9f
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 16:15:00 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1PvAF2-000216-8F
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 16:15:00 +0100
Date: Thu, 3 Mar 2011 16:15:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110303151500.GT29521@pengutronix.de>
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
Subject: v2011.03.0
To: barebox@lists.infradead.org

Hi All,

next month - next release. Here it is.

Sascha

Eric B=E9nard (8):
      _update_help: fix script name
      defaultenv/bin/boot: make ubi root's name configurable
      defaultenv/bin/update: let /env/config set default values
      update: add bareboxenv update possibility
      eukrea_cpuimx25: add led support
      eukrea_cpuimx25: switch to default environement
      eukrea_cpuimx25: update defconfig
      i2c-imx: sync with kernel's driver

Gregory CLEMENT (3):
      BMP: Add support for 32bpp video frame buffer
      ARM STM/i.MX: Add possibility to choose the bit per pixel for STM vid=
eo driver
      fb i.MX23/28: Add the reset control of LCD

Jean-Christophe PLAGNIOL-VILLARD (9):
      Thumb-2: Add macros for the unified assembler syntax
      arm: libgcc update to linux v2.6.37
      arm: add __bswapsi2 support
      import swab.h arch implementation form linux v2.3.37
      x86/pmjump: rename __bss_end to __bss_stop
      at91sam9m10g45ek: add board revision support
      lib/decompress_unlzo: use fill and full to read and write data
      kconfig: syn with linux kernel v2.6.38-rc3
      sandbox: remove non used functions linux_getc/putc

Krzysztof Halasa (2):
      Fix error handling with malloc, memalign etc. Introduce xmemalign().
      ARM: support big/little endian switching in "bootX".

Marc Kleine-Budde (2):
      defaultenv/bin/boot: fix ubi root's name assignment
      defaultenv/bin/update: fix return values

Marc Reilly (4):
      Init env context a bit earlier in initalization sequence.
      imx: add reg definitions for imx25 and imx35 boot source.
      imx(25,35): save boot location into $barebox_loc env.
      imx: add reg definitions for imx25 and imx35 boot source.

Robert Schwebel (1):
      tx28: fix kconfig warning

Sanjeev Premi (1):
      nand: Fix warnings due to incompatible format strings

Sascha Hauer (43):
      defaultenv: only try to add partitions when partition description exi=
sts
      scb9328: remove useless bin/init file from env
      update scb9328_defconfig
      ARM scb9328: increase barebox partition size
      Merge branch 'scb9328' into next
      fs: fix multiple mount of the same fstype
      ARM pca100: update defconfig
      fec i.MX28: Make it work with MMU on
      ARM tx28: Add mmu support
      Merge branch 'master' into next
      ppc pcm030: provide _stext, _text and __bss_stop in linker script
      blackfin: provide __bss_stop in linker script
      ARM: provide __bss_stop in linker script
      add sections.h header file
      ARM start.c: use sections.h header file for linker variables
      ARM: remove unnecessary include
      x86: use sections.h header file for linker variables
      reloc.h: remove linker variables which are now in asm/sections.h
      startup: make debug printing of linker variables work again
      video stm/mx2x: simplify memory allocation
      video stm/mx2x: allow to pass in fb memory from platform data
      ARM i.MX pca100: register otg usb host
      ARM i.MX28 tx28: use a fixed framebuffer address
      ARM i.MX28 tx28 defconfig: enable MMU
      Revert "arm: add __bswapsi2 support"
      USB ehci: Set to host mode on tt capable controllers
      i.MX23: Add USB (phy) support
      ARM Chumby: Add USB support
      ARM Chumby: Add MMU support
      i.MX23/28: Fix setting of lcd clock
      fb i.MX23/28: add platform data hook to enable backlight
      ARM chumby: enable backlight in platform data hook
      fb i.MX23/28: rename imx_fb_videomode to imx_fb_platformdata
      ARM: rename STM arch to mxs
      ARM chumby defconfig: update with new features
      defaultenv: do not print usage information for update script
      Merge branch 'defenv' into next
      Merge branch 'next'
      ARM nhk8815: make config.h nonempty
      fb: For multiple video modes print the available modes in devinfo
      ARM tx28: Add hook for enabling the display
      network: initialize new net device id with -1
      Release v2011.03.0

 Kconfig                                            |   11 +
 Makefile                                           |    2 +-
 arch/arm/Kconfig                                   |    9 +-
 arch/arm/Makefile                                  |    3 +-
 arch/arm/boards/at91sam9m10g45ek/init.c            |   21 +
 arch/arm/boards/chumby_falconwing/falconwing.c     |   79 +++-
 arch/arm/boards/eukrea_cpuimx25/env/bin/_update    |   36 --
 arch/arm/boards/eukrea_cpuimx25/env/bin/boot       |   53 --
 arch/arm/boards/eukrea_cpuimx25/env/bin/hush_hack  |    1 -
 arch/arm/boards/eukrea_cpuimx25/env/bin/init       |   43 --
 arch/arm/boards/eukrea_cpuimx25/env/bin/init_board |   18 +
 .../boards/eukrea_cpuimx25/env/bin/update_kernel   |    8 -
 .../arm/boards/eukrea_cpuimx25/env/bin/update_root |    8 -
 arch/arm/boards/eukrea_cpuimx25/env/config         |   53 ++-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   13 +
 arch/arm/boards/karo-tx28/tx28-stk5.c              |   36 ++-
 arch/arm/boards/karo-tx28/tx28.c                   |   23 +
 arch/arm/boards/nhk8815/config.h                   |    1 +
 arch/arm/boards/phycard-i.MX27/pca100.c            |   78 ++-
 arch/arm/boards/scb9328/env/bin/init               |    3 -
 arch/arm/boards/scb9328/scb9328.c                  |    2 +-
 arch/arm/configs/chumbyone_defconfig               |   21 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |   13 +-
 arch/arm/configs/imx23evk_defconfig                |    2 +-
 arch/arm/configs/pca100_defconfig                  |    7 +-
 arch/arm/configs/scb9328_defconfig                 |   28 +-
 arch/arm/configs/tx28stk5_defconfig                |    3 +-
 arch/arm/cpu/Kconfig                               |    9 +
 arch/arm/cpu/mmu.c                                 |    8 +-
 arch/arm/cpu/start.c                               |    5 +-
 arch/arm/include/asm/mmu.h                         |    2 +-
 arch/arm/include/asm/sections.h                    |    1 +
 arch/arm/include/asm/swab.h                        |   69 +++
 arch/arm/include/asm/unified.h                     |  130 +++++
 arch/arm/lib/Makefile                              |   13 +-
 arch/arm/lib/__aeabi_idivmod.S                     |   50 --
 arch/arm/lib/__aeabi_uidivmod.S                    |   51 --
 arch/arm/lib/_divsi3.S                             |  144 -----
 arch/arm/lib/_modsi3.S                             |  101 ----
 arch/arm/lib/_udivsi3.S                            |   81 ---
 arch/arm/lib/_umodsi3.S                            |   89 ---
 arch/arm/lib/arm.c                                 |    1 -
 arch/arm/lib/armlinux.c                            |   69 ++-
 arch/arm/lib/{_ashldi3.S =3D> ashldi3.S}             |   17 +-
 arch/arm/lib/{_ashrdi3.S =3D> ashrdi3.S}             |   17 +-
 arch/arm/lib/barebox.lds.S                         |    1 +
 arch/arm/lib/lib1funcs.S                           |  348 +++++++++++
 arch/arm/lib/{_lshrdi3.S =3D> lshrdi3.S}             |   16 +-
 arch/arm/mach-at91/Kconfig                         |   19 +-
 arch/arm/mach-imx/Kconfig                          |    3 -
 arch/arm/mach-imx/Makefile                         |    1 +
 arch/arm/mach-imx/boot.c                           |   95 +++
 arch/arm/mach-imx/include/mach/imx25-regs.h        |    3 +
 arch/arm/mach-imx/include/mach/imx35-regs.h        |    3 +
 arch/arm/{mach-stm =3D> mach-mxs}/Kconfig            |    5 +-
 arch/arm/{mach-stm =3D> mach-mxs}/Makefile           |    2 +-
 .../arm/{mach-stm =3D> mach-mxs}/clocksource-imx23.c |    0
 .../arm/{mach-stm =3D> mach-mxs}/clocksource-imx28.c |    0
 arch/arm/{mach-stm =3D> mach-mxs}/imx.c              |    0
 arch/arm/{mach-stm =3D> mach-mxs}/imx_lcd_clk.c      |    3 +-
 .../include/mach/clock-imx23.h                     |    0
 .../include/mach/clock-imx28.h                     |    0
 .../{mach-stm =3D> mach-mxs}/include/mach/clock.h    |    0
 arch/arm/{mach-stm =3D> mach-mxs}/include/mach/fb.h  |   11 +-
 .../{mach-stm =3D> mach-mxs}/include/mach/generic.h  |    0
 .../arm/{mach-stm =3D> mach-mxs}/include/mach/gpio.h |    0
 .../{mach-stm =3D> mach-mxs}/include/mach/imx-regs.h |    0
 .../include/mach/imx23-regs.h                      |    4 +
 .../include/mach/imx28-regs.h                      |    0
 .../include/mach/iomux-imx23.h                     |    0
 .../include/mach/iomux-imx28.h                     |    0
 arch/arm/{mach-stm =3D> mach-mxs}/include/mach/mci.h |    0
 arch/arm/mach-mxs/include/mach/usb.h               |    6 +
 arch/arm/{mach-stm =3D> mach-mxs}/iomux-imx.c        |    0
 arch/arm/{mach-stm =3D> mach-mxs}/reset-imx.c        |    0
 arch/arm/{mach-stm =3D> mach-mxs}/speed-imx23.c      |    0
 arch/arm/{mach-stm =3D> mach-mxs}/speed-imx28.c      |    0
 arch/arm/mach-mxs/usb.c                            |   92 +++
 arch/blackfin/boards/ipe337/barebox.lds.S          |    1 +
 arch/blackfin/include/asm/bitsperlong.h            |    1 +
 arch/blackfin/include/asm/sections.h               |    1 +
 arch/blackfin/include/asm/swab.h                   |   50 ++
 arch/ppc/boards/pcm030/barebox.lds.S               |    3 +
 arch/ppc/include/asm/byteorder.h                   |   87 +---
 arch/ppc/include/asm/sections.h                    |    1 +
 arch/ppc/include/asm/swab.h                        |   90 +++
 arch/sandbox/include/asm/sections.h                |    1 +
 arch/sandbox/mach-sandbox/include/mach/linux.h     |    2 -
 arch/sandbox/os/common.c                           |   20 -
 arch/x86/boot/main_entry.c                         |    7 +-
 arch/x86/boot/pmjump.S                             |    4 +-
 arch/x86/include/asm/sections.h                    |    1 +
 arch/x86/include/asm/swab.h                        |   61 ++
 arch/x86/lib/barebox.lds.S                         |    2 +-
 commands/bmp.c                                     |    1 +
 commands/edit.c                                    |    4 +-
 common/env.c                                       |    2 +-
 common/startup.c                                   |    5 +-
 defaultenv/bin/_update_help                        |    3 +-
 defaultenv/bin/boot                                |    5 +-
 defaultenv/bin/init                                |    9 +-
 defaultenv/bin/update                              |   13 +-
 drivers/i2c/busses/i2c-imx.c                       |   35 +-
 drivers/mci/Kconfig                                |    2 +-
 drivers/mci/mci-core.c                             |    5 +-
 drivers/net/Kconfig                                |    3 +
 drivers/net/at91_ether.c                           |    2 +-
 drivers/net/cs8900.c                               |    4 +-
 drivers/net/fec_imx.c                              |    6 +-
 drivers/net/fec_mpc5200.c                          |    4 +-
 drivers/net/tap.c                                  |    4 +-
 drivers/nor/cfi_flash.c                            |    6 +-
 drivers/serial/Kconfig                             |    2 +-
 drivers/serial/amba-pl011.c                        |    3 +-
 drivers/serial/atmel.c                             |    3 +-
 drivers/serial/serial_blackfin.c                   |    2 +-
 drivers/serial/serial_imx.c                        |    2 +-
 drivers/serial/serial_netx.c                       |    2 +-
 drivers/serial/serial_pl010.c                      |    2 +-
 drivers/serial/serial_s3c24x0.c                    |    3 +-
 drivers/usb/gadget/composite.c                     |    3 -
 drivers/usb/gadget/fsl_udc.c                       |    4 +-
 drivers/usb/gadget/u_serial.c                      |    6 +-
 drivers/usb/host/ehci-hcd.c                        |    7 +
 drivers/video/Kconfig                              |    2 +-
 drivers/video/fb.c                                 |   38 ++
 drivers/video/stm.c                                |   65 ++-
 fs/fs.c                                            |    1 +
 include/asm-generic/bitsperlong.h                  |   32 +
 include/asm-generic/sections.h                     |    8 +
 include/asm-generic/swab.h                         |   18 +
 include/linux/byteorder/big_endian.h               |    2 +-
 include/linux/byteorder/little_endian.h            |    2 +-
 include/linux/byteorder/swab.h                     |  158 -----
 include/linux/swab.h                               |  299 ++++++++++
 include/net.h                                      |    2 +-
 include/reloc.h                                    |    2 +-
 include/xfuncs.h                                   |    1 +
 lib/decompress_unlzo.c                             |  180 +++---
 lib/xfuncs.c                                       |    8 +
 net/eth.c                                          |    1 +
 net/net.c                                          |    4 +-
 scripts/basic/docproc.c                            |    7 +-
 scripts/kconfig/Makefile                           |   87 ++--
 scripts/kconfig/conf.c                             |   19 +-
 scripts/kconfig/confdata.c                         |  159 +++---
 scripts/kconfig/expr.c                             |   44 ++-
 scripts/kconfig/expr.h                             |    7 +-
 scripts/kconfig/gconf.c                            |   20 +-
 scripts/kconfig/gconf.glade                        |    1 -
 scripts/kconfig/kxgettext.c                        |   15 +-
 scripts/kconfig/lex.zconf.c_shipped                |    7 +-
 scripts/kconfig/lkc.h                              |   16 +-
 scripts/kconfig/lkc_proto.h                        |    3 +
 scripts/kconfig/lxdialog/check-lxdialog.sh         |    2 +
 scripts/kconfig/mconf.c                            |   64 +--
 scripts/kconfig/menu.c                             |   53 ++-
 scripts/kconfig/nconf.c                            |  495 ++++++++--------
 scripts/kconfig/nconf.gui.c                        |   22 +-
 scripts/kconfig/nconf.h                            |    3 +-
 scripts/kconfig/qconf.cc                           |  174 ++++---
 scripts/kconfig/qconf.h                            |   76 ++--
 scripts/kconfig/streamline_config.pl               |   43 ++-
 scripts/kconfig/symbol.c                           |   59 ++-
 scripts/kconfig/util.c                             |    7 +-
 scripts/kconfig/zconf.gperf                        |    1 +
 scripts/kconfig/zconf.hash.c_shipped               |  122 ++--
 scripts/kconfig/zconf.l                            |    7 +-
 scripts/kconfig/zconf.tab.c_shipped                |  603 +++++++++++-----=
----
 scripts/kconfig/zconf.y                            |   37 +-
 scripts/mod/modpost.c                              |    2 +-
 171 files changed, 3300 insertions(+), 2206 deletions(-)
 create mode 100644 Kconfig
 delete mode 100644 arch/arm/boards/eukrea_cpuimx25/env/bin/_update
 delete mode 100644 arch/arm/boards/eukrea_cpuimx25/env/bin/boot
 delete mode 100644 arch/arm/boards/eukrea_cpuimx25/env/bin/hush_hack
 delete mode 100644 arch/arm/boards/eukrea_cpuimx25/env/bin/init
 create mode 100644 arch/arm/boards/eukrea_cpuimx25/env/bin/init_board
 delete mode 100644 arch/arm/boards/eukrea_cpuimx25/env/bin/update_kernel
 delete mode 100644 arch/arm/boards/eukrea_cpuimx25/env/bin/update_root
 delete mode 100644 arch/arm/boards/scb9328/env/bin/init
 create mode 100644 arch/arm/include/asm/sections.h
 create mode 100644 arch/arm/include/asm/swab.h
 create mode 100644 arch/arm/include/asm/unified.h
 delete mode 100644 arch/arm/lib/__aeabi_idivmod.S
 delete mode 100644 arch/arm/lib/__aeabi_uidivmod.S
 delete mode 100644 arch/arm/lib/_divsi3.S
 delete mode 100644 arch/arm/lib/_modsi3.S
 delete mode 100644 arch/arm/lib/_udivsi3.S
 delete mode 100644 arch/arm/lib/_umodsi3.S
 rename arch/arm/lib/{_ashldi3.S =3D> ashldi3.S} (88%)
 rename arch/arm/lib/{_ashrdi3.S =3D> ashrdi3.S} (88%)
 create mode 100644 arch/arm/lib/lib1funcs.S
 rename arch/arm/lib/{_lshrdi3.S =3D> lshrdi3.S} (88%)
 create mode 100644 arch/arm/mach-imx/boot.c
 rename arch/arm/{mach-stm =3D> mach-mxs}/Kconfig (94%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/Makefile (68%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/clocksource-imx23.c (100%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/clocksource-imx28.c (100%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/imx.c (100%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/imx_lcd_clk.c (98%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/include/mach/clock-imx23.h (100%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/include/mach/clock-imx28.h (100%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/include/mach/clock.h (100%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/include/mach/fb.h (83%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/include/mach/generic.h (100%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/include/mach/gpio.h (100%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/include/mach/imx-regs.h (100%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/include/mach/imx23-regs.h (90%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/include/mach/imx28-regs.h (100%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/include/mach/iomux-imx23.h (100%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/include/mach/iomux-imx28.h (100%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/include/mach/mci.h (100%)
 create mode 100644 arch/arm/mach-mxs/include/mach/usb.h
 rename arch/arm/{mach-stm =3D> mach-mxs}/iomux-imx.c (100%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/reset-imx.c (100%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/speed-imx23.c (100%)
 rename arch/arm/{mach-stm =3D> mach-mxs}/speed-imx28.c (100%)
 create mode 100644 arch/arm/mach-mxs/usb.c
 create mode 100644 arch/blackfin/include/asm/bitsperlong.h
 create mode 100644 arch/blackfin/include/asm/sections.h
 create mode 100644 arch/blackfin/include/asm/swab.h
 create mode 100644 arch/ppc/include/asm/sections.h
 create mode 100644 arch/ppc/include/asm/swab.h
 create mode 100644 arch/sandbox/include/asm/sections.h
 create mode 100644 arch/sandbox/include/asm/swab.h
 create mode 100644 arch/x86/include/asm/sections.h
 create mode 100644 arch/x86/include/asm/swab.h
 create mode 100644 include/asm-generic/bitsperlong.h
 create mode 100644 include/asm-generic/sections.h
 create mode 100644 include/asm-generic/swab.h
 delete mode 100644 include/linux/byteorder/swab.h
 create mode 100644 include/linux/swab.h
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
