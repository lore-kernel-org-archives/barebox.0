Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rkzcc-0002DP-IK
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 14:57:51 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id q0BEvmw2029582
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 08:57:49 -0600
Received: from DBDE70.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q0BEvlp1020033
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 20:27:47 +0530 (IST)
From: Sanjeev Premi <premi@ti.com>
Date: Wed, 11 Jan 2012 20:27:20 +0530
Message-ID: <1326293842-3063-4-git-send-email-premi@ti.com>
In-Reply-To: <s.hauer@pengutronix.de,plagnioj@jcrosoft.com,J.Kilb@phytec.de>
References: <s.hauer@pengutronix.de,plagnioj@jcrosoft.com,J.Kilb@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/5] ARM omap3evm: Allow building first stage bootloader
To: barebox@lists.infradead.org

Enable the flag HAVE_NOSHELL to allow first stage
bootloader to be built for this board.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 Tested after creating minimal configuration based on
 omap3530_beagle_xload_defconfig.


 arch/arm/mach-omap/Kconfig |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 73125a7..72c6850 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -133,6 +133,7 @@ config MACH_OMAP3EVM
 	bool "Texas Instrument's OMAP3 EVM"
 	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_ALL
+	select HAVE_NOSHELL
 	select HAS_OMAP_NAND
 	depends on ARCH_OMAP3
 	  help
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
