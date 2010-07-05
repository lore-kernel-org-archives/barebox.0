Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVjCO-0003oG-D1
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 10:46:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Jul 2010 12:46:45 +0200
Message-Id: <1278326807-31431-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1278326807-31431-1-git-send-email-s.hauer@pengutronix.de>
References: <1278326807-31431-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] omap: remove unused defines and corresponding kconfig
	options
To: barebox@lists.infradead.org
Cc: Nishanth Menon <x0nishan@ti.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig |   14 --------------
 board/omap/config.h        |    5 -----
 2 files changed, 0 insertions(+), 19 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 99b9f9d..e523080 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -39,20 +39,6 @@ config ARCH_OMAP3
 
 endchoice
 
-config OMAP_CONFIG_STACKSIZE
-	prompt "STACKSIZE"
-	hex
-	default 0x00020000
-	help
-	  Select the Stack Size when defaults are used
-
-config OMAP_MALLOC_LEN
-	prompt "MALLOC LENGTH"
-	hex
-	default 0x00001000
-	help
-	  Select the Malloc Length when defaults are used
-
  ### Generic Clock configurations to be enabled by Mach - invisible to enable.
  config OMAP_CLOCK_UART
  	bool
diff --git a/board/omap/config.h b/board/omap/config.h
index 28b6273..707b3c4 100644
--- a/board/omap/config.h
+++ b/board/omap/config.h
@@ -30,9 +30,4 @@
 #ifndef __MACH_OMAP_CONFIG_H
 #define __MACH_OMAP_CONFIG_H
 
-/** define CFG_MALLOC_LEN from Kconfig define */
-#define CFG_MALLOC_LEN     CONFIG_OMAP_MALLOC_LEN
-/** define CONFIG_STACKSIZE from Kconfig define */
-#define CONFIG_STACKSIZE   CONFIG_OMAP_CONFIG_STACKSIZE
-
 #endif /* __MACH_OMAP_CONFIG_H */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
