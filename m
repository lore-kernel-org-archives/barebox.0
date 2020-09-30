Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNXlg-00086Y-F9
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 08:47:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kNXlf-0003VR-DY
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 10:47:19 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kNXlf-00016t-54
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 10:47:19 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 30 Sep 2020 10:47:08 +0200
Message-Id: <20200930084716.4200-1-m.felsch@pengutronix.de>
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
Subject: [PATCH v2 0/8] Barebox Deep-Probe
To: barebox@lists.infradead.org

Hi all,

this series is our approach to address the EPROBE_DEFER and initcall
shifting problem. I skip the deep-probe explanation here and instead
refer to the detailed commit message of patch 5.

Thanks a lot to Sascha and Ahmad for the review feedback :) Each patch
has a own changelog so I dropped it from the cover letter.

Patch 1:
 - Another fixes patch. In V1 this was part of patch 5. I seperate this
   patch to make it more clear and clean.

Patche 2-4
 - Deep probe preparation patche

Patch 5:
 - The interesting part of this series. This patch implements the
   deep-probe mechanism and adds helpers to make your board deep-probe
   aware.

Patch 6-7:
 - Adds STM32MP1 and i.MX architecture specific deep-probe code. For
   those architectures this means that we need to populate the
   memory-controller.

Patch 8:
 - Convert the sabrelite board to use the deep_probe mechanism. This can
   be used as example for others :)

Comments and testers are welcome, as always :)

Regards,
  Marco

Lucas Stach (1):
  of: base: move memory init from DT to initcall

Marco Felsch (7):
  of: platform: Keep track of populated platform devices
  of: base: move clock init from of_probe() to barebox_register_of()
  initcall: add of_populate_initcall
  common: add initial barebox deep-probe support
  ARM: i.MX: esdctl: add deep-probe support
  ARM: stm32mp: ddrctrl: add deep-probe support
  ARM: boards: mx6-sabrelite: add deep-probe support

 .../boards/freescale-mx6-sabrelite/board.c    |  24 +-
 arch/arm/mach-imx/esdctl.c                    |  13 +-
 arch/arm/mach-stm32mp/ddrctrl.c               |  13 +-
 common/Makefile                               |   1 +
 common/deep-probe.c                           |  36 +++
 drivers/base/driver.c                         |  11 +-
 drivers/clk/clk.c                             |   5 +
 drivers/i2c/i2c.c                             |   8 +
 drivers/of/base.c                             |  28 ++-
 drivers/of/platform.c                         | 216 +++++++++++++++---
 drivers/regulator/core.c                      |   6 +
 drivers/reset/core.c                          |   4 +
 drivers/spi/spi.c                             |   2 +
 include/asm-generic/barebox.lds.h             |  11 +-
 include/deep-probe.h                          |  26 +++
 include/init.h                                |  10 +-
 include/of.h                                  |  33 ++-
 17 files changed, 392 insertions(+), 55 deletions(-)
 create mode 100644 common/deep-probe.c
 create mode 100644 include/deep-probe.h

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
