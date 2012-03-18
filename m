Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp20.mail.ru ([94.100.176.173])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9BsJ-0007IQ-Ou
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 08:54:05 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 18 Mar 2012 12:59:06 +0400
Message-Id: <1332061146-5085-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/3] Use register names for MC13892
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/freescale-mx51-pdk/board.c |   56 ++++++++++++++--------------
 drivers/mfd/mc13892.c                      |    2 +-
 2 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index e6781f3..e515d94 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -130,94 +130,94 @@ static void babbage_power_init(void)
 	}
 
 	/* Write needed to Power Gate 2 register */
-	mc13892_reg_read(mc13892, 34, &val);
+	mc13892_reg_read(mc13892, MC13892_REG_POWER_MISC, &val);
 	val &= ~0x10000;
-	mc13892_reg_write(mc13892, 34, val);
+	mc13892_reg_write(mc13892, MC13892_REG_POWER_MISC, val);
 
 	/* Write needed to update Charger 0 */
-	mc13892_reg_write(mc13892, 48, 0x0023807F);
+	mc13892_reg_write(mc13892, MC13892_REG_CHARGE, 0x0023807F);
 
 	/* power up the system first */
-	mc13892_reg_write(mc13892, 34, 0x00200000);
+	mc13892_reg_write(mc13892, MC13892_REG_POWER_MISC, 0x00200000);
 
 	if (imx_silicon_revision() < MX51_CHIP_REV_3_0) {
 		/* Set core voltage to 1.1V */
-		mc13892_reg_read(mc13892, 24, &val);
+		mc13892_reg_read(mc13892, MC13892_REG_SW_0, &val);
 		val &= ~0x1f;
 		val |= 0x14;
-		mc13892_reg_write(mc13892, 24, val);
+		mc13892_reg_write(mc13892, MC13892_REG_SW_0, val);
 
 		/* Setup VCC (SW2) to 1.25 */
-		mc13892_reg_read(mc13892, 25, &val);
+		mc13892_reg_read(mc13892, MC13892_REG_SW_1, &val);
 		val &= ~0x1f;
 		val |= 0x1a;
-		mc13892_reg_write(mc13892, 25, val);
+		mc13892_reg_write(mc13892, MC13892_REG_SW_1, val);
 
 		/* Setup 1V2_DIG1 (SW3) to 1.25 */
-		mc13892_reg_read(mc13892, 26, &val);
+		mc13892_reg_read(mc13892, MC13892_REG_SW_2, &val);
 		val &= ~0x1f;
 		val |= 0x1a;
-		mc13892_reg_write(mc13892, 26, val);
+		mc13892_reg_write(mc13892, MC13892_REG_SW_2, val);
 		udelay(50);
 		/* Raise the core frequency to 800MHz */
 		writel(0x0, MX51_CCM_BASE_ADDR + MX51_CCM_CACRR);
 	} else {
 		/* Setup VCC (SW2) to 1.225 */
-		mc13892_reg_read(mc13892, 25, &val);
+		mc13892_reg_read(mc13892, MC13892_REG_SW_1, &val);
 		val &= ~0x1f;
 		val |= 0x19;
-		mc13892_reg_write(mc13892, 25, val);
+		mc13892_reg_write(mc13892, MC13892_REG_SW_1, val);
 
 		/* Setup 1V2_DIG1 (SW3) to 1.2 */
-		mc13892_reg_read(mc13892, 26, &val);
+		mc13892_reg_read(mc13892, MC13892_REG_SW_2, &val);
 		val &= ~0x1f;
 		val |= 0x18;
-		mc13892_reg_write(mc13892, 26, val);
+		mc13892_reg_write(mc13892, MC13892_REG_SW_2, val);
 	}
 
 	if (mc13892_get_revision(mc13892) < MC13892_REVISION_2_0) {
 		/* Set switchers in PWM mode for Atlas 2.0 and lower */
 		/* Setup the switcher mode for SW1 & SW2*/
-		mc13892_reg_read(mc13892, 28, &val);
+		mc13892_reg_read(mc13892, MC13892_REG_SW_4, &val);
 		val &= ~0x3c0f;
 		val |= 0x1405;
-		mc13892_reg_write(mc13892, 28, val);
+		mc13892_reg_write(mc13892, MC13892_REG_SW_4, val);
 
 		/* Setup the switcher mode for SW3 & SW4 */
-		mc13892_reg_read(mc13892, 29, &val);
+		mc13892_reg_read(mc13892, MC13892_REG_SW_5, &val);
 		val &= ~0xf0f;
 		val |= 0x505;
-		mc13892_reg_write(mc13892, 29, val);
+		mc13892_reg_write(mc13892, MC13892_REG_SW_5, val);
 	} else {
 		/* Set switchers in Auto in NORMAL mode & STANDBY mode for Atlas 2.0a */
 		/* Setup the switcher mode for SW1 & SW2*/
-		mc13892_reg_read(mc13892, 28, &val);
+		mc13892_reg_read(mc13892, MC13892_REG_SW_4, &val);
 		val &= ~0x3c0f;
 		val |= 0x2008;
-		mc13892_reg_write(mc13892, 28, val);
+		mc13892_reg_write(mc13892, MC13892_REG_SW_4, val);
 
 		/* Setup the switcher mode for SW3 & SW4 */
-		mc13892_reg_read(mc13892, 29, &val);
+		mc13892_reg_read(mc13892, MC13892_REG_SW_5, &val);
 		val &= ~0xf0f;
 		val |= 0x808;
-		mc13892_reg_write(mc13892, 29, val);
+		mc13892_reg_write(mc13892, MC13892_REG_SW_5, val);
 	}
 
 	/* Set VDIG to 1.65V, VGEN3 to 1.8V, VCAM to 2.5V */
-	mc13892_reg_read(mc13892, 30, &val);
+	mc13892_reg_read(mc13892, MC13892_REG_SETTING_0, &val);
 	val &= ~0x34030;
 	val |= 0x10020;
-	mc13892_reg_write(mc13892, 30, val);
+	mc13892_reg_write(mc13892, MC13892_REG_SETTING_0, val);
 
 	/* Set VVIDEO to 2.775V, VAUDIO to 3V, VSD to 3.15V */
-	mc13892_reg_read(mc13892, 31, &val);
+	mc13892_reg_read(mc13892, MC13892_REG_SETTING_1, &val);
 	val &= ~0x1FC;
 	val |= 0x1F4;
-	mc13892_reg_write(mc13892, 31, val);
+	mc13892_reg_write(mc13892, MC13892_REG_SETTING_1, val);
 
 	/* Configure VGEN3 and VCAM regulators to use external PNP */
 	val = 0x208;
-	mc13892_reg_write(mc13892, 33, val);
+	mc13892_reg_write(mc13892, MC13892_REG_MODE_1, val);
 	udelay(200);
 #define GPIO_LAN8700_RESET	(1 * 32 + 14)
 
@@ -226,7 +226,7 @@ static void babbage_power_init(void)
 
 	/* Enable VGEN3, VCAM, VAUDIO, VVIDEO, VSD regulators */
 	val = 0x49249;
-	mc13892_reg_write(mc13892, 33, val);
+	mc13892_reg_write(mc13892, MC13892_REG_MODE_1, val);
 
 	udelay(500);
 
diff --git a/drivers/mfd/mc13892.c b/drivers/mfd/mc13892.c
index b2cc911..cfc78c2 100644
--- a/drivers/mfd/mc13892.c
+++ b/drivers/mfd/mc13892.c
@@ -237,7 +237,7 @@ static int mc13893_query_revision(struct mc13892 *mc13892)
 	char *revstr;
 	int rev, i;
 
-	mc13892_reg_read(mc13892, 7, &rev_id);
+	mc13892_reg_read(mc13892, MC13892_REG_IDENTIFICATION, &rev_id);
 
 	for (i = 0; i < ARRAY_SIZE(mc13892_revisions); i++)
 		if ((rev_id & 0x1f) == mc13892_revisions[i].rev_id)
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
