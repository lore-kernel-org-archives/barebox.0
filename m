Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0lvO-0004tQ-Mn
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 11:38:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 12:38:21 +0100
Message-Id: <20190304113823.21535-5-s.hauer@pengutronix.de>
In-Reply-To: <20190304113823.21535-1-s.hauer@pengutronix.de>
References: <20190304113823.21535-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] ddr_spd: Add function to read eeprom
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ddr_spd.c  | 81 +++++++++++++++++++++++++++++++++++++++++++++++
 include/ddr_spd.h |  6 ++++
 2 files changed, 87 insertions(+)

diff --git a/common/ddr_spd.c b/common/ddr_spd.c
index 9394c57fa3..a878790550 100644
--- a/common/ddr_spd.c
+++ b/common/ddr_spd.c
@@ -429,3 +429,84 @@ void ddr_spd_print(uint8_t *record)
 		printf("%02X", record[i]);
 	printf("\n");
 }
+
+#define SPD_SPA0_ADDRESS        0x36
+#define SPD_SPA1_ADDRESS        0x37
+
+static int select_page(void *ctx,
+	      int (*xfer)(void *ctx, struct i2c_msg *msgs, int num),
+	      uint8_t addr)
+{
+	struct i2c_msg msg = {
+		.addr = addr,
+		.len = 0,
+	};
+	int ret;
+
+	ret = xfer(ctx, &msg, 1);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static int read_buf(void *ctx,
+	      int (*xfer)(void *ctx, struct i2c_msg *msgs, int num),
+	      uint8_t addr, int page, void *buf)
+{
+	uint8_t pos = 0;
+	int ret;
+	struct i2c_msg msg[2] = {
+		{
+			.addr = addr,
+			.len = 1,
+			.buf = &pos,
+		}, {
+			.addr = addr,
+			.len = 256,
+			.flags = I2C_M_RD,
+			.buf = buf,
+		}
+	};
+
+	ret = select_page(ctx, xfer, page);
+	if (ret < 0)
+		return ret;
+
+	ret = xfer(ctx, msg, 2);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+/**
+ * spd_read_eeprom - Read contents of a SPD EEPROM
+ * @ctx: Context pointer for the xfer function
+ * @xfer: I2C message transfer function
+ * @addr: I2C bus address for the EEPROM
+ * @buf: buffer to read the SPD data to
+ *
+ * This function takes a I2C message transfer function and reads the contents
+ * from a SPD EEPROM to the buffer provided at @buf. Returns 0 for success or a
+ * negative error code otherwise.
+ */
+int spd_read_eeprom(void *ctx,
+		    int (*xfer)(void *ctx, struct i2c_msg *msgs, int num),
+		    uint8_t addr, void *buf)
+{
+	unsigned char *buf8 = buf;
+	int ret;
+
+	ret = read_buf(ctx, xfer, addr, SPD_SPA0_ADDRESS, buf);
+	if (ret < 0)
+		return ret;
+
+	if (buf8[2] == SPD_MEMTYPE_DDR4) {
+		ret = read_buf(ctx, xfer, addr, SPD_SPA1_ADDRESS, buf + 256);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
diff --git a/include/ddr_spd.h b/include/ddr_spd.h
index 051275141f..95d0eb04b6 100644
--- a/include/ddr_spd.h
+++ b/include/ddr_spd.h
@@ -6,6 +6,8 @@
 #ifndef _DDR_SPD_H_
 #define _DDR_SPD_H_
 
+#include <i2c/i2c.h>
+
 /*
  * Format from "JEDEC Standard No. 21-C,
  * Appendix D: Rev 1.0: SPD's for DDR SDRAM
@@ -562,4 +564,8 @@ void ddr2_spd_dump(const struct ddr2_spd_eeprom *spd);
 int ddr3_spd_check(const struct ddr3_spd_eeprom *spd);
 int ddr4_spd_check(const struct ddr4_spd_eeprom *spd);
 
+int spd_read_eeprom(void *ctx,
+		    int (*xfer)(void *ctx, struct i2c_msg *msgs, int num),
+		    uint8_t addr, void *buf);
+
 #endif /* _DDR_SPD_H_ */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
