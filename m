Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZBBN-0000kN-6Y
 for barebox@lists.infradead.org; Wed, 10 Jan 2018 07:52:23 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 10 Jan 2018 08:52:02 +0100
Message-Id: <20180110075202.4867-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] i2c: designware: evaluate i2c-sda-hold-time property
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Newer designware i2c controllers allow setting the SDA hold time.
Evaluate the devicetree property "i2c-sda-hold-time" and set the
value accordingly.
The code is an adaption of the Linux v4.12 driver.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/i2c/busses/i2c-designware.c | 40 +++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/i2c/busses/i2c-designware.c b/drivers/i2c/busses/i2c-designware.c
index 0b022afd30f8..33f89148f0cc 100644
--- a/drivers/i2c/busses/i2c-designware.c
+++ b/drivers/i2c/busses/i2c-designware.c
@@ -32,6 +32,7 @@
 #include <xfuncs.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <linux/math64.h>
 
 #include <io.h>
 #include <i2c/i2c.h>
@@ -75,6 +76,7 @@
 #define DW_IC_TX_TL			0x3c
 #define DW_IC_CLR_INTR			0x40
 #define DW_IC_CLR_TX_ABRT		0x54
+#define DW_IC_SDA_HOLD			0x7c
 
 #define DW_IC_ENABLE			0x6c
 #define DW_IC_ENABLE_ENABLE		(1 << 0)
@@ -90,6 +92,8 @@
 #define DW_IC_ENABLE_STATUS		0x9c
 #define DW_IC_ENABLE_STATUS_IC_EN	(1 << 0)
 
+#define DW_IC_COMP_VERSION		0xf8
+#define DW_IC_SDA_HOLD_MIN_VERS		0x3131312A
 #define DW_IC_COMP_TYPE			0xfc
 #define DW_IC_COMP_TYPE_VALUE		0x44570140
 
@@ -99,10 +103,15 @@
 #define DW_TIMEOUT_TX			(2 * MSECOND)
 #define DW_TIMEOUT_RX			(2 * MSECOND)
 
+#define DW_IC_SDA_HOLD_RX_SHIFT		16
+#define DW_IC_SDA_HOLD_RX_MASK		GENMASK(23, DW_IC_SDA_HOLD_RX_SHIFT)
+
+
 struct dw_i2c_dev {
 	void __iomem *base;
 	struct clk *clk;
 	struct i2c_adapter adapter;
+	u32 sda_hold_time;
 };
 
 static inline struct dw_i2c_dev *to_dw_i2c_dev(struct i2c_adapter *a)
@@ -202,6 +211,7 @@ i2c_dw_scl_lcnt(uint32_t ic_clk, uint32_t tLOW, uint32_t tf, int offset)
 static void i2c_dw_setup_timings(struct dw_i2c_dev *dw)
 {
 	uint32_t hcnt, lcnt;
+	u32 reg;
 
 	const uint32_t sda_falling_time = 300; /* ns */
 	const uint32_t scl_falling_time = 300; /* ns */
@@ -234,6 +244,36 @@ static void i2c_dw_setup_timings(struct dw_i2c_dev *dw)
 
 	writel(hcnt, dw->base + DW_IC_FS_SCL_HCNT);
 	writel(lcnt, dw->base + DW_IC_FS_SCL_LCNT);
+
+	/* Configure SDA Hold Time if required */
+	reg = readl(dw->base + DW_IC_COMP_VERSION);
+	if (reg >= DW_IC_SDA_HOLD_MIN_VERS) {
+		u32 ht;
+		int ret;
+
+		ret = of_property_read_u32(dw->adapter.dev.device_node,
+					   "i2c-sda-hold-time-ns", &ht);
+		if (ret) {
+			/* Keep previous hold time setting if no one set it */
+			dw->sda_hold_time = readl(dw->base + DW_IC_SDA_HOLD);
+		} else if (ht) {
+			dw->sda_hold_time = div_u64((u64)input_clock_khz * ht + 500000,
+						    1000000);
+		}
+
+		/*
+		 * Workaround for avoiding TX arbitration lost in case I2C
+		 * slave pulls SDA down "too quickly" after falling egde of
+		 * SCL by enabling non-zero SDA RX hold. Specification says it
+		 * extends incoming SDA low to high transition while SCL is
+		 * high but it apprears to help also above issue.
+		 */
+		if (!(dw->sda_hold_time & DW_IC_SDA_HOLD_RX_MASK))
+			dw->sda_hold_time |= 1 << DW_IC_SDA_HOLD_RX_SHIFT;
+
+		dev_dbg(&dw->adapter.dev, "adjust SDA hold time.\n");
+		writel(dw->sda_hold_time, dw->base + DW_IC_SDA_HOLD);
+	}
 }
 
 static int i2c_dw_wait_for_bits(struct dw_i2c_dev *dw, uint32_t offset,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
