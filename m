Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jbc-0002C7-52
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:14:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:14:00 +0200
Message-Id: <1301922843-12118-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301922843-12118-1-git-send-email-s.hauer@pengutronix.de>
References: <1301922843-12118-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] ARM omap4: fix indention in Kconfig
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig |   56 ++++++++++++++++++++++----------------------
 1 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index a13fb1c..ec576a1 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -39,38 +39,38 @@ config ARCH_OMAP3
 
 endchoice
 
- ### Generic Clock configurations to be enabled by Mach - invisible to enable.
- config OMAP_CLOCK_UART
- 	bool
- config OMAP_CLOCK_UART2
- 	bool
- config OMAP_CLOCK_UART3
- 	bool
- config OMAP_CLOCK_I2C
- 	bool
-
- # Blind enable all possible clocks.. think twice before you do this.
- config OMAP_CLOCK_ALL
- 	bool
-
- config OMAP_CLOCK_SOURCE_S32K
- 	bool
-
- config OMAP3_CLOCK_CONFIG
- 	prompt "Clock Configuration"
- 	bool
- 	depends on ARCH_OMAP3
- 	default y
- 	help
- 	  Say Y here if you like to have OMAP3 Clock configuration done.
-
- config OMAP3_COPY_CLOCK_SRAM
- 	prompt "SRAM copy of Clock code"
- 	bool
- 	depends on OMAP3_CLOCK_CONFIG
- 	default y
- 	help
- 	  Say Y here if you like to have initial OMAP3 Clock configuration done from SRAM.
+### Generic Clock configurations to be enabled by Mach - invisible to enable.
+config OMAP_CLOCK_UART
+	bool
+config OMAP_CLOCK_UART2
+	bool
+config OMAP_CLOCK_UART3
+	bool
+config OMAP_CLOCK_I2C
+	bool
+
+# Blind enable all possible clocks.. think twice before you do this.
+config OMAP_CLOCK_ALL
+	bool
+
+config OMAP_CLOCK_SOURCE_S32K
+	bool
+
+config OMAP3_CLOCK_CONFIG
+	prompt "Clock Configuration"
+	bool
+	depends on ARCH_OMAP3
+	default y
+	help
+	  Say Y here if you like to have OMAP3 Clock configuration done.
+
+config OMAP3_COPY_CLOCK_SRAM
+	prompt "SRAM copy of Clock code"
+	bool
+	depends on OMAP3_CLOCK_CONFIG
+	default y
+	help
+	  Say Y here if you like to have initial OMAP3 Clock configuration done from SRAM.
 
 config GPMC
 	prompt "Support for GPMC configuration"
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
