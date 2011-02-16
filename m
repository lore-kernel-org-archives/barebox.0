Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pplt4-0001nT-7E
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 18:14:09 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Feb 2011 19:13:35 +0100
Message-Id: <1297880025-7184-11-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
References: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 10/20] mini2440: Add PLL settings
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

This is required in order to enable booting from NAND and using the generic
S3C2440 setup routines.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 arch/arm/boards/mini2440/config.h |   22 ++++++++++++++++++++++
 1 files changed, 22 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/mini2440/config.h b/arch/arm/boards/mini2440/config.h
index a664017..1edd69c 100644
--- a/arch/arm/boards/mini2440/config.h
+++ b/arch/arm/boards/mini2440/config.h
@@ -26,6 +26,28 @@
  */
 #define S3C24XX_CLOCK_REFERENCE 12000000
 
+/**
+ * Define the main clock configuration to be used in register CLKDIVN
+ *
+ * We must limit the frequency of the connected SDRAMs with the clock ratio
+ * setup to 1:4:8. This will result into FCLK:HCLK:PCLK = 405Mhz:102MHz:51MHz
+ */
+#define BOARD_SPECIFIC_CLKDIVN 0x05
+
+/**
+ * Define the MPLL configuration to be used in register MPLLCON
+ *
+ * We want the MPLL to run at 405.0 MHz
+ */
+#define BOARD_SPECIFIC_MPLL ((0x7f << 12) + (2 << 4) + 1)
+
+/**
+ * Define the UPLL configuration to be used in register UPLLCON
+ *
+ * We want the UPLL to run at 48.0 MHz
+ */
+#define BOARD_SPECIFIC_UPLL ((0x38 << 12) + (2 << 4) + 2)
+
 /*
  * Flash access timings
  * Tacls  = 0ns (but 20ns data setup time)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
