Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x236.google.com ([2a00:1450:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAZx-00012m-Pl
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:05 +0000
Received: by mail-wi0-f182.google.com with SMTP id bs8so4867906wib.15
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:10:39 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:10:28 +0200
Message-Id: <1403554235-12674-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 0/7] Marvell MVEBU assorted fixes and cleanup
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This patch set comprises cleanup and some fixes for outstanding bugs in
Marvell MVEBU SoC support.

Patch 1 adds default model and hostname for Dove SoCs.

Patch 2 consolidates TEXT_BASE from per-board to per-SoC selection.

Patch 3 removes an unused include.

Patch 4 consolidates lowlevel code from two different files to a single file.

Patch 5 fixes typos in Armada 370 TCLK frequencies.

Patch 6 adds a 25MHz reference clock to Armada XP SoC init.

Patch 7 splits timer initialization for Armada 370 and XP, which uses a
fixed 25MHz reference clock instead of divided TCLK.

The patches are based on today's next.

A branch based on *unstable* next is available at:
https://github.com/shesselba/barebox-dove.git mvebu/cleanup

Sebastian Hesselbarth (7):
  ARM: mvebu: set model and default hostname for Dove
  ARM: mvebu: set default TEXT_BASE by SoC
  ARM: mvebu: delete unused mach/mvebu.h
  ARM: mvebu: move lowlevel code to lowlevel.c
  clk: mvebu: fix Armada 370 TCLK frequencies
  ARM: mvebu: add 25MHz fixed clock for Armada XP
  clocksource: mvebu: split initialization for Armada 370/XP

 arch/arm/mach-mvebu/Kconfig              | 10 ++---
 arch/arm/mach-mvebu/Makefile             |  2 +-
 arch/arm/mach-mvebu/armada-370-xp.c      |  5 +++
 arch/arm/mach-mvebu/common.c             | 40 --------------------
 arch/arm/mach-mvebu/dove.c               |  3 ++
 arch/arm/mach-mvebu/include/mach/mvebu.h | 22 -----------
 arch/arm/mach-mvebu/lowlevel.c           | 37 ++++++++++++++++++
 drivers/clk/mvebu/armada-370.c           |  4 +-
 drivers/clocksource/mvebu.c              | 65 ++++++++++++++++++++------------
 9 files changed, 92 insertions(+), 96 deletions(-)
 delete mode 100644 arch/arm/mach-mvebu/include/mach/mvebu.h

---
Cc: barebox@lists.infradead.org
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
