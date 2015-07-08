Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from proxima.lasnet.de ([78.47.171.185])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCpQD-0007nq-RL
 for barebox@lists.infradead.org; Wed, 08 Jul 2015 13:29:58 +0000
Received: from polaris.guest.pengutronix.de (hazel.nat.pengutronix.de
 [85.220.165.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: polaris@lasnet.de)
 by proxima.lasnet.de (Postfix) with ESMTPSA id CAF19C2B0E
 for <barebox@lists.infradead.org>; Wed,  8 Jul 2015 15:29:33 +0200 (CEST)
From: Jan Luebbe <jluebbe@debian.org>
Date: Wed,  8 Jul 2015 15:29:18 +0200
Message-Id: <1436362158-24488-5-git-send-email-jluebbe@debian.org>
In-Reply-To: <1436362158-24488-1-git-send-email-jluebbe@debian.org>
References: <1436362158-24488-1-git-send-email-jluebbe@debian.org>
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
Subject: [PATCH 4/4] i2c-omap: add bus recovery support
To: barebox@lists.infradead.org

This is based on commit 9dcb0e7b999db6c420c70fd32497a979a044fcdf from
the kernel with some additional fixes.

Signed-off-by: Jan Luebbe <jluebbe@debian.org>
---
 drivers/i2c/busses/i2c-omap.c | 91 +++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 88 insertions(+), 3 deletions(-)

diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 58d2ec9..3abf05a 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -107,16 +107,20 @@
 #define OMAP_I2C_SCLH_HSSCLH	8
 
 /* I2C System Test Register (OMAP_I2C_SYSTEST): */
-#ifdef DEBUG
 #define OMAP_I2C_SYSTEST_ST_EN		(1 << 15)	/* System test enable */
 #define OMAP_I2C_SYSTEST_FREE		(1 << 14)	/* Free running mode */
 #define OMAP_I2C_SYSTEST_TMODE_MASK	(3 << 12)	/* Test mode select */
 #define OMAP_I2C_SYSTEST_TMODE_SHIFT	(12)		/* Test mode select */
+/* Functional mode */
+#define OMAP_I2C_SYSTEST_SCL_I_FUNC	(1 << 8)	/* SCL line input value */
+#define OMAP_I2C_SYSTEST_SCL_O_FUNC	(1 << 7)	/* SCL line output value */
+#define OMAP_I2C_SYSTEST_SDA_I_FUNC	(1 << 6)	/* SDA line input value */
+#define OMAP_I2C_SYSTEST_SDA_O_FUNC	(1 << 5)	/* SDA line output value */
+/* SDA/SCL IO mode */
 #define OMAP_I2C_SYSTEST_SCL_I		(1 << 3)	/* SCL line sense in */
 #define OMAP_I2C_SYSTEST_SCL_O		(1 << 2)	/* SCL line drive out */
 #define OMAP_I2C_SYSTEST_SDA_I		(1 << 1)	/* SDA line sense in */
 #define OMAP_I2C_SYSTEST_SDA_O		(1 << 0)	/* SDA line drive out */
-#endif
 
 /* OCP_SYSSTATUS bit definitions */
 #define SYSS_RESETDONE_MASK		(1 << 0)
@@ -492,7 +496,7 @@ static int omap_i2c_wait_for_bb(struct i2c_adapter *adapter)
 	while (omap_i2c_read_reg(i2c_omap, OMAP_I2C_STAT_REG) & OMAP_I2C_STAT_BB) {
 		if (is_timeout(start, MSECOND)) {
 			dev_warn(&adapter->dev, "timeout waiting for bus ready\n");
-			return -ETIMEDOUT;
+			return i2c_recover_bus(adapter);
 		}
 	}
 
@@ -990,6 +994,86 @@ out:
 #define OMAP_I2C_SCHEME_0		0
 #define OMAP_I2C_SCHEME_1		1
 
+static int omap_i2c_get_scl(struct i2c_adapter *adapter)
+{
+	struct omap_i2c_struct *i2c_omap = to_omap_i2c_struct(adapter);
+	u32 reg;
+
+	reg = omap_i2c_read_reg(i2c_omap, OMAP_I2C_SYSTEST_REG);
+
+	printf("%s %i\n", __func__, !!(reg & OMAP_I2C_SYSTEST_SCL_I_FUNC));
+	return reg & OMAP_I2C_SYSTEST_SCL_I_FUNC;
+}
+
+static int omap_i2c_get_sda(struct i2c_adapter *adapter)
+{
+	struct omap_i2c_struct *i2c_omap = to_omap_i2c_struct(adapter);
+	u32 reg;
+
+	reg = omap_i2c_read_reg(i2c_omap, OMAP_I2C_SYSTEST_REG);
+
+	printf("%s %i\n", __func__, !!(reg & OMAP_I2C_SYSTEST_SDA_I_FUNC));
+	return reg & OMAP_I2C_SYSTEST_SDA_I_FUNC;
+}
+
+static void omap_i2c_set_scl(struct i2c_adapter *adapter, int val)
+{
+	struct omap_i2c_struct *i2c_omap = to_omap_i2c_struct(adapter);
+	u32 reg;
+
+	printf("%s %i\n", __func__, val);
+	reg = omap_i2c_read_reg(i2c_omap, OMAP_I2C_SYSTEST_REG);
+	if (val)
+		reg |= OMAP_I2C_SYSTEST_SCL_O;
+	else
+		reg &= ~OMAP_I2C_SYSTEST_SCL_O;
+	omap_i2c_write_reg(i2c_omap, OMAP_I2C_SYSTEST_REG, reg);
+}
+
+static void omap_i2c_prepare_recovery(struct i2c_adapter *adapter)
+{
+	struct omap_i2c_struct *i2c_omap = to_omap_i2c_struct(adapter);
+	u32 reg;
+
+	printf("%s\n", __func__);
+
+	reg = omap_i2c_read_reg(i2c_omap, OMAP_I2C_SYSTEST_REG);
+	/* enable test mode */
+	reg |= OMAP_I2C_SYSTEST_ST_EN;
+	/* select SDA/SCL IO mode */
+	reg |= 3 << OMAP_I2C_SYSTEST_TMODE_SHIFT;
+	/* set SCL to high-impedance state (reset value is 0) */
+	reg |= OMAP_I2C_SYSTEST_SCL_O;
+	/* set SDA to high-impedance state (reset value is 0) */
+	reg |= OMAP_I2C_SYSTEST_SDA_O;
+	omap_i2c_write_reg(i2c_omap, OMAP_I2C_SYSTEST_REG, reg);
+}
+
+static void omap_i2c_unprepare_recovery(struct i2c_adapter *adapter)
+{
+	struct omap_i2c_struct *i2c_omap = to_omap_i2c_struct(adapter);
+	u32 reg;
+
+	printf("%s\n", __func__);
+
+	reg = omap_i2c_read_reg(i2c_omap, OMAP_I2C_SYSTEST_REG);
+	/* restore reset values */
+	reg &= ~OMAP_I2C_SYSTEST_ST_EN;
+	reg &= ~OMAP_I2C_SYSTEST_TMODE_MASK;
+	reg &= ~OMAP_I2C_SYSTEST_SCL_O;
+	reg &= ~OMAP_I2C_SYSTEST_SDA_O;
+	omap_i2c_write_reg(i2c_omap, OMAP_I2C_SYSTEST_REG, reg);
+}
+
+static struct i2c_bus_recovery_info omap_i2c_bus_recovery_info = {
+	.get_scl		= omap_i2c_get_scl,
+	.get_sda		= omap_i2c_get_sda,
+	.set_scl		= omap_i2c_set_scl,
+	.prepare_recovery	= omap_i2c_prepare_recovery,
+	.unprepare_recovery	= omap_i2c_unprepare_recovery,
+	.recover_bus		= i2c_generic_scl_recovery,
+};
+
 static int __init
 i2c_omap_probe(struct device_d *pdev)
 {
@@ -1101,6 +1185,7 @@ i2c_omap_probe(struct device_d *pdev)
 	i2c_omap->adapter.nr = pdev->id;
 	i2c_omap->adapter.dev.parent = pdev;
 	i2c_omap->adapter.dev.device_node = pdev->device_node;
+	i2c_omap->adapter.bus_recovery_info = &omap_i2c_bus_recovery_info;
 
 	/* i2c device drivers may be active on return from add_adapter() */
 	r = i2c_add_numbered_adapter(&i2c_omap->adapter);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
