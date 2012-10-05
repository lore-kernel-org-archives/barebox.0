Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK5Gc-0004P1-HL
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 10:36:27 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TK5Ga-0007C4-R0
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 12:36:24 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TK5Ga-0002P4-Pt
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 12:36:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 12:36:20 +0200
Message-Id: <1349433383-8469-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] more i.MX devicetree support
To: barebox@lists.infradead.org

This adds devicetree support and more devtype based probing to
i.MX drivers.

----------------------------------------------------------------
Sascha Hauer (3):
      serial i.MX: Use devtype data to determine uart version
      net fec_imx: determine fec version based on device ids
      ARM i.MX: Add devicetree support to the ccm drivers

 arch/arm/boards/freescale-mx28-evk/mx28-evk.c  |    2 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c          |    2 +-
 arch/arm/mach-imx/clk-imx1.c                   |    9 +++
 arch/arm/mach-imx/clk-imx21.c                  |    9 +++
 arch/arm/mach-imx/clk-imx25.c                  |    9 +++
 arch/arm/mach-imx/clk-imx27.c                  |    9 +++
 arch/arm/mach-imx/clk-imx31.c                  |    9 +++
 arch/arm/mach-imx/clk-imx35.c                  |    9 +++
 arch/arm/mach-imx/clk-imx5.c                   |   18 +++++
 arch/arm/mach-imx/clk-imx6.c                   |    9 +++
 arch/arm/mach-imx/devices.c                    |   18 ++++-
 arch/arm/mach-imx/include/mach/devices-imx1.h  |    4 +-
 arch/arm/mach-imx/include/mach/devices-imx21.h |    8 +-
 arch/arm/mach-imx/include/mach/devices-imx25.h |   12 +--
 arch/arm/mach-imx/include/mach/devices-imx27.h |   10 +--
 arch/arm/mach-imx/include/mach/devices-imx31.h |   10 +--
 arch/arm/mach-imx/include/mach/devices-imx35.h |    8 +-
 arch/arm/mach-imx/include/mach/devices-imx51.h |    8 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h |    8 +-
 arch/arm/mach-imx/include/mach/devices-imx6.h  |   10 +--
 arch/arm/mach-imx/include/mach/devices.h       |    6 +-
 drivers/net/fec_imx.c                          |   68 +++++++++++++---
 drivers/net/fec_imx.h                          |   22 ++++++
 drivers/serial/serial_imx.c                    |   98 +++++++++++++-----------
 24 files changed, 273 insertions(+), 102 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
