Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22c.google.com ([2a00:1450:4008:c01::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9xXn-00061p-AM
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 13:24:54 +0000
Received: by mail-bk0-f44.google.com with SMTP id mz10so229144bkb.3
 for <barebox@lists.infradead.org>; Thu, 15 Aug 2013 06:24:26 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Thu, 15 Aug 2013 15:24:16 +0200
Message-Id: <1376573059-15055-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 0/3] Marvell MVEBU OF clock providers
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

This patch set adds OF clock providers for core clocks and clock gates found
on Marvell MVEBU SoCs (Armada 370, Armada XP, Dove, and Kirkwood). The code
has been adopted for Barebox from Linux clock providers.

Patch 1 adds a missing clocks property to the timer node of Dove DT.
Patch 2 adds OF clock providers for the four SoCs above.
Patch 3 coverts Dove SoC init to DT probed devices only.

The patches have been tested on SolidRun CuBox for Dove. Other SoCs are
compile tested only as they have not been ported to DT, yet (Armada 370
has, but shares SoC init with Armada XP which has not).

Sebastian Hesselbarth (3):
  ARM: dove: add missing clocks property to timer node
  clk: mvebu: add OF clock providers for Marvell MVEBU SoCs
  ARM: dove: remove temporary clock and non-DT device probing

 arch/arm/Kconfig               |    1 +
 arch/arm/dts/dove.dtsi         |    3 +-
 arch/arm/mach-mvebu/dove.c     |   58 ----------
 drivers/clk/Makefile           |    1 +
 drivers/clk/mvebu/Makefile     |    5 +
 drivers/clk/mvebu/armada-370.c |  160 ++++++++++++++++++++++++++++
 drivers/clk/mvebu/armada-xp.c  |  194 ++++++++++++++++++++++++++++++++++
 drivers/clk/mvebu/common.c     |  208 +++++++++++++++++++++++++++++++++++++
 drivers/clk/mvebu/common.h     |   70 +++++++++++++
 drivers/clk/mvebu/dove.c       |  179 ++++++++++++++++++++++++++++++++
 drivers/clk/mvebu/kirkwood.c   |  224 ++++++++++++++++++++++++++++++++++++++++
 11 files changed, 1044 insertions(+), 59 deletions(-)
 create mode 100644 drivers/clk/mvebu/Makefile
 create mode 100644 drivers/clk/mvebu/armada-370.c
 create mode 100644 drivers/clk/mvebu/armada-xp.c
 create mode 100644 drivers/clk/mvebu/common.c
 create mode 100644 drivers/clk/mvebu/common.h
 create mode 100644 drivers/clk/mvebu/dove.c
 create mode 100644 drivers/clk/mvebu/kirkwood.c

---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
