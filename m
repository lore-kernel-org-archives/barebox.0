Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0jkU-0002D7-Qx
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 09:19:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 10:18:42 +0100
Message-Id: <20190304091843.17839-10-s.hauer@pengutronix.de>
In-Reply-To: <20190304091843.17839-1-s.hauer@pengutronix.de>
References: <20190304091843.17839-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/10] i2c: i.MX: Create header file for register defines
To: Barebox List <barebox@lists.infradead.org>

We'll add a stripped down driver variant for use in PBL. To share the
register defines add a header file for them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c | 47 +-------------------------------
 drivers/i2c/busses/i2c-imx.h | 52 ++++++++++++++++++++++++++++++++++++
 2 files changed, 53 insertions(+), 46 deletions(-)
 create mode 100644 drivers/i2c/busses/i2c-imx.h

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 409c178e6a..4c7346063c 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -49,52 +49,7 @@
 #include <i2c/i2c.h>
 #include <mach/clock.h>
 
-/* IMX I2C registers:
- * the I2C register offset is different between SoCs,
- * to provid support for all these chips, split the
- * register offset into a fixed base address and a
- * variable shift value, then the full register offset
- * will be calculated by
- * reg_off = ( reg_base_addr << reg_shift)
- */
-#define FSL_I2C_IADR	0x00	/* i2c slave address */
-#define FSL_I2C_IFDR	0x01	/* i2c frequency divider */
-#define FSL_I2C_I2CR	0x02	/* i2c control */
-#define FSL_I2C_I2SR	0x03	/* i2c status */
-#define FSL_I2C_I2DR	0x04	/* i2c transfer data */
-#define FSL_I2C_DFSRR	0x05	/* i2c digital filter sampling rate */
-
-#define IMX_I2C_REGSHIFT	2
-#define VF610_I2C_REGSHIFT	0
-
-
-/* Bits of FSL I2C registers */
-#define I2SR_RXAK	0x01
-#define I2SR_IIF	0x02
-#define I2SR_SRW	0x04
-#define I2SR_IAL	0x10
-#define I2SR_IBB	0x20
-#define I2SR_IAAS	0x40
-#define I2SR_ICF	0x80
-#define I2CR_RSTA	0x04
-#define I2CR_TXAK	0x08
-#define I2CR_MTX	0x10
-#define I2CR_MSTA	0x20
-#define I2CR_IIEN	0x40
-#define I2CR_IEN	0x80
-
-/* register bits different operating codes definition:
- * 1) I2SR: Interrupt flags clear operation differ between SoCs:
- * - write zero to clear(w0c) INT flag on i.MX,
- * - but write one to clear(w1c) INT flag on Vybrid.
- * 2) I2CR: I2C module enable operation also differ between SoCs:
- * - set I2CR_IEN bit enable the module on i.MX,
- * - but clear I2CR_IEN bit enable the module on Vybrid.
- */
-#define I2SR_CLR_OPCODE_W0C	0x0
-#define I2SR_CLR_OPCODE_W1C	(I2SR_IAL | I2SR_IIF)
-#define I2CR_IEN_OPCODE_0	0x0
-#define I2CR_IEN_OPCODE_1	I2CR_IEN
+#include "i2c-imx.h"
 
 /*
  * sorted list of clock divider, register value pairs
diff --git a/drivers/i2c/busses/i2c-imx.h b/drivers/i2c/busses/i2c-imx.h
new file mode 100644
index 0000000000..3e3e1317f2
--- /dev/null
+++ b/drivers/i2c/busses/i2c-imx.h
@@ -0,0 +1,52 @@
+#ifndef I2C_IMX_H
+#define I2C_IMX_H
+
+/*
+ * IMX I2C registers:
+ * the I2C register offset is different between SoCs, to provide support for
+ * all these chips, split the register offset into a fixed base address and a
+ * variable shift value, then the full register offset will be calculated by:
+ * reg_off = reg_base_addr << reg_shift
+ */
+#define FSL_I2C_IADR	0x00	/* i2c slave address */
+#define FSL_I2C_IFDR	0x01	/* i2c frequency divider */
+#define FSL_I2C_I2CR	0x02	/* i2c control */
+#define FSL_I2C_I2SR	0x03	/* i2c status */
+#define FSL_I2C_I2DR	0x04	/* i2c transfer data */
+#define FSL_I2C_DFSRR	0x05	/* i2c digital filter sampling rate */
+
+#define IMX_I2C_REGSHIFT	2
+#define VF610_I2C_REGSHIFT	0
+
+/* Bits of FSL I2C registers */
+#define I2SR_RXAK	0x01
+#define I2SR_IIF	0x02
+#define I2SR_SRW	0x04
+#define I2SR_IAL	0x10
+#define I2SR_IBB	0x20
+#define I2SR_IAAS	0x40
+#define I2SR_ICF	0x80
+#define I2CR_RSTA	0x04
+#define I2CR_TXAK	0x08
+#define I2CR_MTX	0x10
+#define I2CR_MSTA	0x20
+#define I2CR_IIEN	0x40
+#define I2CR_IEN	0x80
+
+/*
+ * register bits different operating codes definition:
+ *
+ * 1) I2SR: Interrupt flags clear operation differ between SoCs:
+ * - write zero to clear(w0c) INT flag on i.MX,
+ * - but write one to clear(w1c) INT flag on Vybrid.
+ *
+ * 2) I2CR: I2C module enable operation also differ between SoCs:
+ * - set I2CR_IEN bit enable the module on i.MX,
+ * - but clear I2CR_IEN bit enable the module on Vybrid.
+ */
+#define I2SR_CLR_OPCODE_W0C	0x0
+#define I2SR_CLR_OPCODE_W1C	(I2SR_IAL | I2SR_IIF)
+#define I2CR_IEN_OPCODE_0	0x0
+#define I2CR_IEN_OPCODE_1	I2CR_IEN
+
+#endif /* I2C_IMX_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
