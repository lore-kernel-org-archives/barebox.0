Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22a.google.com ([2a00:1450:4013:c00::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk80l-0001c1-60
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:24:32 +0000
Received: by mail-ee0-f42.google.com with SMTP id d49so127565eek.1
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:09 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:40 +0200
Message-Id: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 00/19] commands rework patch series
To: barebox@lists.infradead.org

Hi,

this is my current patch series that should improve barebox'
documentation about it's commands.

* when I started barebox and typed "help", the list of commands
  was scrolling up quickly. Almost always did I had to use the
  mouse and scroll my x-terminal backwards to see what I
  actually wanted to see. So I reduced the output of the "help"
  command to just spit out the command names, however grouped
  by functions. This is now much smaller and fits in one
  screen. The old list is available with "help -l".
* Usage (synopsis) documention (e.g. "ls [-lCR]") was only in
  the CONFIG_LONGHELP, but it's often usable if one forget the
  exact command option letter. It's now part of the help even
  without CONFIG_LONGHELP.
* I reworked the long help texts to make them better understandable
  (hopefully), and also tried to recuce their size if possible.
* when I was new to barebox, I was wandering if I need some
  of the commands in "make xconfig". I didn't have further
  information, because almost no command had a help text.
  This has now changed, the help texts in Kconfig are almost the
  same as the help texts of "help FOOBAR" (with CONFIG_LONGHELP) on.
* now that "help" has the commands grouped nicely, it was time
  to group them in "make xconfig", too
* many Kconfig entries turned on commands, but they were located
  at various places (a.g. common, net, arch-depended). Moved them
  all into commands/Kconfig
* some CONFIG_CMD_foobar things didn't turn on commands. I renamed
  them (and their occurences in the _defconfig)s.

What I deliberately did not: I ignored the Doxygen. That beast lacks
around 70% of all commands anyway. It builds quite slow. Still I would
not remove it, becausee occassinally it contains additional
information that isn't suitable (too long) for CONFIG_LONGHELP.

Holger Schurig (19):
  commands: group 'help' output
  commands: harmonize in-barebox documentation
  commands: harmonize in-barebox docs with Kconfig docs
  commands: CMD_MEMORY -> COMPILE_MEMORY
  commands: CMD_DIGEST -> COMPILE_DIGEST
  commands: move CMD_ARM_CPUINFO to commands/Kconfig
  commands: move CMD_ARM_MMUINFO to commands/Kconfig
  commands: move CMD_MIPS_CPUINFO to commands/Kconfig
  commands: move CMD_BOOT_ORDER to commands/Kconfig
  commands: move CMD_AT91_BOOT_TEST to commands/Kconfig
  commands: move CMD_AT91MUX to commands/Kconfig
  commands: move CMD_AT91MIX to commands/Kconfig
  commands: HUSH_GETOPT -> CMD_GETOPT
  commands: let all network commands depend on NET
  commands: introduce CMD_HOST
  commands: NET_PING -> CMD_PING
  commands: NET_DHCP -> CMD_DHCP
  commands: move CMD_IFUP to commands/Kconfig
  commands: move CONFIG_LONGHELP to commands/Kconfig

 arch/arm/Kconfig                                   |   15 -
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |    9 +-
 arch/arm/boards/guf-cupid/board.c                  |   10 +-
 arch/arm/boards/phytec-phycore-imx35/pcm043.c      |   10 +-
 arch/arm/configs/a9m2410_defconfig                 |    4 +-
 arch/arm/configs/a9m2440_defconfig                 |    4 +-
 arch/arm/configs/am335x_beaglebone_defconfig       |    4 +-
 arch/arm/configs/animeo_ip_defconfig               |    4 +-
 arch/arm/configs/archosg9_defconfig                |    4 +-
 arch/arm/configs/at91rm9200ek_defconfig            |    4 +-
 arch/arm/configs/at91sam9260ek_defconfig           |    4 +-
 arch/arm/configs/at91sam9261ek_defconfig           |    4 +-
 .../configs/at91sam9261ek_first_stage_defconfig    |    4 +-
 arch/arm/configs/at91sam9263ek_defconfig           |    4 +-
 arch/arm/configs/at91sam9g10ek_defconfig           |    4 +-
 arch/arm/configs/at91sam9g20ek_defconfig           |    4 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig        |    4 +-
 arch/arm/configs/at91sam9m10ihd_defconfig          |    4 +-
 arch/arm/configs/at91sam9n12ek_defconfig           |    4 +-
 arch/arm/configs/at91sam9x5ek_defconfig            |    4 +-
 arch/arm/configs/ccmx51_defconfig                  |    4 +-
 arch/arm/configs/chumbyone_defconfig               |    6 +-
 arch/arm/configs/cupid_defconfig                   |    4 +-
 arch/arm/configs/datamodul-edm-qmx6_defconfig      |    4 +-
 arch/arm/configs/dss11_defconfig                   |    4 +-
 arch/arm/configs/edb93xx_defconfig                 |    4 +-
 arch/arm/configs/efika-mx-smartbook_defconfig      |    4 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |    4 +-
 arch/arm/configs/eukrea_cpuimx27_defconfig         |    4 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |    4 +-
 arch/arm/configs/eukrea_cpuimx51_defconfig         |    4 +-
 arch/arm/configs/freescale-mx21-ads_defconfig      |    4 +-
 arch/arm/configs/freescale-mx25-3ds_defconfig      |    4 +-
 arch/arm/configs/freescale-mx27-ads_defconfig      |    4 +-
 arch/arm/configs/freescale-mx28-evk_defconfig      |    4 +-
 arch/arm/configs/freescale-mx35-3ds_defconfig      |    4 +-
 arch/arm/configs/freescale-mx51-babbage_defconfig  |    4 +-
 arch/arm/configs/freescale-mx53-qsb_defconfig      |    4 +-
 arch/arm/configs/freescale-mx53-smd_defconfig      |    4 +-
 arch/arm/configs/freescale-mx6-arm2_defconfig      |    4 +-
 arch/arm/configs/freescale-mx6-sabrelite_defconfig |    4 +-
 arch/arm/configs/freescale-mx6-sabresd_defconfig   |    4 +-
 arch/arm/configs/friendlyarm_mini2440_defconfig    |    4 +-
 arch/arm/configs/friendlyarm_mini6410_defconfig    |    4 +-
 arch/arm/configs/friendlyarm_tiny6410_defconfig    |    4 +-
 arch/arm/configs/highbank_defconfig                |    4 +-
 arch/arm/configs/imx233-olinuxino_defconfig        |    4 +-
 arch/arm/configs/imx_v7_defconfig                  |    4 +-
 arch/arm/configs/mioa701_defconfig                 |    2 +-
 arch/arm/configs/mmccpu_defconfig                  |    4 +-
 arch/arm/configs/neso_defconfig                    |    4 +-
 arch/arm/configs/netx_nxdb500_defconfig            |    4 +-
 arch/arm/configs/nhk8815_defconfig                 |    4 +-
 .../configs/omap3430_sdp3430_per_uart_defconfig    |    2 +-
 arch/arm/configs/omap3530_beagle_defconfig         |    4 +-
 arch/arm/configs/omap3_evm_defconfig               |    2 +-
 arch/arm/configs/panda_defconfig                   |    4 +-
 arch/arm/configs/phytec-phycard-imx27_defconfig    |    4 +-
 arch/arm/configs/phytec-phycard-omap3_defconfig    |   10 +-
 arch/arm/configs/phytec-phycard-omap4_defconfig    |    6 +-
 arch/arm/configs/phytec-phycore-am335x_defconfig   |    4 +-
 arch/arm/configs/phytec-phycore-imx27_defconfig    |    4 +-
 arch/arm/configs/phytec-phycore-imx31_defconfig    |    4 +-
 arch/arm/configs/phytec-phycore-imx35_defconfig    |    4 +-
 arch/arm/configs/phytec-phycore-omap4460_defconfig |    4 +-
 arch/arm/configs/phytec-phycore-pxa270_defconfig   |    4 +-
 arch/arm/configs/pm9261_defconfig                  |    4 +-
 arch/arm/configs/pm9263_defconfig                  |    4 +-
 arch/arm/configs/pm9g45_defconfig                  |    4 +-
 arch/arm/configs/qil_a9260_128mib_defconfig        |    4 +-
 arch/arm/configs/qil_a9260_defconfig               |    4 +-
 arch/arm/configs/qil_a9g20_128mib_defconfig        |    4 +-
 arch/arm/configs/qil_a9g20_defconfig               |    4 +-
 arch/arm/configs/rockchip_defconfig                |    4 +-
 arch/arm/configs/sama5d3xek_defconfig              |    4 +-
 arch/arm/configs/scb9328_defconfig                 |    4 +-
 arch/arm/configs/socfpga_defconfig                 |    4 +-
 arch/arm/configs/solidrun_cubox_defconfig          |    2 +-
 arch/arm/configs/telit_evk_pro3_defconfig          |    4 +-
 arch/arm/configs/tny_a9260_defconfig               |    4 +-
 arch/arm/configs/tny_a9263_defconfig               |    4 +-
 arch/arm/configs/tny_a9g20_defconfig               |    4 +-
 arch/arm/configs/tqma53_defconfig                  |    4 +-
 arch/arm/configs/tx25stk5_defconfig                |    4 +-
 arch/arm/configs/tx28stk5_defconfig                |    2 +-
 arch/arm/configs/tx51stk5_defconfig                |    8 +-
 arch/arm/configs/tx53stk5_defconfig                |    4 +-
 arch/arm/configs/usb_a9260_defconfig               |    4 +-
 arch/arm/configs/usb_a9263_128mib_defconfig        |    4 +-
 arch/arm/configs/usb_a9263_defconfig               |    4 +-
 arch/arm/configs/usb_a9g20_128mib_defconfig        |    4 +-
 arch/arm/configs/usb_a9g20_defconfig               |    4 +-
 arch/arm/configs/versatilepb_defconfig             |    4 +-
 arch/arm/configs/vexpress_ca9_defconfig            |    4 +-
 arch/arm/configs/vexpress_defconfig                |    4 +-
 arch/arm/configs/vincell_defconfig                 |    4 +-
 arch/arm/configs/zedboard_defconfig                |    2 +-
 arch/arm/cpu/cpuinfo.c                             |    3 +-
 arch/arm/cpu/mmuinfo.c                             |   10 +-
 arch/arm/lib/bootu.c                               |    4 +-
 arch/arm/lib/bootz.c                               |    9 +-
 arch/arm/mach-at91/Kconfig                         |   18 -
 arch/arm/mach-at91/boot_test_cmd.c                 |    9 +-
 arch/arm/mach-at91/clock.c                         |    9 +-
 arch/arm/mach-at91/gpio.c                          |   12 +-
 arch/arm/mach-mxs/bcb.c                            |    9 +-
 arch/arm/mach-netx/generic.c                       |    4 +-
 arch/arm/mach-omap/Kconfig                         |    7 -
 arch/arm/mach-omap/boot_order.c                    |   13 +-
 arch/blackfin/boards/ipe337/cmd_alternate.c        |   10 +-
 arch/blackfin/configs/ipe337_defconfig             |    4 +-
 arch/mips/Kconfig                                  |    7 -
 arch/mips/configs/dlink-dir-320_defconfig          |    6 +-
 arch/mips/configs/loongson-ls1b_defconfig          |    2 +-
 arch/mips/configs/qemu-malta_defconfig             |    6 +-
 arch/mips/configs/ritmix-rzx50_defconfig           |    2 +-
 arch/mips/lib/cpuinfo.c                            |    3 +-
 arch/nios2/configs/generic_defconfig               |    2 +-
 arch/openrisc/configs/generic_defconfig            |    4 +-
 arch/openrisc/lib/cpuinfo.c                        |    3 +-
 arch/ppc/configs/da923rc_defconfig                 |    4 +-
 arch/ppc/configs/p1022ds_defconfig                 |    2 +-
 arch/ppc/configs/p2020rdb_defconfig                |    2 +-
 arch/ppc/configs/pcm030_defconfig                  |    4 +-
 arch/sandbox/configs/sandbox_defconfig             |    4 +-
 commands/2048.c                                    |    7 +-
 commands/Kconfig                                   | 2250 +++++++++++++++-----
 commands/Makefile                                  |    4 +-
 commands/automount.c                               |   13 +-
 commands/barebox-update.c                          |   18 +-
 commands/basename.c                                |    7 +-
 commands/boot.c                                    |   45 +-
 commands/bootm.c                                   |   34 +-
 commands/cat.c                                     |    9 +-
 commands/cd.c                                      |    8 +-
 commands/clear.c                                   |    7 +-
 commands/clk.c                                     |   43 +-
 commands/cp.c                                      |   10 +-
 commands/crc.c                                     |   21 +-
 commands/detect.c                                  |   12 +-
 commands/devinfo.c                                 |   17 +-
 commands/dfu.c                                     |   28 +-
 commands/digest.c                                  |   28 +-
 commands/dirname.c                                 |   11 +-
 commands/echo.c                                    |   17 +-
 commands/edit.c                                    |    7 +-
 commands/exec.c                                    |    3 +-
 commands/export.c                                  |    7 +-
 commands/false.c                                   |    3 +-
 commands/filetype.c                                |   15 +-
 commands/flash.c                                   |   43 +-
 commands/global.c                                  |   11 +-
 commands/go.c                                      |   15 +-
 commands/gpio.c                                    |   39 +-
 commands/help.c                                    |  112 +-
 commands/i2c.c                                     |   51 +-
 commands/insmod.c                                  |    8 +-
 commands/iomemport.c                               |    6 +-
 commands/led.c                                     |   12 +-
 commands/let.c                                     |   44 +-
 commands/linux16.c                                 |   17 +-
 commands/linux_exec.c                              |   10 +-
 commands/ln.c                                      |   10 +-
 commands/loadb.c                                   |   20 +-
 commands/loadenv.c                                 |   16 +-
 commands/loads.c                                   |   21 +-
 commands/loadxy.c                                  |   53 +-
 commands/login.c                                   |   17 +-
 commands/ls.c                                      |   13 +-
 commands/lsmod.c                                   |    3 +-
 commands/magicvar.c                                |    3 +-
 commands/md.c                                      |   38 +-
 commands/memcmp.c                                  |   29 +-
 commands/memcpy.c                                  |   23 +-
 commands/meminfo.c                                 |    3 +-
 commands/memset.c                                  |   21 +-
 commands/memtest.c                                 |   15 +-
 commands/menu.c                                    |   55 +-
 commands/menutree.c                                |   37 +-
 commands/miitool.c                                 |   12 +-
 commands/mkdir.c                                   |   13 +-
 commands/mm.c                                      |   20 +-
 commands/mount.c                                   |   27 +-
 commands/msleep.c                                  |    4 +-
 commands/mw.c                                      |   19 +-
 commands/nand.c                                    |   16 +-
 commands/nandtest.c                                |   22 +-
 commands/net.c                                     |    8 +-
 commands/of_node.c                                 |   10 +-
 commands/of_property.c                             |   21 +-
 commands/oftree.c                                  |   16 +-
 commands/partition.c                               |   27 +-
 commands/passwd.c                                  |   14 +-
 commands/poweroff.c                                |    3 +-
 commands/printenv.c                                |    9 +-
 commands/pwd.c                                     |    3 +-
 commands/readf.c                                   |   11 +-
 commands/readline.c                                |   11 +-
 commands/readlink.c                                |   11 +-
 commands/reginfo.c                                 |    3 +-
 commands/regulator.c                               |    3 +-
 commands/reset.c                                   |    9 +-
 commands/rm.c                                      |   12 +-
 commands/rmdir.c                                   |   11 +-
 commands/saveenv.c                                 |   13 +-
 commands/setenv.c                                  |   10 +-
 commands/sleep.c                                   |    4 +-
 commands/spi.c                                     |   25 +-
 commands/splash.c                                  |   20 +-
 commands/test.c                                    |   15 +-
 commands/tftp.c                                    |   10 +-
 commands/time.c                                    |    9 +-
 commands/timeout.c                                 |   21 +-
 commands/trigger.c                                 |   13 +-
 commands/true.c                                    |    3 +-
 commands/ubi.c                                     |   43 +-
 commands/ubiformat.c                               |   48 +-
 commands/uimage.c                                  |   16 +-
 commands/umount.c                                  |   11 +-
 commands/uncompress.c                              |   11 +-
 commands/usb.c                                     |   11 +-
 commands/usbserial.c                               |   29 +-
 commands/version.c                                 |    3 +-
 commands/wd.c                                      |   11 +-
 common/Kconfig                                     |   19 +-
 common/command.c                                   |   34 +-
 common/hush.c                                      |   67 +-
 drivers/gpio/gpiolib.c                             |    9 +-
 drivers/mtd/nand/nand_imx_bbm.c                    |    6 +-
 drivers/mtd/nand/nand_s3c24xx.c                    |    8 +-
 drivers/of/base.c                                  |    2 +
 drivers/usb/gadget/u_serial.c                      |    1 +
 include/command.h                                  |   29 +-
 net/Kconfig                                        |   15 -
 net/Makefile                                       |    4 +-
 net/dhcp.c                                         |   32 +-
 net/dns.c                                          |   11 +-
 net/ifup.c                                         |   15 +-
 net/nfs.c                                          |    9 +-
 net/ping.c                                         |    4 +-
 240 files changed, 3119 insertions(+), 1746 deletions(-)

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
