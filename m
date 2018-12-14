Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp47.i.mail.ru ([94.100.177.107])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXjl1-0000Jo-Tr
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 09:27:46 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 14 Dec 2018 12:27:15 +0300
Message-Id: <20181214092716.8150-1-shc_work@mail.ru>
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
Subject: [PATCH 1/2] mfd: mc13892: MC13892_POWER_MISC bits revision
To: barebox@lists.infradead.org

This patch revises the bits for register MC13892_POWER_MISC.
 - Added definition for one missing bit (0).
 - Changed the name for bit 21 for accordance with the datasheet.
 - Updated affected board that uses these definitions.
 - Replaced tabs with spaces for the remaining bits.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/efika-mx-smartbook/board.c |  2 +-
 include/mfd/mc13892.h                      | 23 ++++++++++++-----------
 2 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index d7c5681db..ec41eb8c1 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -79,7 +79,7 @@ static void efikamx_power_init(struct mc13xxx *mc)
 
 	/* power up the system first */
 	mc13xxx_reg_write(mc, MC13892_REG_POWER_MISC,
-			MC13892_POWER_MISC_PWUP);
+			  MC13892_POWER_MISC_GPO4ADIN);
 
 	/* Set core voltage to 1.1V */
 	mc13xxx_reg_read(mc, MC13892_REG_SW_0, &val);
diff --git a/include/mfd/mc13892.h b/include/mfd/mc13892.h
index 8b522391b..e9a41ba21 100644
--- a/include/mfd/mc13892.h
+++ b/include/mfd/mc13892.h
@@ -182,17 +182,18 @@
 #define MC13892_MODE_1_VSDMODE		(1 << 20)
 
 /* Reg Power misc */
-#define MC13892_POWER_MISC_GPO1EN          (1 << 6)
-#define MC13892_POWER_MISC_GPO1STBY        (1 << 7)
-#define MC13892_POWER_MISC_GPO2EN          (1 << 8)
-#define MC13892_POWER_MISC_GPO2STBY        (1 << 9)
-#define MC13892_POWER_MISC_GPO3EN          (1 << 10)
-#define MC13892_POWER_MISC_GPO3STBY        (1 << 11)
-#define MC13892_POWER_MISC_GPO4EN          (1 << 12)
-#define MC13892_POWER_MISC_GPO4STBY        (1 << 13)
-#define MC13892_POWER_MISC_PWGT1SPIEN      (1 << 15)
-#define MC13892_POWER_MISC_PWGT2SPIEN      (1 << 16)
-#define MC13892_POWER_MISC_PWUP            (1 << 21)
+#define MC13892_POWER_MISC_REGSCPEN	(1 << 0)
+#define MC13892_POWER_MISC_GPO1EN	(1 << 6)
+#define MC13892_POWER_MISC_GPO1STBY	(1 << 7)
+#define MC13892_POWER_MISC_GPO2EN	(1 << 8)
+#define MC13892_POWER_MISC_GPO2STBY	(1 << 9)
+#define MC13892_POWER_MISC_GPO3EN	(1 << 10)
+#define MC13892_POWER_MISC_GPO3STBY	(1 << 11)
+#define MC13892_POWER_MISC_GPO4EN	(1 << 12)
+#define MC13892_POWER_MISC_GPO4STBY	(1 << 13)
+#define MC13892_POWER_MISC_PWGT1SPIEN	(1 << 15)
+#define MC13892_POWER_MISC_PWGT2SPIEN	(1 << 16)
+#define MC13892_POWER_MISC_GPO4ADIN	(1 << 21)
 
 /* Reg Power Control 2*/
 #define MC13892_POWER_CONTROL_2_WDIRESET	(1 << 12)
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
