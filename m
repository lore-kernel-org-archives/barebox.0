Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aL6uU-0002OX-2o
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 10:19:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1aL6u8-0007MS-Fm
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 11:19:20 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 18 Jan 2016 11:19:20 +0100
Message-Id: <1453112360-25670-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: PXA: move HAVE_CLK select
To: barebox@lists.infradead.org

Claiming that all of PXA has CLK implemented, while only PXA3XX
selects the relevant clock implementations causes lots of build
failures for the other PXA architectures.

Fix it by moving the HAVE_CLK select to the one PXA arch, that
actually has it.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/Kconfig          | 1 -
 arch/arm/mach-pxa/Kconfig | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 71d4336d2a70..1fc887ba5971 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -161,7 +161,6 @@ config ARCH_PXA
 	bool "Intel/Marvell PXA based"
 	select GENERIC_GPIO
 	select HAS_POWEROFF
-	select HAVE_CLK
 
 config ARCH_ROCKCHIP
 	bool "Rockchip RX3xxx"
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 1c0894892b17..06ad1885a622 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -17,6 +17,7 @@ config ARCH_PXA2XX
 config ARCH_PXA3XX
        bool
        select CPU_XSC3
+       select HAVE_CLK
        select CLKDEV_LOOKUP
        select COMMON_CLK
 
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
