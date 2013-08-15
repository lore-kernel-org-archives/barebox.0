Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9rzp-0000A5-Gw
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 07:29:34 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1V9rzS-00031N-7L
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 09:29:02 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1V9rzS-00053X-64
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 09:29:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Aug 2013 09:28:53 +0200
Message-Id: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] move BOARDINFO to globalvar
To: barebox@lists.infradead.org

The compiletime BOARDINFO string becomes more and more
meaningless with multiboard support. This series adds
a function to be called at boardlevel which initializes
the boardinfo (renamed to 'model') during runtime. This
is also initialized from the devicetree if available.

Also the several boards have a 'global.hostname' variable
which is initialized in the default environment. This is
also replaced by boardlevel code (it can still be overwritten
in the environment). This makes the environment a bit more
uniform across boards.

Sascha

----------------------------------------------------------------
Sascha Hauer (8):
      globalvar: Allow to set initial value
      Add a global.version variable
      globalvar: move globalvar init to pure_initcall
      remove remaining references of CONFIG_BOARDINFO
      introduce barebox_set_model
      Make hostname available to C Code
      Set model and hostname at boardlevel
      export model as globalvar

 Documentation/board.dox                            |  1 -
 arch/arm/boards/a9m2410/a9m2410.c                  |  3 +
 arch/arm/boards/a9m2440/a9m2440.c                  |  3 +
 arch/arm/boards/animeo_ip/init.c                   |  4 ++
 arch/arm/boards/archosg9/board.c                   |  6 +-
 arch/arm/boards/at91rm9200ek/init.c                |  3 +
 arch/arm/boards/at91sam9260ek/init.c               |  8 +++
 arch/arm/boards/at91sam9261ek/init.c               |  8 +++
 arch/arm/boards/at91sam9263ek/init.c               |  3 +
 arch/arm/boards/at91sam9m10g45ek/init.c            |  3 +
 arch/arm/boards/at91sam9m10ihd/env/config          |  2 -
 arch/arm/boards/at91sam9m10ihd/init.c              |  3 +
 arch/arm/boards/at91sam9n12ek/init.c               |  3 +
 arch/arm/boards/at91sam9x5ek/init.c                |  3 +
 arch/arm/boards/avnet-zedboard/board.c             |  3 +
 .../boards/avnet-zedboard/env/init/config-board    |  1 -
 arch/arm/boards/beagle/board.c                     |  3 +
 arch/arm/boards/beagle/env/config-board            |  1 -
 arch/arm/boards/beaglebone/board.c                 |  3 +
 arch/arm/boards/beaglebone/env/config              |  2 -
 arch/arm/boards/ccxmx51/ccxmx51.c                  |  3 +
 arch/arm/boards/ccxmx51/env/config-board           |  2 -
 arch/arm/boards/chumby_falconwing/env/config       |  2 -
 arch/arm/boards/chumby_falconwing/falconwing.c     |  3 +
 arch/arm/boards/clep7212/clep7212.c                |  3 +
 arch/arm/boards/clep7212/env/config-board          |  2 -
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |  3 +
 .../boards/crystalfontz-cfa10036/env/config-board  |  1 -
 arch/arm/boards/crystalfontz-cfa10036/hwdetect.c   |  4 +-
 arch/arm/boards/dmo-mx6-realq7/board.c             |  2 +
 arch/arm/boards/dmo-mx6-realq7/env/config-board    |  1 -
 arch/arm/boards/dss11/init.c                       |  3 +
 arch/arm/boards/edb93xx/edb93xx.c                  | 25 ++++++++
 arch/arm/boards/efika-mx-smartbook/board.c         |  2 +
 .../arm/boards/efika-mx-smartbook/env/config-board |  1 -
 arch/arm/boards/eukrea_cpuimx25/env/config         |  2 -
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |  3 +
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |  3 +
 arch/arm/boards/eukrea_cpuimx35/env/config         |  2 -
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |  3 +
 arch/arm/boards/eukrea_cpuimx51/env/config         |  2 -
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |  3 +
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |  3 +
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |  3 +
 arch/arm/boards/freescale-mx28-evk/env/config      |  1 -
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |  3 +
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |  3 +
 arch/arm/boards/freescale-mx35-3-stack/env/config  |  1 -
 arch/arm/boards/freescale-mx53-smd/board.c         |  3 +
 arch/arm/boards/freescale-mx53-smd/env/config      |  1 -
 arch/arm/boards/freescale-mx6-arm2/board.c         |  3 +
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |  2 +
 .../freescale-mx6-sabrelite/env/config-board       |  1 -
 arch/arm/boards/freescale-mx6-sabresd/board.c      |  2 +
 .../boards/freescale-mx6-sabresd/env/config-board  |  1 -
 arch/arm/boards/friendlyarm-mini2440/env/config    |  1 -
 arch/arm/boards/friendlyarm-mini2440/mini2440.c    |  3 +
 arch/arm/boards/friendlyarm-mini6410/mini6410.c    |  3 +
 arch/arm/boards/friendlyarm-tiny210/tiny210.c      |  3 +
 .../friendlyarm-tiny6410/development-board.c       |  3 +
 arch/arm/boards/gk802/board.c                      |  2 +
 arch/arm/boards/gk802/env/config-board             |  1 -
 arch/arm/boards/guf-cupid/board.c                  |  4 +-
 arch/arm/boards/guf-cupid/env/config               |  1 -
 arch/arm/boards/guf-neso/board.c                   |  3 +
 arch/arm/boards/guf-neso/env/config                |  1 -
 arch/arm/boards/guf-vincell/board.c                |  3 +
 arch/arm/boards/highbank/env/config-board          |  1 -
 arch/arm/boards/highbank/init.c                    |  3 +
 arch/arm/boards/imx21ads/imx21ads.c                |  3 +
 arch/arm/boards/imx233-olinuxino/env/config        |  2 -
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |  3 +
 arch/arm/boards/imx27ads/imx27ads.c                |  3 +
 arch/arm/boards/karo-tx25/board.c                  |  3 +
 arch/arm/boards/karo-tx28/env/config               |  1 -
 arch/arm/boards/karo-tx28/tx28-stk5.c              |  3 +
 arch/arm/boards/karo-tx51/tx51.c                   |  4 ++
 arch/arm/boards/karo-tx53/board.c                  |  3 +
 arch/arm/boards/karo-tx53/env/config-board         |  1 -
 arch/arm/boards/mioa701/board.c                    |  3 +
 arch/arm/boards/mmccpu/init.c                      |  3 +
 arch/arm/boards/netx/netx.c                        |  3 +
 arch/arm/boards/nhk8815/setup.c                    |  4 ++
 arch/arm/boards/omap343xdsp/board.c                |  7 +--
 arch/arm/boards/omap3evm/board.c                   |  6 +-
 arch/arm/boards/panda/board.c                      |  3 +
 arch/arm/boards/panda/env/config-board             |  1 -
 arch/arm/boards/pcm027/board.c                     |  3 +
 arch/arm/boards/pcm027/env/config                  |  1 -
 arch/arm/boards/pcm037/env/config-board            |  1 -
 arch/arm/boards/pcm037/pcm037.c                    |  3 +
 arch/arm/boards/pcm038/env/config-board            |  1 -
 arch/arm/boards/pcm038/pcm038.c                    |  3 +
 arch/arm/boards/pcm043/env/config-board            |  1 -
 arch/arm/boards/pcm043/pcm043.c                    |  3 +
 arch/arm/boards/pcm049/board.c                     |  3 +
 arch/arm/boards/pcm049/env/config                  |  1 -
 arch/arm/boards/pcm051/board.c                     |  3 +
 arch/arm/boards/pcm051/env/config                  |  2 -
 arch/arm/boards/phycard-a-l1/env/config            |  1 -
 arch/arm/boards/phycard-a-l1/pca-a-l1.c            |  3 +
 arch/arm/boards/phycard-a-xl2/env/config           |  1 -
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c          |  3 +
 arch/arm/boards/phycard-i.MX27/env/config          |  1 -
 arch/arm/boards/phycard-i.MX27/pca100.c            |  3 +
 arch/arm/boards/pm9261/init.c                      |  3 +
 arch/arm/boards/pm9263/init.c                      |  3 +
 arch/arm/boards/pm9g45/init.c                      |  3 +
 arch/arm/boards/qil-a926x/init.c                   |  8 +++
 arch/arm/boards/raspberry-pi/env/init/hostname     |  8 ---
 arch/arm/boards/raspberry-pi/rpi.c                 |  3 +
 arch/arm/boards/sama5d3xek/init.c                  |  3 +
 arch/arm/boards/scb9328/env/config                 |  1 -
 arch/arm/boards/scb9328/scb9328.c                  |  3 +
 arch/arm/boards/telit-evk-pro3/init.c              |  3 +
 arch/arm/boards/tny-a926x/init.c                   | 11 ++++
 arch/arm/boards/toshiba-ac100/Kconfig              |  2 -
 arch/arm/boards/tqma53/board.c                     |  4 ++
 arch/arm/boards/tqma53/env/config-board            |  1 -
 arch/arm/boards/usb-a926x/init.c                   | 11 ++++
 arch/arm/boards/versatile/Kconfig                  |  2 -
 arch/arm/boards/versatile/versatilepb.c            |  3 +
 arch/arm/boards/vexpress/Kconfig                   |  2 -
 arch/arm/boards/vexpress/env/config                |  2 -
 arch/arm/boards/vexpress/init.c                    | 20 +++----
 arch/arm/configs/friendlyarm_tiny210_defconfig     |  1 -
 arch/arm/configs/phycard_a_l1_defconfig            |  1 -
 arch/arm/mach-at91/Kconfig                         | 28 ---------
 arch/arm/mach-bcm2835/Kconfig                      |  3 -
 arch/arm/mach-clps711x/Kconfig                     |  3 -
 arch/arm/mach-ep93xx/Kconfig                       | 24 --------
 arch/arm/mach-highbank/Kconfig                     |  3 -
 arch/arm/mach-imx/Kconfig                          | 31 ----------
 arch/arm/mach-mvebu/Kconfig                        |  8 ---
 arch/arm/mach-mvebu/armada-370-xp.c                |  3 +
 arch/arm/mach-mvebu/kirkwood.c                     |  3 +
 arch/arm/mach-mxs/Kconfig                          |  8 ---
 arch/arm/mach-netx/Kconfig                         |  3 -
 arch/arm/mach-nomadik/Kconfig                      |  3 -
 arch/arm/mach-omap/Kconfig                         | 12 ----
 arch/arm/mach-pxa/Kconfig                          |  5 --
 arch/arm/mach-samsung/Kconfig                      |  8 ---
 arch/arm/mach-tegra/Kconfig                        |  3 -
 arch/arm/mach-vexpress/Kconfig                     |  3 -
 arch/arm/mach-zynq/Kconfig                         |  3 -
 arch/blackfin/Kconfig                              |  3 -
 arch/blackfin/boards/ipe337/ipe337.c               |  4 +-
 arch/mips/boards/dlink-dir-320/Kconfig             |  6 --
 arch/mips/boards/dlink-dir-320/serial.c            |  3 +
 arch/mips/boards/netgear-wg102/Kconfig             |  6 --
 arch/mips/boards/netgear-wg102/ram.c               |  3 +
 arch/mips/boards/qemu-malta/Kconfig                |  6 --
 arch/mips/boards/qemu-malta/init.c                 |  3 +
 arch/mips/boards/rzx50/Kconfig                     |  6 --
 arch/mips/boards/rzx50/serial.c                    |  3 +
 arch/mips/mach-ar231x/Kconfig                      |  2 -
 arch/mips/mach-bcm47xx/Kconfig                     |  2 -
 arch/mips/mach-malta/Kconfig                       |  2 -
 arch/mips/mach-xburst/Kconfig                      |  2 -
 arch/nios2/Kconfig                                 |  3 -
 arch/nios2/boards/generic/generic.c                |  3 +
 arch/openrisc/Kconfig                              |  3 -
 arch/openrisc/boards/generic/generic.c             |  3 +
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c      |  3 +
 arch/ppc/boards/pcm030/pcm030.c                    |  3 +
 arch/ppc/mach-mpc5xxx/Kconfig                      |  3 -
 arch/ppc/mach-mpc85xx/Kconfig                      |  3 -
 arch/sandbox/Kconfig                               |  3 -
 arch/sandbox/board/devices.c                       |  3 +
 arch/x86/Kconfig                                   |  3 -
 arch/x86/boards/x86_generic/generic_pc.c           |  3 +
 commands/bootm.c                                   |  6 +-
 commands/dfu.c                                     |  4 +-
 commands/global.c                                  | 17 +-----
 commands/usbserial.c                               |  4 +-
 common/Kconfig                                     |  2 +-
 common/globalvar.c                                 | 19 +++++-
 common/misc.c                                      | 67 ++++++++++++++++++----
 common/reset_source.c                              |  4 +-
 common/version.c                                   |  2 +-
 drivers/of/base.c                                  |  3 +
 include/common.h                                   |  5 +-
 include/globalvar.h                                |  4 +-
 include/usb/dfu.h                                  |  2 +-
 include/usb/usbserial.h                            |  2 +-
 lib/process_escape_sequence.c                      |  2 +-
 net/dhcp.c                                         |  3 +-
 187 files changed, 439 insertions(+), 339 deletions(-)
 delete mode 100644 arch/arm/boards/raspberry-pi/env/init/hostname
 delete mode 100644 arch/mips/boards/dlink-dir-320/Kconfig
 delete mode 100644 arch/mips/boards/netgear-wg102/Kconfig
 delete mode 100644 arch/mips/boards/qemu-malta/Kconfig
 delete mode 100644 arch/mips/boards/rzx50/Kconfig

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
