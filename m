Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9T-0001MA-5U
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:00 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UOq9R-00075U-1Q
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 16:00:57 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UOq9R-00074N-0J
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 16:00:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:34 +0200
Message-Id: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Add device parameter convenience helpers
To: barebox@lists.infradead.org


This series adds device parameter convenience helpers and uses them
where appropriate. We provide a helper for integers, bools and read
only integers.

The idea is to provide parameter functions which are passed a pointer
to the actual integer value and a printf format string. The get/set
callbacks are optional and are only used as a notifier for the driver
if a parameter is about to be read or written. The actual parameter
value is stored in the integer pointer provided to the parameter functions.
This way drivers no longer have to to integer <-> string conversions
and can be much simpler.

Sascha

----------------------------------------------------------------
Sascha Hauer (21):
      param: Add dev member to struct param_d
      param: refactor __dev_add_param
      param: Add integer and boolean parameter helpers
      param: Add ip address convenience function
      net: ksz8864: Use dev_add_param_bool for enable parameter
      net: store ethernet device parameters in device
      netconsole: use dev_add_param_* helpers
      param: remove now unused dev_[gs]et_param_ip
      treewide: Use dev_add_param_int_ro where possible
      mci: Use dev_add_param_int for probe parameter
      ata: Use dev_add_param_bool for probe parameter
      fb: Use dev_add_param_bool for enable parameter
      fb: imxfb: Use dev_add_param_int for alpha parameter
      fb: imx-ipu-fb: Use dev_add_param_int for alpha parameter
      param: pass param to dev_remove_param
      pwm: Use dev_add_param_int for pwm parameters
      ARM: i.MX: iim: Use dev_add_param_bool for parameters
      console: Use dev_add_param_int for baudrate parameter
      mtd: Nand: Use dev_add_param_bool for erasebad parameter
      USB gadget at91: Use dev_add_param_bool for vbus parameter
      ARM: MXS: ocotp: Use dev_add_param_bool for parameter

 arch/arm/boards/at91sam9m10ihd/hw_version.c |   6 +-
 arch/arm/boards/at91sam9x5ek/hw_version.c   |   6 +-
 arch/arm/boards/sama5d3xek/hw_version.c     |   6 +-
 arch/arm/mach-imx/iim.c                     |  65 ++----
 arch/arm/mach-mxs/ocotp.c                   |  34 +---
 common/console.c                            |  26 +--
 drivers/amba/bus.c                          |   9 +-
 drivers/ata/disk_ata_drive.c                |  21 +-
 drivers/input/qt1070.c                      |   6 +-
 drivers/mci/mci-core.c                      |  43 ++--
 drivers/mtd/core.c                          |  13 +-
 drivers/mtd/nand/nand_base.c                |  22 +-
 drivers/net/ksz8864rmn.c                    |  30 +--
 drivers/net/phy/mdio_bus.c                  |   8 +-
 drivers/pwm/core.c                          |  89 +++------
 drivers/usb/core/usb.c                      |  19 +-
 drivers/usb/gadget/at91_udc.c               |  23 +--
 drivers/video/fb.c                          |  33 ++-
 drivers/video/imx-ipu-fb.c                  |  27 +--
 drivers/video/imx.c                         |  26 +--
 include/ata_drive.h                         |   1 +
 include/console.h                           |   2 +
 include/fb.h                                |   1 +
 include/linux/mtd/mtd.h                     |   1 +
 include/mci.h                               |   2 +
 include/net.h                               |   7 +-
 include/param.h                             |  66 ++++--
 lib/parameter.c                             | 300 ++++++++++++++++++++++++----
 net/eth.c                                   |  40 +---
 net/net.c                                   |  80 +++-----
 net/netconsole.c                            |  50 +----
 31 files changed, 536 insertions(+), 526 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
