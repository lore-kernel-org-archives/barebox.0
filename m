Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c2ahg-0002TL-BV
 for barebox@lists.infradead.org; Fri, 04 Nov 2016 09:22:32 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Fri,  4 Nov 2016 10:19:06 +0100
Message-Id: <1478251146-32717-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] mfd: mc13892: more descriptive charger register defines
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Make access to the mc13892 charger parameter voltage, current and max power
dissipation readable in terms of millivolts, milliamps and milliwatts.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/boards/efika-mx-smartbook/board.c |  4 +--
 include/mfd/mc13892.h                      | 40 +++++++++++++++++++++++-------
 2 files changed, 32 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index d7c11dc..d7c5681 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -74,9 +74,7 @@ static void efikamx_power_init(struct mc13xxx *mc)
 
 	/* Externally powered */
 	mc13xxx_reg_read(mc, MC13892_REG_CHARGE, &val);
-	val |= MC13782_CHARGE_ICHRG0 | MC13782_CHARGE_ICHRG1 |
-		MC13782_CHARGE_ICHRG2 | MC13782_CHARGE_ICHRG3 |
-		MC13782_CHARGE_CHGAUTOB;
+	val |= MC13782_CHARGE_ICHRG_FULL | MC13782_CHARGE_CHGAUTOB;
 	mc13xxx_reg_write(mc, MC13892_REG_CHARGE, val);
 
 	/* power up the system first */
diff --git a/include/mfd/mc13892.h b/include/mfd/mc13892.h
index c92a462..8b52239 100644
--- a/include/mfd/mc13892.h
+++ b/include/mfd/mc13892.h
@@ -29,21 +29,43 @@
 
 /* REG_CHARGE */
 
-#define MC13782_CHARGE_VCHRG0		(1 << 0)
-#define MC13782_CHARGE_VCHRG1		(1 << 1)
-#define MC13782_CHARGE_VCHRG2		(1 << 2)
-#define MC13782_CHARGE_ICHRG0		(1 << 3)
-#define MC13782_CHARGE_ICHRG1		(1 << 4)
-#define MC13782_CHARGE_ICHRG2		(1 << 5)
-#define MC13782_CHARGE_ICHRG3		(1 << 6)
+#define MC13782_CHARGE_VCHRG_3800	(0 << 0)
+#define MC13782_CHARGE_VCHRG_4100	(1 << 0)
+#define MC13782_CHARGE_VCHRG_4150	(2 << 0)
+#define MC13782_CHARGE_VCHRG_4200	(3 << 0)
+#define MC13782_CHARGE_VCHRG_4250	(4 << 0)
+#define MC13782_CHARGE_VCHRG_4300	(5 << 0)
+#define MC13782_CHARGE_VCHRG_4375	(6 << 0)
+#define MC13782_CHARGE_VCHRG_4450	(7 << 0)
+#define MC13782_CHARGE_VCHRG_MASK	(7 << 0)
+#define MC13782_CHARGE_ICHRG_0		(0 << 3)
+#define MC13782_CHARGE_ICHRG_80		(1 << 3)
+#define MC13782_CHARGE_ICHRG_240	(2 << 3)
+#define MC13782_CHARGE_ICHRG_320	(3 << 3)
+#define MC13782_CHARGE_ICHRG_400	(4 << 3)
+#define MC13782_CHARGE_ICHRG_480	(5 << 3)
+#define MC13782_CHARGE_ICHRG_560	(6 << 3)
+#define MC13782_CHARGE_ICHRG_640	(7 << 3)
+#define MC13782_CHARGE_ICHRG_720	(8 << 3)
+#define MC13782_CHARGE_ICHRG_800	(9 << 3)
+#define MC13782_CHARGE_ICHRG_880	(10 << 3)
+#define MC13782_CHARGE_ICHRG_960	(11 << 3)
+#define MC13782_CHARGE_ICHRG_1040	(12 << 3)
+#define MC13782_CHARGE_ICHRG_1200	(13 << 3)
+#define MC13782_CHARGE_ICHRG_1600	(14 << 3)
+#define MC13782_CHARGE_ICHRG_FULL	(15 << 3)
+#define MC13782_CHARGE_ICHRG_MASK	(15 << 3)
 #define MC13782_CHARGE_TREN		(1 << 7)
 #define MC13782_CHARGE_ACKLPB		(1 << 8)
 #define MC13782_CHARGE_THCHKB		(1 << 9)
 #define MC13782_CHARGE_FETOVRD		(1 << 10)
 #define MC13782_CHARGE_FETCTRL		(1 << 11)
 #define MC13782_CHARGE_RVRSMODE		(1 << 13)
-#define MC13782_CHARGE_PLIM0		(1 << 15)
-#define MC13782_CHARGE_PLIM1		(1 << 16)
+#define MC13782_CHARGE_PLIM_600		(0 << 15)
+#define MC13782_CHARGE_PLIM_800		(1 << 15)
+#define MC13782_CHARGE_PLIM_1000	(2 << 15)
+#define MC13782_CHARGE_PLIM_1200	(3 << 15)
+#define MC13782_CHARGE_PLIM_MASK	(3 << 15)
 #define MC13782_CHARGE_PLIMDIS		(1 << 17)
 #define MC13782_CHARGE_CHRGLEDEN	(1 << 18)
 #define MC13782_CHARGE_CHGTMRRST	(1 << 19)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
