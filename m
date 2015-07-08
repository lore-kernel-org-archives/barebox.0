Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from proxima.lasnet.de ([78.47.171.185])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCq4P-0003Gx-0v
 for barebox@lists.infradead.org; Wed, 08 Jul 2015 14:11:29 +0000
Received: from polaris.guest.pengutronix.de (hazel.nat.pengutronix.de
 [85.220.165.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: polaris@lasnet.de)
 by proxima.lasnet.de (Postfix) with ESMTPSA id 46576C00BA
 for <barebox@lists.infradead.org>; Wed,  8 Jul 2015 16:11:07 +0200 (CEST)
From: Jan Luebbe <jluebbe@debian.org>
Date: Wed,  8 Jul 2015 16:11:00 +0200
Message-Id: <1436364660-28465-1-git-send-email-jluebbe@debian.org>
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
Subject: [PATCH] fixup! i2c-omap: add bus recovery support
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jluebbe@debian.org>
---
 drivers/i2c/busses/i2c-omap.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 3abf05a..48c55da 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -1001,7 +1001,6 @@ static int omap_i2c_get_scl(struct i2c_adapter *adapter)
 
 	reg = omap_i2c_read_reg(i2c_omap, OMAP_I2C_SYSTEST_REG);
 
-	printf("%s %i\n", __func__, !!(reg & OMAP_I2C_SYSTEST_SCL_I_FUNC));
 	return reg & OMAP_I2C_SYSTEST_SCL_I_FUNC;
 }
 
@@ -1012,7 +1011,6 @@ static int omap_i2c_get_sda(struct i2c_adapter *adapter)
 
 	reg = omap_i2c_read_reg(i2c_omap, OMAP_I2C_SYSTEST_REG);
 
-	printf("%s %i\n", __func__, !!(reg & OMAP_I2C_SYSTEST_SDA_I_FUNC));
 	return reg & OMAP_I2C_SYSTEST_SDA_I_FUNC;
 }
 
@@ -1021,7 +1019,6 @@ static void omap_i2c_set_scl(struct i2c_adapter *adapter, int val)
 	struct omap_i2c_struct *i2c_omap = to_omap_i2c_struct(adapter);
 	u32 reg;
 
-	printf("%s %i\n", __func__, val);
 	reg = omap_i2c_read_reg(i2c_omap, OMAP_I2C_SYSTEST_REG);
 	if (val)
 		reg |= OMAP_I2C_SYSTEST_SCL_O;
@@ -1035,8 +1032,6 @@ static void omap_i2c_prepare_recovery(struct i2c_adapter *adapter)
 	struct omap_i2c_struct *i2c_omap = to_omap_i2c_struct(adapter);
 	u32 reg;
 
-	printf("%s\n", __func__);
-
 	reg = omap_i2c_read_reg(i2c_omap, OMAP_I2C_SYSTEST_REG);
 	/* enable test mode */
 	reg |= OMAP_I2C_SYSTEST_ST_EN;
@@ -1054,8 +1049,6 @@ static void omap_i2c_unprepare_recovery(struct i2c_adapter *adapter)
 	struct omap_i2c_struct *i2c_omap = to_omap_i2c_struct(adapter);
 	u32 reg;
 
-	printf("%s\n", __func__);
-
 	reg = omap_i2c_read_reg(i2c_omap, OMAP_I2C_SYSTEST_REG);
 	/* restore reset values */
 	reg &= ~OMAP_I2C_SYSTEST_ST_EN;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
