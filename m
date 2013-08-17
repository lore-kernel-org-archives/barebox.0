Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VAclo-0003FG-Dh
 for barebox@lists.infradead.org; Sat, 17 Aug 2013 09:26:11 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VAclO-0008JC-Oc
 for barebox@lists.infradead.org; Sat, 17 Aug 2013 11:25:38 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VAclO-0003IH-NX
 for barebox@lists.infradead.org; Sat, 17 Aug 2013 11:25:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 17 Aug 2013 11:25:29 +0200
Message-Id: <1376731537-12102-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] cleanup gpio includes
To: barebox@lists.infradead.org

Several users include <mach/gpio.h> rather than <gpio.h>. Several
SoCs abuse the gpio headers for iomux stuff. Clean this up and
as a last step remove the need for <mach/gpio.h> for gpiolib users.

Sascha

----------------------------------------------------------------
Sascha Hauer (8):
      ARM: AT91: Add missing include
      ARM: include <gpio.h> instead of <mach/gpio.h>
      ARM: i.MX23: Fix double include protection
      ARM: AT91: move iomux definitions to iomux.h
      ARM: MXS: move iomux definitions to iomux.h
      ARM: Samsung: move iomux definitions to iomux.h
      ARM: i.MX: move iomux definitions to iomux.h
      ARM: remove include of mach/gpio.h for gpiolib users

 arch/arm/boards/animeo_ip/init.c                   |   1 +
 arch/arm/boards/at91rm9200ek/init.c                |   3 +-
 arch/arm/boards/at91sam9260ek/init.c               |   1 +
 arch/arm/boards/at91sam9261ek/init.c               |   1 +
 arch/arm/boards/at91sam9263ek/init.c               |   1 +
 arch/arm/boards/at91sam9m10g45ek/init.c            |   3 +-
 arch/arm/boards/at91sam9m10ihd/init.c              |   1 +
 arch/arm/boards/at91sam9n12ek/init.c               |   1 +
 arch/arm/boards/at91sam9x5ek/init.c                |   1 +
 arch/arm/boards/ccxmx51/ccxmx51.c                  |   1 -
 arch/arm/boards/ccxmx51/ccxmx51js.c                |   2 +-
 arch/arm/boards/chumby_falconwing/falconwing.c     |   1 +
 arch/arm/boards/dss11/init.c                       |   1 +
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |   2 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |   2 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |   2 +-
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |   1 +
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |   2 +-
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      |   1 +
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   2 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |   2 +-
 arch/arm/boards/freescale-mx53-smd/board.c         |   2 +-
 arch/arm/boards/freescale-mx6-arm2/board.c         |   2 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |   3 +-
 arch/arm/boards/freescale-mx6-sabresd/board.c      |   3 +-
 arch/arm/boards/friendlyarm-mini2440/mini2440.c    |   3 +-
 arch/arm/boards/friendlyarm-mini6410/mini6410.c    |   1 +
 arch/arm/boards/friendlyarm-tiny210/tiny210.c      |   1 +
 .../friendlyarm-tiny6410/development-board.c       |   1 +
 arch/arm/boards/friendlyarm-tiny6410/tiny6410.c    |   1 +
 arch/arm/boards/guf-cupid/board.c                  |   2 +-
 arch/arm/boards/guf-neso/board.c                   |   2 +-
 arch/arm/boards/imx21ads/imx21ads.c                |   2 +-
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |   1 +
 arch/arm/boards/imx27ads/imx27ads.c                |   2 +-
 arch/arm/boards/karo-tx25/board.c                  |   2 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c              |   1 +
 arch/arm/boards/karo-tx28/tx28.c                   |   1 +
 arch/arm/boards/karo-tx51/tx51.c                   |   2 +-
 arch/arm/boards/karo-tx53/board.c                  |   2 +-
 arch/arm/boards/mmccpu/init.c                      |   3 +-
 arch/arm/boards/panda/board.c                      |   2 +-
 arch/arm/boards/pcm037/pcm037.c                    |   2 +-
 arch/arm/boards/pcm038/pcm038.c                    |   2 +-
 arch/arm/boards/pcm038/pcm970.c                    |   2 +-
 arch/arm/boards/pcm043/pcm043.c                    |   2 +-
 arch/arm/boards/pcm049/board.c                     |   2 +-
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c          |   2 +-
 arch/arm/boards/phycard-i.MX27/pca100.c            |   2 +-
 arch/arm/boards/pm9261/init.c                      |   3 +-
 arch/arm/boards/pm9263/init.c                      |   3 +-
 arch/arm/boards/pm9g45/init.c                      |   3 +-
 arch/arm/boards/qil-a926x/init.c                   |   1 +
 arch/arm/boards/sama5d3xek/init.c                  |   1 +
 arch/arm/boards/scb9328/scb9328.c                  |   1 -
 arch/arm/boards/telit-evk-pro3/init.c              |   1 +
 arch/arm/boards/tny-a926x/init.c                   |   1 +
 arch/arm/boards/tqma53/board.c                     |   2 +-
 arch/arm/boards/usb-a926x/init.c                   |   1 +
 arch/arm/include/asm/gpio.h                        |   5 +-
 arch/arm/mach-at91/at91rm9200_devices.c            |   3 +-
 arch/arm/mach-at91/at91sam9260_devices.c           |   3 +-
 arch/arm/mach-at91/at91sam9261_devices.c           |   3 +-
 arch/arm/mach-at91/at91sam9263_devices.c           |   3 +-
 arch/arm/mach-at91/at91sam9g45_devices.c           |   3 +-
 arch/arm/mach-at91/at91sam9n12_devices.c           |   3 +-
 arch/arm/mach-at91/at91sam9x5_devices.c            |   3 +-
 arch/arm/mach-at91/gpio.c                          |   2 +-
 arch/arm/mach-at91/include/mach/gpio.h             | 268 ---------------------
 arch/arm/mach-at91/include/mach/io.h               |   1 +
 arch/arm/mach-at91/include/mach/iomux.h            | 266 ++++++++++++++++++++
 arch/arm/mach-at91/sama5d3_devices.c               |   3 +-
 arch/arm/mach-bcm2835/include/mach/gpio.h          |   1 -
 arch/arm/mach-clps711x/include/mach/gpio.h         |   3 -
 arch/arm/mach-highbank/include/mach/gpio.h         |   1 -
 arch/arm/mach-imx/include/mach/gpio.h              |   8 -
 arch/arm/mach-imx/include/mach/iomux-v1.h          |   1 +
 arch/arm/mach-mvebu/include/mach/gpio.h            |   6 -
 arch/arm/mach-mxs/include/mach/gpio.h              |  11 -
 arch/arm/mach-mxs/include/mach/iomux-imx23.h       |   6 +-
 arch/arm/mach-mxs/include/mach/iomux.h             |  30 +++
 arch/arm/mach-mxs/iomux-imx.c                      |   1 +
 arch/arm/mach-omap/include/mach/gpio.h             |   1 -
 arch/arm/mach-omap/omap4_generic.c                 |   1 -
 arch/arm/mach-samsung/gpio-s3c24x0.c               |   1 +
 arch/arm/mach-samsung/gpio-s3c64xx.c               |   1 +
 arch/arm/mach-samsung/gpio-s5pcxx.c                |   1 +
 arch/arm/mach-samsung/include/mach/gpio.h          |  12 -
 arch/arm/mach-samsung/include/mach/iomux.h         |  28 +++
 arch/arm/mach-tegra/include/mach/gpio.h            |   1 -
 drivers/spi/atmel_spi.c                            |   1 +
 92 files changed, 420 insertions(+), 365 deletions(-)
 create mode 100644 arch/arm/mach-at91/include/mach/iomux.h
 delete mode 100644 arch/arm/mach-bcm2835/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-clps711x/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-highbank/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-imx/include/mach/gpio.h
 delete mode 100644 arch/arm/mach-mvebu/include/mach/gpio.h
 create mode 100644 arch/arm/mach-mxs/include/mach/iomux.h
 delete mode 100644 arch/arm/mach-omap/include/mach/gpio.h
 create mode 100644 arch/arm/mach-samsung/include/mach/iomux.h
 delete mode 100644 arch/arm/mach-tegra/include/mach/gpio.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
