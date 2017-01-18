Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cTmuS-0007Nh-6b
 for barebox@lists.infradead.org; Wed, 18 Jan 2017 09:52:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cTmu5-0005xJ-IJ
 for barebox@lists.infradead.org; Wed, 18 Jan 2017 10:51:41 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 18 Jan 2017 10:51:41 +0100
Message-Id: <20170118095141.5571-1-l.stach@pengutronix.de>
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
Subject: [PATCH] arm: omap: OMAP_SERIALBOOT needs console support
To: barebox@lists.infradead.org

It is quite useless without a console and breaks the build.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index ff37731f70ff..95013acebeec 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -156,6 +156,7 @@ config OMAP_SERIALBOOT
 	select XYMODEM
 	select FS_RAMFS
 	depends on ARCH_AM33XX && SHELL_NONE
+	depends on !CONSOLE_NONE
 	help
 	  Say Y here if you want to load the 2nd stage barebox.bin with
 	  xmodem after booting from serial line.
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
