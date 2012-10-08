Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLJFW-00058E-QP
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 19:44:26 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TLJFU-0001Y9-MO
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 21:44:20 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TLJFU-0005Ig-Ll
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 21:44:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 21:44:09 +0200
Message-Id: <1349725459-20226-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX clk
To: barebox@lists.infradead.org

Another round of clk patches, mostly driven by the fact that
the i.MX LCD controller does not have an enable bit. Instead
it starts once a clock is provided.

Sascha

----------------------------------------------------------------
Sascha Hauer (10):
      clk: Add clk gate support
      ARM i.MX: Add clk_gate inline function
      ARM i.MX21: Fix CSPI parent clock
      ARM i.MX21: Enable all needed clocks during startup
      ARM i.MX25: Enable all needed clocks during startup
      ARM i.MX21: Add lcdc per gate
      ARM i.MX27: Add lcdc per gate
      ARM i.MX25: Add lcdc per gate
      video i.MX: Use regular clk_[en|dis]able functions
      ARM i.MX: Enable clocks in common place

 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   15 ----
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    1 -
 arch/arm/boards/guf-neso/lowlevel.c               |    2 -
 arch/arm/boards/imx21ads/imx21ads.c               |    1 -
 arch/arm/boards/pcm038/lowlevel.c                 |    2 -
 arch/arm/boards/pcm038/pcm038.c                   |    4 --
 arch/arm/boards/pcm038/pcm970.c                   |    1 -
 arch/arm/boards/phycard-i.MX27/pca100.c           |    4 --
 arch/arm/mach-imx/clk-imx21.c                     |   17 ++++-
 arch/arm/mach-imx/clk-imx25.c                     |   20 ++++--
 arch/arm/mach-imx/clk-imx27.c                     |   25 +++----
 arch/arm/mach-imx/clk.h                           |    6 ++
 arch/arm/mach-imx/clocksource.c                   |   12 ----
 drivers/clk/Makefile                              |    3 +-
 drivers/clk/clk-gate.c                            |   78 +++++++++++++++++++++
 drivers/mtd/nand/nand_imx.c                       |    6 --
 drivers/net/fec_imx.c                             |    4 +-
 drivers/video/imx.c                               |   44 ++----------
 include/linux/clk.h                               |    2 +
 19 files changed, 137 insertions(+), 110 deletions(-)
 create mode 100644 drivers/clk/clk-gate.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
