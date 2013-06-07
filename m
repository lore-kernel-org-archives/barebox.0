Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ukvzb-0003uB-UT
 for barebox@lists.infradead.org; Fri, 07 Jun 2013 12:42:14 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  7 Jun 2013 14:41:29 +0200
Message-Id: <1370608890-13776-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1370608890-13776-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1370608890-13776-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: i.MX53: tqma53: move RAM setting to submenu
To: barebox@lists.infradead.org
Cc: Markus Niebel <Markus.Niebel@tqs.de>, Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Markus Niebel <Markus.Niebel@tqs.de>

Signed-off-by: Markus Niebel <Markus.Niebel@tqs.de>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 0e4eb1d..4a8f6b7 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -466,12 +466,6 @@ config MACH_TQMA53
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	bool "TQ i.MX53 TQMa53"
 
-config MACH_TQMA53_1GB_RAM
-	bool "Use 1GiB of SDRAM"
-	depends on MACH_TQMA53
-	help
-	  use 1GiB of SDRAM (512MiB otherwise)
-
 config MACH_TX53
 	bool "Ka-Ro TX53"
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
@@ -592,6 +586,16 @@ endchoice
 
 endif
 
+if MACH_TQMA53
+
+config MACH_TQMA53_1GB_RAM
+	bool "Use 1GiB of SDRAM"
+	depends on MACH_TQMA53
+	help
+	  use 1GiB of SDRAM (512MiB otherwise)
+
+endif
+
 endmenu
 
 menu "i.MX specific settings"
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
