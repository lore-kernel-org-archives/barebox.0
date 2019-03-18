Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5oMc-0003Vg-LL
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 09:15:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 Mar 2019 10:14:43 +0100
Message-Id: <20190318091454.11386-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/11] Fix -Wmissing-prototypes warnings
To: Barebox List <barebox@lists.infradead.org>

This series fixes a a ton of -Wmissing-prototypes warnings. We add
missing includes and make locally used functions static. There's even
one case fixed where we actually had conflicting prototypes without
noticing it. Hurray, fixed!

Sascha


Sascha Hauer (11):
  ARM: semihosting: Fix function prototype
  treewide: Make locally used functions static
  treewide: Add missing includes
  ARM: i.MX: external-nand-boot: remove unused i.MX21 entry
  ARM: boards: Harmonize barebox_arm_reset_vector() prototype
  ARM: sha256: Remove unused functions
  ARM: sha256: Remove unused header file
  ARM: PXA: Provide prototype for pxa_clear_reset_source()
  bus: mvebu-mbus: Add missing whitespace
  mfd: twl-core: Add missing prototype for twlcore_get()
  fs: squashfs: Remove unused function

 arch/arm/boards/animeo_ip/lowlevel.c          |   2 +-
 arch/arm/boards/archosg9/lowlevel.c           |   4 +-
 arch/arm/boards/at91rm9200ek/lowlevel.c       |   2 +-
 arch/arm/boards/at91sam9260ek/lowlevel.c      |   2 +-
 arch/arm/boards/at91sam9261ek/lowlevel_init.c |   2 +-
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c   |   2 +-
 arch/arm/boards/at91sam9m10ihd/lowlevel.c     |   2 +-
 arch/arm/boards/at91sam9n12ek/lowlevel.c      |   2 +-
 arch/arm/boards/avnet-zedboard/lowlevel.c     |   2 +-
 arch/arm/boards/canon-a1100/lowlevel.c        |   2 +-
 arch/arm/boards/chumby_falconwing/lowlevel.c  |   2 +-
 arch/arm/boards/clep7212/lowlevel.c           |   2 +-
 .../boards/crystalfontz-cfa10036/hwdetect.c   |   2 +
 .../boards/crystalfontz-cfa10036/lowlevel.c   |   2 +-
 arch/arm/boards/dss11/lowlevel.c              |   2 +-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c    |   2 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c    |   2 +-
 arch/arm/boards/eukrea_cpuimx51/lowlevel.c    |   2 +-
 arch/arm/boards/freescale-mx23-evk/lowlevel.c |   2 +-
 arch/arm/boards/freescale-mx53-smd/lowlevel.c |   2 +-
 .../boards/friendlyarm-mini6410/lowlevel.c    |   2 +-
 .../arm/boards/friendlyarm-tiny210/lowlevel.c |   5 +-
 .../boards/friendlyarm-tiny6410/lowlevel.c    |   2 +-
 .../boards/friendlyarm-tiny6410/tiny6410.c    |   2 +
 arch/arm/boards/guf-cupid/lowlevel.c          |   3 +-
 arch/arm/boards/guf-neso/lowlevel.c           |   2 +-
 arch/arm/boards/haba-knx/lowlevel.c           |   2 +-
 arch/arm/boards/highbank/lowlevel.c           |   2 +-
 arch/arm/boards/imx233-olinuxino/lowlevel.c   |   2 +-
 arch/arm/boards/karo-tx51/lowlevel.c          |   2 +-
 arch/arm/boards/kindle3/kindle3.c             |   2 +-
 arch/arm/boards/kindle3/lowlevel.c            |   2 +-
 arch/arm/boards/lubbock/lowlevel.c            |   2 +-
 arch/arm/boards/mainstone/lowlevel.c          |   2 +-
 arch/arm/boards/mioa701/lowlevel.c            |   2 +-
 arch/arm/boards/module-mb7707/lowlevel.c      |   2 +-
 arch/arm/boards/mx31moboard/lowlevel.c        |   2 +-
 arch/arm/boards/nhk8815/lowlevel.c            |   2 +-
 arch/arm/boards/omap343xdsp/lowlevel.c        |   4 +-
 arch/arm/boards/omap3evm/lowlevel.c           |   4 +-
 arch/arm/boards/panda/lowlevel.c              |   4 +-
 .../boards/phytec-phycard-imx27/lowlevel.c    |   2 +-
 .../boards/phytec-phycard-omap3/lowlevel.c    |   8 +-
 .../boards/phytec-phycard-omap4/lowlevel.c    |   4 +-
 .../boards/phytec-phycore-imx31/lowlevel.c    |   2 +-
 .../boards/phytec-phycore-imx35/lowlevel.c    |   2 +-
 .../boards/phytec-phycore-omap4460/lowlevel.c |   4 +-
 arch/arm/boards/pm9261/lowlevel_init.c        |   2 +-
 arch/arm/boards/pm9263/lowlevel_init.c        |   2 +-
 arch/arm/boards/pm9g45/lowlevel.c             |   2 +-
 arch/arm/boards/qemu-virt64/lowlevel.c        |   2 +-
 arch/arm/boards/qil-a926x/lowlevel.c          |   2 +-
 arch/arm/boards/sama5d3_xplained/lowlevel.c   |   2 +-
 arch/arm/boards/sama5d3xek/lowlevel.c         |   2 +-
 arch/arm/boards/sama5d4_xplained/lowlevel.c   |   2 +-
 arch/arm/boards/sama5d4ek/lowlevel.c          |   2 +-
 arch/arm/boards/telit-evk-pro3/lowlevel.c     |   2 +-
 .../arm/boards/tny-a926x/tny_a9260_lowlevel.c |   2 +-
 .../arm/boards/tny-a926x/tny_a9263_lowlevel.c |   2 +-
 .../arm/boards/usb-a926x/usb_a9260_lowlevel.c |   2 +-
 .../arm/boards/usb-a926x/usb_a9263_lowlevel.c |   2 +-
 arch/arm/boards/versatile/lowlevel.c          |   2 +-
 arch/arm/boards/virt2real/lowlevel.c          |   2 +-
 arch/arm/boards/zylonite/lowlevel.c           |   2 +-
 arch/arm/crypto/sha1_glue.c                   |   4 +-
 arch/arm/crypto/sha256_glue.c                 |  26 +----
 arch/arm/crypto/sha256_glue.h                 |  23 ----
 arch/arm/include/asm/barebox-arm-head.h       |   1 +
 arch/arm/lib32/semihosting.c                  |   3 +-
 arch/arm/mach-clps711x/devices.c              |   1 +
 arch/arm/mach-ep93xx/gpio.c                   |   1 +
 arch/arm/mach-ep93xx/led.c                    |   2 +
 arch/arm/mach-highbank/reset.c                |   2 +-
 arch/arm/mach-imx/cpu_init.c                  |   1 +
 arch/arm/mach-imx/external-nand-boot.c        |  31 ++---
 arch/arm/mach-mvebu/common.c                  |   1 +
 arch/arm/mach-mvebu/include/mach/bbu.h        |   2 +-
 arch/arm/mach-mxs/mem-init.c                  |  10 +-
 arch/arm/mach-mxs/power.c                     |   1 +
 arch/arm/mach-mxs/usb-imx23.c                 |   1 +
 arch/arm/mach-mxs/usb-imx28.c                 |   1 +
 arch/arm/mach-netx/clocksource.c              |   2 +-
 arch/arm/mach-netx/generic.c                  |   3 +-
 arch/arm/mach-nomadik/8815.c                  |   1 +
 arch/arm/mach-omap/omap4_twl6030_mmc.c        |   1 +
 arch/arm/mach-pxa/clocksource.c               |   2 +-
 arch/arm/mach-pxa/common.c                    |   2 -
 arch/arm/mach-pxa/gpio.c                      |   1 +
 arch/arm/mach-pxa/include/mach/hardware.h     |   4 +
 arch/arm/mach-samsung/clocks-s3c64xx.c        |   2 +-
 arch/arm/mach-samsung/clocks-s5pcxx.c         |   4 +-
 common/bootchooser.c                          |   2 +-
 crypto/keystore.c                             |   1 +
 drivers/bus/mvebu-mbus.c                      |   2 +-
 drivers/clk/mvebu/common.c                    |   4 +-
 drivers/clk/mxs/clk-imx23.c                   |   2 +-
 drivers/clk/mxs/clk-imx28.c                   |   2 +-
 drivers/clocksource/mvebu.c                   |   2 +-
 drivers/mfd/lp3972.c                          |   1 +
 drivers/net/mvneta.c                          |   2 +-
 drivers/usb/otg/twl4030.c                     |   2 +-
 drivers/w1/slaves/w1_ds2431.c                 |   2 +-
 fs/bpkfs.c                                    |   2 +-
 fs/squashfs/namei.c                           | 108 ------------------
 fs/uimagefs.c                                 |   2 +-
 include/mfd/twl-core.h                        |   7 +-
 106 files changed, 140 insertions(+), 284 deletions(-)
 delete mode 100644 arch/arm/crypto/sha256_glue.h

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
