Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XsrUL-00070S-02
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 11:07:28 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XsrTw-0000NZ-HM
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 12:07:00 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 24 Nov 2014 12:06:40 +0100
Message-Id: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 00/20] First batch of randconfig fixes
To: barebox@lists.infradead.org

This series is the first batch of fixes for errors found by doing
some randconfig builds. Seems we have a good way to go, currently
*all* randconfig builds produced at least one error.

Sascha, are you ok with applying such patches to master? That's the
branch Sisyphus is currently using for doing those tests. If you would
rather like those patches to go into -next please tell me, so I can
adapt Sisyphus to build that in order to keep a resonably short loop
between tests and fixes.

Lucas Stach (20):
  firmware: socfpga: depend on ARCH_SOCFPGA
  firmware: altera-serial: depend on SPI
  firmware: altera-serial: don't try to check void return value
  firmware: altera-serial: fix printf message
  common: firmware: include libfile
  arm: imx: select MFD_MC13XXX for all boards that need it
  arm: imx: select I2C for all boards that need it in their board init
  arm: imx: pca100: select USB ULPI support
  arm: imx: nand update handler depends on MTD layer
  arm: imx: properly stub out NAND bbu handler
  arm: phyflex-imx6: move common.h before other includes
  video: ipuv3: select OFDEVICE for HDMI and LVDS
  mci: esdhc: add back PIO_TIMEOUT
  arm: don't allow to select BUILTIN_DTB when building multiimage
  arm: fill BUILTIN_DTB_NAME for boards that still use this option
  net: ethoc: depend on OPENRISC
  blspec: depend on, not select flexible bootargs
  common: menu needs PROCESS_ESCAPE_SEQUENCE
  usb: gadget: fastboot: select BANNER
  lib: decompress_xz: fix function header to match prototype

 arch/arm/Kconfig                            |  6 ++++++
 arch/arm/boards/phytec-phyflex-imx6/board.c |  2 +-
 arch/arm/mach-imx/Kconfig                   | 24 ++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/bbu.h        | 12 +++++++-----
 common/Kconfig                              |  3 ++-
 common/firmware.c                           |  1 +
 drivers/firmware/Kconfig                    |  2 ++
 drivers/firmware/altera_serial.c            |  6 ++----
 drivers/mci/imx-esdhc.h                     |  2 ++
 drivers/net/Kconfig                         |  1 +
 drivers/usb/gadget/Kconfig                  |  1 +
 drivers/video/imx-ipu-v3/Kconfig            |  2 ++
 include/linux/xz.h                          |  8 ++++----
 lib/decompress_unxz.c                       |  8 ++++----
 14 files changed, 59 insertions(+), 19 deletions(-)

-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
