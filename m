Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tkso2-00040z-NQ
 for barebox@lists.infradead.org; Tue, 18 Dec 2012 08:45:43 +0000
From: barebox@lists.infradead.org
Date: Tue, 18 Dec 2012 09:45:38 +0100
Message-Id: <1355820338-5911-1-git-send-email-barebox@lists.infradead.org>
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
Subject: [PATCH] ARM OMAP: add help text for OMAP_BUILD_IFT
To: barebox@lists.infradead.org

From: Jan Luebbe <jlu@pengutronix.de>

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig |    6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 451783e..27626a2 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -67,8 +67,12 @@ config OMAP_GPMC
 	  NAND, OneNAND etc.
 
 config OMAP_BUILD_IFT
-	prompt "build ift binary"
+	prompt "build ift binary (MLO)"
 	bool
+	help
+	  Say Y here if you want to build an MLO binary. On TI SoCs, this
+	  binary is loaded to SRAM. It is responsible for initializing
+	  the SDRAM and possibly chainloading a full-featured barebox.
 
 config OMAP_BUILD_SPI
 	prompt "build SPI binary"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
