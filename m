Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp33.i.mail.ru ([94.100.177.93])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Un1pZ-000420-WF
 for barebox@lists.infradead.org; Thu, 13 Jun 2013 07:20:30 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 13 Jun 2013 11:19:56 +0400
Message-Id: <1371107996-11771-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: ccmx51: Set PMIC SW1 voltage for i.MX51 less than TO3
 only
To: barebox@lists.infradead.org

This settings taken from original DIGI U-boot source code.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/ccxmx51/ccxmx51.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index 9610e41..b760ca8 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -256,13 +256,13 @@ static int ccxmx51_power_init(void)
 	val = 0x238033;
 	mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_CHARGE, val);
 
-	/* Set core voltage (SW1) to 1.1V */
-	mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_SW_0, &val);
-	val &= ~0x00001f;
-	val |=  0x000014;
-	mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_SW_0, val);
-
 	if (imx_silicon_revision() < IMX_CHIP_REV_3_0) {
+		/* Set core voltage (SW1) to 1.1V */
+		mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_SW_0, &val);
+		val &= ~0x00001f;
+		val |=  0x000014;
+		mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_SW_0, val);
+
 		/* Setup VCC (SW2) to 1.25 */
 		mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_SW_1, &val);
 		val &= ~0x00001f;
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
