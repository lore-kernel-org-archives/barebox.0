Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIdzr-0007hy-Ko
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 10:44:56 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Fri, 13 Apr 2012 12:44:46 +0200
Message-Id: <1334313886-29058-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] arm: tx28: select OCOTP driver
To: barebox@lists.infradead.org

Compile fixes unknown symbol 'mxs_ocotp_read' for tx28 defconfig. Since
the vendor stores the MAC address in OCOTP, we always want this driver.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/mach-mxs/Kconfig |    1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index 4c869dc..3348a3c 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -91,6 +91,7 @@ choice
 
 config MACH_TX28STK5
 	bool "TX28-stk5"
+	select MXS_OCOTP
 	help
 	  Select this entry if you are running the TX28 CPU module on the
 	  KARO TX28 Starterkit5.
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
