Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxTX9-0006w0-3l
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 07:14:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1cxTWn-0003I2-GR
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 09:14:21 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.88)
 (envelope-from <sha@pengutronix.de>) id 1cxTWn-0007Rd-0F
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 09:14:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Apr 2017 09:14:10 +0200
Message-Id: <20170410071420.26884-1-s.hauer@pengutronix.de>
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
Subject: improve device parameter types
To: Barebox List <barebox@lists.infradead.org>

This series improves the device parameter types and also the
global/nv variables. So far we only had 'int' both for signed
and unsigned variables. This series adds support for explicitly
signed or unsigned variables.
Until now the globalvars were all read/write, but some should really
be readonly (like the barebox version for example). This series
adds support for readonly globalvars.

----------------------------------------------------------------
Sascha Hauer (10):
      ARM: socfpga: change param_type struct name
      parameter: Give device parameters types
      lib: implement simple_strtoll
      console: Use dev_add_param_string
      mtd: nand: use dev_add_param_enum
      mtd: use dev_add_param_string
      net: use dev_add_param_string
      param: make parameter functions more consistent
      globalvar: make globalvar functions more consistent
      param: remove unnecessary device_d * argument

 arch/arm/boards/at91sam9m10ihd/hw_version.c      |   4 +-
 arch/arm/boards/at91sam9x5ek/hw_version.c        |   4 +-
 arch/arm/boards/beaglebone/board.c               |   2 +-
 arch/arm/boards/crystalfontz-cfa10036/hwdetect.c |   2 +-
 arch/arm/boards/phytec-som-imx6/board.c          |   2 +-
 arch/arm/boards/sama5d3xek/hw_version.c          |   4 +-
 arch/arm/boards/vscom-baltos/board.c             |   7 +-
 arch/arm/mach-socfpga/include/mach/sequencer.h   |   2 +-
 arch/ppc/boards/pcm030/eeprom.c                  |   4 +-
 commands/devinfo.c                               |   3 +-
 common/boot.c                                    |   2 +-
 common/bootchooser.c                             |   4 +-
 common/bootm.c                                   |   2 +-
 common/console.c                                 |  52 +++--
 common/console_common.c                          |   6 +-
 common/globalvar.c                               |  42 ++--
 common/partitions/dos.c                          |   2 +-
 common/password.c                                |   2 +-
 common/reset_source.c                            |   2 +-
 common/state/state_variables.c                   |   4 +-
 drivers/amba/bus.c                               |   2 +-
 drivers/efi/efi-device.c                         |  10 +-
 drivers/input/qt1070.c                           |   4 +-
 drivers/mtd/core.c                               |  30 +--
 drivers/mtd/nand/nand_base.c                     |  34 ++-
 drivers/mtd/peb.c                                |   6 +-
 drivers/mtd/ubi/build.c                          |  22 +-
 drivers/net/phy/mdio_bus.c                       |   4 +-
 drivers/pwm/core.c                               |   4 +-
 drivers/usb/core/usb.c                           |  16 +-
 drivers/usb/gadget/udc-core.c                    |   4 +-
 drivers/video/backlight.c                        |   2 +-
 drivers/video/imx-ipu-fb.c                       |   2 +-
 drivers/video/imx.c                              |   2 +-
 include/console.h                                |   2 +-
 include/globalvar.h                              | 109 ++++++++--
 include/linux/kernel.h                           |   1 +
 include/linux/mtd/mtd.h                          |   1 +
 include/linux/mtd/nand.h                         |   1 +
 include/param.h                                  | 195 +++++++++++++----
 lib/parameter.c                                  | 254 +++++++++++------------
 lib/strtox.c                                     |   8 +
 net/net.c                                        |  11 +-
 43 files changed, 541 insertions(+), 335 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
