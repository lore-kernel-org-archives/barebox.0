Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek5Hc-0000s2-NE
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 09:47:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Feb 2018 10:47:40 +0100
Message-Id: <20180209094740.13128-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX25: Fix restoring of volatile register
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx25.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index a4e27dd913..d27680e428 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -67,14 +67,16 @@ int imx25_init(void)
 	 * To still be able to use the GPR for its intended purpose, copy the
 	 * saved SRAM value back manually.
 	 */
-	val = readl(MX25_IRAM_BASE_ADDR + 0x1734);
 
 	/*
-	 * When there is a different value in SRAM than the magic value
-	 * it must be a value saved to the GPR.
+	 * When the value in the GPR matches the value the ROM has written there then
+	 * we have to copy back the value from the SRAM back to the GPR.
 	 */
-	if (val != MX25_BOOTROM_HAB_MAGIC)
+	val = readl(MX25_DRYICE_BASE_ADDR + MX25_DRYICE_GPR);
+	if (val == MX25_BOOTROM_HAB_MAGIC) {
+		val = readl(MX25_IRAM_BASE_ADDR + 0x1734);
 		writel(val, MX25_DRYICE_BASE_ADDR + MX25_DRYICE_GPR);
+	}
 
 	return 0;
 }
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
