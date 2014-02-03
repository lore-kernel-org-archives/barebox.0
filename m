Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WALlQ-0005rF-Ca
 for barebox@lists.infradead.org; Mon, 03 Feb 2014 15:48:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WALl4-000357-2e
 for barebox@lists.infradead.org; Mon, 03 Feb 2014 16:48:26 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1WALl4-000538-0x
 for barebox@lists.infradead.org; Mon, 03 Feb 2014 16:48:26 +0100
Date: Mon, 3 Feb 2014 16:48:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140203154825.GI16215@pengutronix.de>
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
Subject: v2014.02.0
To: barebox@lists.infradead.org

Febuary has arrived and with it another barebox release. Not that much
has happened since the last release, but here it is:


----------------------------------------------------------------
Alexander Shiyan (5):
      of: platform: Fix possible crash
      MIPS: mach-ar231x: Fix uninitialized variable
      ppc 8xxx: Fix logic
      gadget: at91: Fix uninitialized variable
      scripts: imx-usb-loader: Fix memory leak

Antony Pavlov (6):
      lib: fix whitespace, drop blank lines at EOF
      miitool: change behaviour closer to linux' mii-tool
      miitool: add initial GbE support
      miitool: drop internal table of known MII, use phy drivers instead
      net/phy: add driver for LXT PHYs
      net/phy/phy.c: fix whitespace

Beniamino Galvani (2):
      net: add driver for OpenCores 10/100 Mbps ethernet MAC
      openrisc: enable OpenCores ethernet driver

Jan Weitzel (1):
      oftree command: Allow free stored dtb before load

Michael Grzeschik (1):
      scripts: kwbimage: fix imagebuild on 32bit host system

Richard Genoud (2):
      UBI: fastmap: fix backward compatibility with image_seq
      UBI: simplify image sequence test

Richard Weinberger (7):
      UBI: Fix PEB leak in wear_leveling_worker()
      UBI: Fix invalidate_fastmap()
      UBI: fix refill_wl_user_pool()
      UBI: Fix error path in scan_pool()
      UBI: Call scan_all() with correct offset in error case
      UBI: Fix memory leak in ubi_attach_fastmap() error path
      UBI: Add some asserts to ubi_attach_fastmap()

Robert Schwebel (3):
      ARM: i.MX6: tqma6x: dts: move FEC enablement to baseboard
      ARM: i.MX6: tqma6x: dts: get MAC address from OCOTP
      ARM: i.MX6: tqma6x: dts: remove unused dts file

Sascha Hauer (45):
      net: phy: cleanup attached device handling
      net: phy: bail out early in phy_device_connect
      net: phy: move duplicated code out of if/else
      net: phy: check if a phy already has an ethernet device
      net: phy: track registered state of a phy device
      net: phy: move phy_init_hw to phy_device_connect
      net: phy: Track mii buses on a list
      net: phy: implement detect callback for miibus devices
      miitool: Add option to scan mii buses
      video: ipufb: make disp_data_fmt configurable
      poller: Allow to call functions asynchronously
      video: ipufb: do not use bitfields
      video: ipufb: calculate channel param fields from fb_bitfields
      video: ipufb: Fix 24bit format and implement 32bit format
      video: ipufb: Fix divider debug print
      video: ipufb: Allow to disable fractional pixelclock divider
      video: imx-ipu-fb: Do not modify pwm register
      video: Add screen_size field
      video: imx-ipu-fb: Allow to specify framebuffer memory size via platform_data
      video: simplefb: Add of reserve entry for framebuffer memory
      video: simplefb: Add a8r8g8b8 support
      video: ipufb: Use uncached memory for framebuffer
      ARM: start kernel: find a valid address for the atags list automatically
      ARM: remove armlinux_set_bootparams() calls from boards
      ARM: boot barebox with kernel calling convention
      usb: chipidea i.MX: remove unused pdata->init hook
      usb: chipidea i.MX: limit port init to HSIC mode
      usb: chipidea i.MX: always print an error message when ULPI fails
      usb: chipidea i.MX: add some delay after ulpi_setup
      Merge branch 'for-next/arm-barebox-bootm'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/miiphy'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/openrisc'
      Merge branch 'for-next/poller'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/ubi'
      Merge branch 'for-next/usb-chipidea'
      Merge branch 'for-next/video'
      net: phy: Fix crash when no phy is found
      ARM: i.MX6 Sabrelite: add missing of_machine_is_compatible checks
      ARM: i.MX53: fix bootsource_instance detection
      ARM: i.MX: edmqmx6: Copy fdt to SDRAM
      ARM: i.MX: edmqmx6: update defconfig
      Release v2014.02.0

Steffen Trumtrar (3):
      ARM: socfpga: sockit: update sdram config
      ARM: socfpga: update iocsr config
      ARM: socfpga: sockit: reconfigure src for sdmmc

 Makefile                                           |   4 +-
 arch/arm/boards/a9m2410/a9m2410.c                  |   2 -
 arch/arm/boards/a9m2440/a9m2440.c                  |   1 -
 arch/arm/boards/animeo_ip/init.c                   |   1 -
 arch/arm/boards/archosg9/board.c                   |   2 -
 arch/arm/boards/at91rm9200ek/init.c                |   1 -
 arch/arm/boards/at91sam9260ek/init.c               |   1 -
 arch/arm/boards/at91sam9261ek/init.c               |   1 -
 arch/arm/boards/at91sam9263ek/init.c               |   1 -
 arch/arm/boards/at91sam9m10g45ek/init.c            |   1 -
 arch/arm/boards/at91sam9m10ihd/init.c              |   1 -
 arch/arm/boards/at91sam9n12ek/init.c               |   1 -
 arch/arm/boards/at91sam9x5ek/init.c                |   1 -
 arch/arm/boards/beagle/board.c                     |   1 -
 arch/arm/boards/beaglebone/board.c                 |   1 -
 arch/arm/boards/ccxmx51/ccxmx51.c                  |   2 -
 arch/arm/boards/chumby_falconwing/falconwing.c     |   1 -
 arch/arm/boards/clep7212/clep7212.c                |   1 -
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |   1 -
 arch/arm/boards/dfi-fs700-m60/board.c              |   1 -
 arch/arm/boards/dmo-mx6-realq7/lowlevel.c          |  20 +-
 arch/arm/boards/dss11/init.c                       |   1 -
 arch/arm/boards/edb93xx/edb93xx.c                  |   2 -
 arch/arm/boards/efika-mx-smartbook/board.c         |   1 -
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   1 -
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |   1 -
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |   1 -
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |   1 -
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |   1 -
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |   1 -
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |   1 -
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   1 -
 arch/arm/boards/freescale-mx51-pdk/board.c         |   1 -
 arch/arm/boards/freescale-mx53-loco/board.c        |   1 -
 arch/arm/boards/freescale-mx53-smd/board.c         |   1 -
 arch/arm/boards/freescale-mx53-vmx53/board.c       |   1 -
 arch/arm/boards/freescale-mx6-arm2/board.c         |   1 -
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |   9 +-
 arch/arm/boards/freescale-mx6-sabresd/board.c      |   1 -
 arch/arm/boards/friendlyarm-mini2440/mini2440.c    |   1 -
 arch/arm/boards/friendlyarm-mini6410/mini6410.c    |   1 -
 arch/arm/boards/friendlyarm-tiny210/tiny210.c      |   1 -
 arch/arm/boards/friendlyarm-tiny6410/tiny6410.c    |   1 -
 arch/arm/boards/guf-cupid/board.c                  |   1 -
 arch/arm/boards/guf-neso/board.c                   |   1 -
 arch/arm/boards/guf-vincell/board.c                |   1 -
 arch/arm/boards/highbank/init.c                    |   2 -
 arch/arm/boards/imx21ads/imx21ads.c                |   1 -
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |   1 -
 arch/arm/boards/imx27ads/imx27ads.c                |   1 -
 arch/arm/boards/karo-tx25/board.c                  |   1 -
 arch/arm/boards/karo-tx28/tx28.c                   |   1 -
 arch/arm/boards/karo-tx51/tx51.c                   |   1 -
 arch/arm/boards/karo-tx53/board.c                  |   1 -
 arch/arm/boards/mioa701/board.c                    |   1 -
 arch/arm/boards/mmccpu/init.c                      |   1 -
 arch/arm/boards/netx/netx.c                        |   1 -
 arch/arm/boards/nhk8815/setup.c                    |   1 -
 arch/arm/boards/omap3evm/board.c                   |   1 -
 arch/arm/boards/panda/board.c                      |   1 -
 arch/arm/boards/pcm027/board.c                     |   1 -
 arch/arm/boards/pcm037/pcm037.c                    |   2 -
 arch/arm/boards/pcm038/pcm038.c                    |   1 -
 arch/arm/boards/pcm043/pcm043.c                    |   1 -
 arch/arm/boards/pcm049/board.c                     |   1 -
 arch/arm/boards/pcm051/board.c                     |   1 -
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |   1 -
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c          |   1 -
 arch/arm/boards/phycard-i.MX27/pca100.c            |   1 -
 arch/arm/boards/pm9261/init.c                      |   1 -
 arch/arm/boards/pm9263/init.c                      |   1 -
 arch/arm/boards/pm9g45/init.c                      |   1 -
 arch/arm/boards/qil-a926x/init.c                   |   1 -
 arch/arm/boards/raspberry-pi/rpi.c                 |   1 -
 arch/arm/boards/sama5d3xek/init.c                  |   2 -
 arch/arm/boards/scb9328/scb9328.c                  |   1 -
 arch/arm/boards/telit-evk-pro3/init.c              |   2 -
 arch/arm/boards/terasic-sockit/pll_config.h        |   2 +-
 arch/arm/boards/terasic-sockit/sdram_config.h      |  21 +-
 arch/arm/boards/tny-a926x/init.c                   |   1 -
 arch/arm/boards/tqma53/board.c                     |   1 -
 arch/arm/boards/usb-a926x/init.c                   |   1 -
 arch/arm/boards/versatile/versatilepb.c            |   1 -
 arch/arm/boards/vexpress/init.c                    |   2 -
 arch/arm/configs/dmo-realq7_defconfig              |   8 +-
 arch/arm/dts/imx6q-tqma6x.dts                      | 319 -------------
 arch/arm/dts/imx6qdl-mba6x.dtsi                    |   4 +
 arch/arm/dts/imx6qdl-tqma6x.dtsi                   |   5 +-
 arch/arm/lib/armlinux.c                            |  29 +-
 arch/arm/lib/bootm.c                               |  19 +-
 arch/arm/mach-imx/boot.c                           |   2 +-
 arch/arm/mach-imx/include/mach/imx-ipu-fb.h        |  22 +
 arch/arm/mach-socfpga/iocsr-config-cyclone5.c      | 418 ++++++++---------
 arch/mips/mach-ar231x/board.c                      |   2 +-
 arch/openrisc/boards/generic/config.h              |   2 +
 arch/openrisc/boards/generic/generic.c             |   7 +
 arch/openrisc/configs/generic_defconfig            |   6 +
 arch/ppc/ddr-8xxx/options.c                        |   2 +-
 commands/miitool.c                                 | 182 +++++---
 commands/oftree.c                                  |   3 +-
 common/poller.c                                    |  58 +++
 drivers/mtd/ubi/attach.c                           |  11 +-
 drivers/mtd/ubi/fastmap.c                          |  46 +-
 drivers/mtd/ubi/wl.c                               |   7 +-
 drivers/net/Kconfig                                |   6 +
 drivers/net/Makefile                               |   1 +
 drivers/net/ethoc.c                                | 515 +++++++++++++++++++++
 drivers/net/phy/Kconfig                            |   5 +
 drivers/net/phy/Makefile                           |   1 +
 drivers/net/phy/lxt.c                              |  31 ++
 drivers/net/phy/mdio_bus.c                         |  41 +-
 drivers/net/phy/phy.c                              | 111 +++--
 drivers/of/platform.c                              |   6 +-
 drivers/usb/gadget/at91_udc.c                      |   3 +-
 drivers/usb/imx/chipidea-imx.c                     |  12 +-
 drivers/video/fb.c                                 |   2 +
 drivers/video/imx-ipu-fb.c                         | 398 ++++++++--------
 drivers/video/simplefb.c                           |  11 +
 include/fb.h                                       |   1 +
 include/linux/phy.h                                |  12 +
 include/notifier.h                                 |   1 -
 include/poller.h                                   |  14 +-
 include/usb/chipidea-imx.h                         |   1 -
 lib/Makefile                                       |   2 +-
 lib/copy_file.c                                    |   1 -
 lib/kfifo.c                                        |   1 -
 lib/notifier.c                                     |   1 -
 lib/process_escape_sequence.c                      |   1 -
 lib/show_progress.c                                |   1 -
 scripts/imx/imx-usb-loader.c                       |   5 +-
 scripts/kwbimage.c                                 |  16 +-
 131 files changed, 1480 insertions(+), 1016 deletions(-)
 delete mode 100644 arch/arm/dts/imx6q-tqma6x.dts
 create mode 100644 drivers/net/ethoc.c
 create mode 100644 drivers/net/phy/lxt.c
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
