Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XTQup-0000YB-0d
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 07:41:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XTQuR-0002nt-PJ
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 09:41:15 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1XTQuR-00021n-M6
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 09:41:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Sep 2014 09:41:08 +0200
Message-Id: <1410766873-4393-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: mvebu multi SoC support
To: barebox@lists.infradead.org

Hi All,

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

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      ARM: mvebu: Add common reset_cpu function
      ARM: mvebu: Simplify memory init order
      ARM: mvebu: Check for correct SoC in of_fixup callback
      ARM: mvebu: Allow multiple SoCs
      ARM: Add mvebu_defconfig

 arch/arm/configs/mvebu_defconfig          | 108 ++++++++++++++++++++++++++++++
 arch/arm/mach-mvebu/Kconfig               |  38 ++++-------
 arch/arm/mach-mvebu/armada-370-xp.c       |  25 ++++---
 arch/arm/mach-mvebu/common.c              |  45 +++++++------
 arch/arm/mach-mvebu/dove.c                |  27 +++++---
 arch/arm/mach-mvebu/include/mach/common.h |   3 +-
 arch/arm/mach-mvebu/kirkwood.c            |  25 ++++---
 7 files changed, 197 insertions(+), 74 deletions(-)
 create mode 100644 arch/arm/configs/mvebu_defconfig

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
