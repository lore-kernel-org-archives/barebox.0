Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgbWS-0007I7-Qu
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:29:53 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TgbWP-0004CG-AM
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 14:29:49 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TgbWP-0006JS-9F
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 14:29:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Dec 2012 14:29:42 +0100
Message-Id: <1354800588-23053-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX (and one generic) clock patches
To: barebox@lists.infradead.org

The following has some fixes to the i.MX6 clock support I recently
included in the kernel, mostly needed for adding SATA support.

Interesting for non-i.MX users is the patch adding a table based
divider to the common clk stuff.

Sascha

----------------------------------------------------------------
Sascha Hauer (6):
      ARM i.MX6: fix ethernet PLL rate
      ARM i.MX6: rename PLLs according to datasheet
      clk: Add clk table based divider support
      ARM i.MX6 pllv3: Do not use delay functions
      ARM i.MX6 clk: remove gate_mask from pllv3
      ARM i.MX6: Add sata device

 arch/arm/mach-imx/clk-imx6.c                  |   40 ++++++---
 arch/arm/mach-imx/clk-pllv3.c                 |   83 +++--------------
 arch/arm/mach-imx/clk.h                       |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx6.h |    5 ++
 arch/arm/mach-imx/include/mach/imx6-regs.h    |    2 +
 drivers/clk/Makefile                          |    2 +-
 drivers/clk/clk-divider-table.c               |  119 +++++++++++++++++++++++++
 include/linux/clk.h                           |   10 +++
 8 files changed, 180 insertions(+), 83 deletions(-)
 create mode 100644 drivers/clk/clk-divider-table.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
