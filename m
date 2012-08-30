Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T74Kb-00039z-P0
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 12:58:48 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 30 Aug 2012 14:58:38 +0200
Message-Id: <1346331518-28175-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1346331518-28175-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1346331518-28175-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/2] ARM i.MX6: Add i2c iomux to sabrelite
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/board.c |   12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 6490988..1ac401e 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -78,6 +78,18 @@ static iomux_v3_cfg_t sabrelite_pads[] = {
 	MX6Q_PAD_EIM_D18__ECSPI1_MOSI,
 	MX6Q_PAD_EIM_D19__GPIO_3_19,	/* CS1 */
 
+	/* I2C0 */
+	MX6Q_PAD_EIM_D21__I2C1_SCL,
+	MX6Q_PAD_EIM_D28__I2C1_SDA,
+
+	/* I2C1 */
+	MX6Q_PAD_KEY_COL3__I2C2_SCL,
+	MX6Q_PAD_KEY_ROW3__I2C2_SDA,
+
+	/* I2C2 */
+	MX6Q_PAD_GPIO_5__I2C3_SCL,
+	MX6Q_PAD_GPIO_16__I2C3_SDA,
+
 	/* USB */
 	MX6Q_PAD_GPIO_17__GPIO_7_12,
 	MX6Q_PAD_EIM_D22__GPIO_3_22,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
