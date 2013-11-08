Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp33.i.mail.ru ([94.100.177.93])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeqYm-000245-1F
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 18:13:36 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Nov 2013 22:12:53 +0400
Message-Id: <1383934379-27100-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1383934379-27100-1-git-send-email-shc_work@mail.ru>
References: <1383934379-27100-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] Cleanup Kconfig files
To: barebox@lists.infradead.org

This patch provides a global cleanup barebox Kconfig files. This includes
replacing spaces to tabs, formatting in accordance format.
No functional changes.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-at91/Kconfig    | 1 -
 arch/arm/mach-imx/Kconfig     | 1 -
 arch/arm/mach-omap/Kconfig    | 4 ++--
 arch/ppc/mach-mpc85xx/Kconfig | 8 ++++----
 4 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 6ab374e..e3eeb2c 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -342,7 +342,6 @@ config MACH_QIL_A9G20
 	  Select this if you are using a Calao Systems QIL-A9G20 Board.
 	  <http://www.calao-systems.com>
 
-
 endchoice
 
 endif
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 973aa37..aa650f8 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -248,7 +248,6 @@ config MACH_IMX21ADS
 	  Say Y here if you are using the Freescale i.MX21ads board equipped
 	  with a Freescale i.MX21 Processor
 
-
 # ----------------------------------------------------------
 
 comment "i.MX25 Boards"
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index b2eec30..42ff384 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -95,8 +95,8 @@ config BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO
 	bool
 	depends on BAREBOX_UPDATE
 	help
-          Say Y for barebox update SPI NOR MLO handler.
-          AM35xx, AM33xx chips use big endian MLO for SPI NOR flash.
+	  Say Y for barebox update SPI NOR MLO handler.
+	  AM35xx, AM33xx chips use big endian MLO for SPI NOR flash.
 
 config ARCH_TEXT_BASE
 	hex
diff --git a/arch/ppc/mach-mpc85xx/Kconfig b/arch/ppc/mach-mpc85xx/Kconfig
index 80cb0d9..dc5708c 100644
--- a/arch/ppc/mach-mpc85xx/Kconfig
+++ b/arch/ppc/mach-mpc85xx/Kconfig
@@ -48,10 +48,10 @@ config MPC8544
 	default y
 
 config DDR_SPD
-    bool
-    default y
+	bool
+	default y
 
 config FSL_DDR2
-    bool
-    default y
+	bool
+	default y
 endif
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
