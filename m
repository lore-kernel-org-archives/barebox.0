Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22d.google.com ([2a00:1450:400c:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XULky-000434-IC
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 20:23:17 +0000
Received: by mail-wg0-f45.google.com with SMTP id z12so1982810wgg.16
 for <barebox@lists.infradead.org>; Wed, 17 Sep 2014 13:22:53 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 17 Sep 2014 22:22:38 +0200
Message-Id: <1410985364-7105-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 0/6] mvebu multi SoC support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This is v2 of the Multi-SoC series for MVEBU. It has been tested
on Kirkwood (Guruplug), Dove (CuBox), and Armada 370 (Mirabox)
with the very same non-EABI binary. It should also work on Armada
XP but I cannot test right now.

Overall changes:
- Add mbus_range compatible check to allow to register mbus ranges
  per SoC.
- Remove CONFIG_AEABI from mvebu_defconfig since it fails on ARMv5TE
  (Kirkwood) with my gcc 4.7.2 cross-compiler.
- Add a bunch of new drivers to mvebu_defconfig.

Original cover letter from Sascha's v1:

The following series allows to select multiple mvebu SoCs at once.
Additionally a mvebu_defconfig is added to collect all mvebu based
boards.

I couldn't test this series. We have a cubox somewhere, but it seems
to have disappeared from our remotelab. Sebastian, could you give
this series a try?

The goal is to remove the board specific defconfigs in the next step,
but I don't want to do this until the mvebu_defconfig is confirmed
working. The defconfig files could use an overhaul anyway. We now
have networking support for mvebu, but it's not enabled in the config.

Sascha Hauer (5):
  ARM: mvebu: Add common reset_cpu function
  ARM: mvebu: Simplify memory init order
  ARM: mvebu: Check for correct SoC in of_fixup callback
  ARM: mvebu: Allow multiple SoCs
  ARM: Add mvebu_defconfig

Sebastian Hesselbarth (1):
  ARM: mvebu: Add machine compatible to mbus ranges

 arch/arm/configs/mvebu_defconfig          | 123 ++++++++++++++++++++++++++++++
 arch/arm/mach-mvebu/Kconfig               |  37 ++++-----
 arch/arm/mach-mvebu/armada-370-xp.c       |  28 ++++---
 arch/arm/mach-mvebu/common.c              |  45 +++++------
 arch/arm/mach-mvebu/dove.c                |  33 +++++---
 arch/arm/mach-mvebu/include/mach/common.h |   3 +-
 arch/arm/mach-mvebu/kirkwood.c            |  28 ++++---
 drivers/bus/mvebu-mbus.c                  |   6 +-
 include/linux/mbus.h                      |   3 +-
 9 files changed, 231 insertions(+), 75 deletions(-)
 create mode 100644 arch/arm/configs/mvebu_defconfig

---
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
