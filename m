Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjDFB-0002Nx-LH
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 17:38:34 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SjDF9-0004VX-Il
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 19:38:31 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1SjDF9-0004dS-HR
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 19:38:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 19:38:18 +0200
Message-Id: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] sparse fixes
To: barebox@lists.infradead.org

This series fixes a bunch of sparse warnings. Don't worry, there are
still some left in the tree ;)

Sascha

----------------------------------------------------------------
Sascha Hauer (12):
      MMC i.MX esdhc: Fix sparse warnings
      tlsf: Use NULL instead of 0 for returning NULL pointers
      qsort: declare strcmp_compar publically
      Do not use iomem space for dev_get_mem_region
      define __user empty
      ARM i.MX speed: sparse fixes
      USB ohci: Fix sparse warnings
      net smc911x: Use __iomem for register base
      ARM i.MX clocksource: put registers in iomem space
      USB gadget fsl: Put registers into iomem space
      fs FAT: fix warning: Using plain integer as NULL pointer
      of: Fix usage of 0 as NULL pointer

 arch/arm/mach-imx/clocksource.c        |   12 ++++++----
 arch/arm/mach-imx/include/mach/clock.h |    2 ++
 arch/arm/mach-imx/speed-imx35.c        |    2 +-
 arch/arm/mach-imx/speed-imx51.c        |    5 ++--
 arch/arm/mach-imx/speed-imx53.c        |    3 ++-
 common/oftree.c                        |    2 +-
 common/tlsf.c                          |   12 +++++-----
 drivers/base/driver.c                  |    6 ++---
 drivers/mci/imx-esdhc.c                |   20 ++++++++--------
 drivers/mtd/ubi/ubi-barebox.h          |    1 -
 drivers/net/smc911x.c                  |    2 +-
 drivers/usb/gadget/fsl_udc.c           |    2 +-
 drivers/usb/host/ohci-hcd.c            |   40 ++++++--------------------------
 drivers/usb/host/ohci.h                |    2 +-
 fs/fat/ff.c                            |   10 ++++----
 include/driver.h                       |    2 +-
 include/linux/compiler.h               |    2 +-
 include/qsort.h                        |    2 ++
 18 files changed, 54 insertions(+), 73 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
