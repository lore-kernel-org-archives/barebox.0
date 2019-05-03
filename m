Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUa3-00039i-0W
 for barebox@lists.infradead.org; Fri, 03 May 2019 09:34:12 +0000
Received: from [2001:67c:670:c0a8:d4b8:1dff:fe64:e144] (helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZx-00087o-RN
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:05 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZx-0007Fg-FE
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:05 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  3 May 2019 11:33:51 +0200
Message-Id: <e4f4898a420a9ac532e5ab556db05a5226d95dfc.1556875750.git-series.s.trumtrar@pengutronix.de>
In-Reply-To: <cover.f11bd6763969bb7d206b1b29aa16d5758acb980a.1556875750.git-series.s.trumtrar@pengutronix.de>
References: <cover.f11bd6763969bb7d206b1b29aa16d5758acb980a.1556875750.git-series.s.trumtrar@pengutronix.de>
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
Subject: [PATCH 01/10] mtd: spi-nor: cadence: add cqspi_set_protocol
To: Barebox List <barebox@lists.infradead.org>

Sync up the driver with the original linux v4.7 driver version.

As only Quad-SPI mode is/was supported, the function was not
ported in the initial move to barebox.
To make future synchronizations with the kernel driver easier,
add this function and reorder the functions in the driver
accordingly.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mtd/spi-nor/cadence-quadspi.c | 176 +++++++++++++++++----------
 1 file changed, 113 insertions(+), 63 deletions(-)

diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index ed5377bd4ba0..4142f0de7dcb 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -45,6 +45,9 @@ struct cqspi_flash_pdata {
 	unsigned int tsd2d_ns;
 	unsigned int tchsh_ns;
 	unsigned int tslch_ns;
+	u8	     inst_width;
+	u8	     addr_width;
+	u8	     data_width;
 };
 
 struct cqspi_st {
@@ -287,9 +290,10 @@ static unsigned int cqspi_calc_rdreg(struct spi_nor *nor, u8 opcode)
 
 	f_pdata = &cqspi->f_pdata[cqspi->current_cs];
 
-	if (nor->flash_read == SPI_NOR_QUAD)
-		rdreg |= (CQSPI_INST_TYPE_QUAD
-			  << CQSPI_REG_RD_INSTR_TYPE_DATA_LSB);
+	rdreg |= f_pdata->inst_width << CQSPI_REG_RD_INSTR_TYPE_INSTR_LSB;
+	rdreg |= f_pdata->addr_width << CQSPI_REG_RD_INSTR_TYPE_ADDR_LSB;
+	rdreg |= f_pdata->data_width << CQSPI_REG_RD_INSTR_TYPE_DATA_LSB;
+
 	return rdreg;
 }
 
@@ -427,6 +431,7 @@ static int cqspi_command_write_addr(struct spi_nor *nor,
 static int cqspi_indirect_read_setup(struct spi_nor *nor,
 				     unsigned int from_addr)
 {
+	struct cqspi_flash_pdata *f_pdata;
 	struct cqspi_st *cqspi = nor->priv;
 	unsigned int ahb_base = (unsigned int) cqspi->ahb_base;
 	void __iomem *reg_base = cqspi->iobase;
@@ -437,6 +442,7 @@ static int cqspi_indirect_read_setup(struct spi_nor *nor,
 	writel(ahb_base & CQSPI_INDIRECTTRIGGER_ADDR_MASK,
 	       reg_base + CQSPI_REG_INDIRECTTRIGGER);
 	writel(from_addr, reg_base + CQSPI_REG_INDIRECTRDSTARTADDR);
+	f_pdata = &cqspi->f_pdata[cqspi->current_cs];
 
 	reg = nor->read_opcode << CQSPI_REG_RD_INSTR_OPCODE_LSB;
 	reg |= cqspi_calc_rdreg(nor, nor->read_opcode);
@@ -444,14 +450,10 @@ static int cqspi_indirect_read_setup(struct spi_nor *nor,
 	/* Setup dummy clock cycles */
 	dummy_bytes = nor->read_dummy / 8;
 
-	if (dummy_bytes) {
-		struct cqspi_flash_pdata *f_pdata;
-
-		f_pdata = &cqspi->f_pdata[cqspi->current_cs];
-
-		if (dummy_bytes > CQSPI_DUMMY_BYTES_MAX)
-			dummy_bytes = CQSPI_DUMMY_BYTES_MAX;
+	if (dummy_bytes > CQSPI_DUMMY_BYTES_MAX)
+		dummy_bytes = CQSPI_DUMMY_BYTES_MAX;
 
+	if (dummy_bytes) {
 		reg |= (1 << CQSPI_REG_RD_INSTR_MODE_EN_LSB);
 		/* Set mode bits high to ensure chip doesn't enter XIP */
 		writel(0xFF, reg_base + CQSPI_REG_MODE_BIT);
@@ -459,7 +461,8 @@ static int cqspi_indirect_read_setup(struct spi_nor *nor,
 		/* Convert to clock cycles. */
 		dummy_clk = dummy_bytes * CQSPI_DUMMY_CLKS_PER_BYTE;
 		/* Need to subtract the mode byte (8 clocks). */
-		dummy_clk -= CQSPI_DUMMY_CLKS_PER_BYTE;
+		if (f_pdata->inst_width != CQSPI_INST_TYPE_QUAD)
+			dummy_clk -= CQSPI_DUMMY_CLKS_PER_BYTE;
 
 		if (dummy_clk)
 			reg |= (dummy_clk & CQSPI_REG_RD_INSTR_DUMMY_MASK)
@@ -676,53 +679,6 @@ failwr:
 	return ret;
 }
 
-static void cqspi_write(struct spi_nor *nor, loff_t to,
-			size_t len, size_t *retlen, const u_char *buf)
-{
-	int ret;
-
-	if (!IS_ENABLED(CONFIG_MTD_WRITE))
-		return;
-
-	ret = cqspi_indirect_write_setup(nor, to);
-	if (ret == 0) {
-		ret = cqspi_indirect_write_execute(nor, buf, len);
-		if (ret == 0)
-			*retlen += len;
-	}
-}
-
-static int cqspi_read(struct spi_nor *nor, loff_t from,
-		      size_t len, size_t *retlen, u_char *buf)
-{
-	int ret;
-
-	ret = cqspi_indirect_read_setup(nor, from);
-	if (ret == 0) {
-		ret = cqspi_indirect_read_execute(nor, buf, len);
-		if (ret == 0)
-			*retlen += len;
-	}
-	return ret;
-}
-
-static int cqspi_erase(struct spi_nor *nor, loff_t offs)
-{
-	int ret;
-
-	/* Send write enable, then erase commands. */
-	ret = nor->write_reg(nor, SPINOR_OP_WREN, NULL, 0, 0);
-	if (ret)
-		return ret;
-
-	/* Set up command buffer. */
-	ret = cqspi_command_write_addr(nor, nor->erase_opcode, offs);
-	if (ret)
-		return ret;
-
-	return 0;
-}
-
 static unsigned int calculate_ticks_for_ns(unsigned int ref_clk_hz,
 					   unsigned int ns_val)
 {
@@ -908,7 +864,7 @@ static void cqspi_switch_cs(struct cqspi_st *cqspi, unsigned int cs)
 	cqspi_controller_enable(cqspi);
 }
 
-static int cqspi_prep(struct spi_nor *nor, enum spi_nor_ops ops)
+static int cqspi_configure(struct spi_nor *nor)
 {
 	struct cqspi_st *cqspi = nor->priv;
 	int cs = cqspi_find_chipselect(nor);
@@ -936,13 +892,106 @@ static int cqspi_prep(struct spi_nor *nor, enum spi_nor_ops ops)
 	return 0;
 }
 
+static int cqspi_set_protocol(struct spi_nor *nor, const int read)
+{
+	struct cqspi_st *cqspi = nor->priv;
+	struct cqspi_flash_pdata *f_pdata;
+
+	f_pdata = &cqspi->f_pdata[cqspi->current_cs];
+
+	f_pdata->inst_width = CQSPI_INST_TYPE_SINGLE;
+	f_pdata->addr_width = CQSPI_INST_TYPE_SINGLE;
+	f_pdata->data_width = CQSPI_INST_TYPE_SINGLE;
+
+	if (read) {
+		switch (nor->flash_read) {
+		case SPI_NOR_NORMAL:
+		case SPI_NOR_FAST:
+			f_pdata->data_width = CQSPI_INST_TYPE_SINGLE;
+			break;
+		case SPI_NOR_DUAL:
+			f_pdata->data_width = CQSPI_INST_TYPE_DUAL;
+			break;
+		case SPI_NOR_QUAD:
+			f_pdata->data_width = CQSPI_INST_TYPE_QUAD;
+			break;
+		default:
+			return -EINVAL;
+		}
+	}
+
+	cqspi_configure(nor);
+
+	return 0;
+}
+
+static void cqspi_write(struct spi_nor *nor, loff_t to,
+			size_t len, size_t *retlen, const u_char *buf)
+{
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return;
+
+	ret = cqspi_set_protocol(nor, 0);
+	if (ret)
+		return;
+
+	ret = cqspi_indirect_write_setup(nor, to);
+	if (ret == 0) {
+		ret = cqspi_indirect_write_execute(nor, buf, len);
+		if (ret == 0)
+			*retlen += len;
+	}
+}
+
+static int cqspi_read(struct spi_nor *nor, loff_t from,
+		      size_t len, size_t *retlen, u_char *buf)
+{
+	int ret;
+
+	ret = cqspi_set_protocol(nor, 1);
+	if (ret)
+		return ret;
+
+	ret = cqspi_indirect_read_setup(nor, from);
+	if (ret == 0) {
+		ret = cqspi_indirect_read_execute(nor, buf, len);
+		if (ret == 0)
+			*retlen += len;
+	}
+	return ret;
+}
+
+static int cqspi_erase(struct spi_nor *nor, loff_t offs)
+{
+	int ret;
+
+	ret = cqspi_set_protocol(nor, 1);
+	if (ret)
+		return ret;
+
+	/* Send write enable, then erase commands. */
+	ret = nor->write_reg(nor, SPINOR_OP_WREN, NULL, 0, 0);
+	if (ret)
+		return ret;
+
+	/* Set up command buffer. */
+	ret = cqspi_command_write_addr(nor, nor->erase_opcode, offs);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 static int cqspi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
 {
 	int ret;
 
-	cqspi_prep(nor, SPI_NOR_OPS_READ);
+	ret = cqspi_set_protocol(nor, 0);
+	if (!ret)
+		ret = cqspi_command_read(nor, &opcode, 1, buf, len);
 
-	ret = cqspi_command_read(nor, &opcode, 1, buf, len);
 	return ret;
 }
 
@@ -954,9 +1003,10 @@ static int cqspi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len,
 	if (!IS_ENABLED(CONFIG_MTD_WRITE))
 		return -ENOTSUPP;
 
-	cqspi_prep(nor, SPI_NOR_OPS_WRITE);
+	ret = cqspi_set_protocol(nor, 0);
+	if (!ret)
+		ret = cqspi_command_write(nor, opcode, buf, len);
 
-	ret = cqspi_command_write(nor, opcode, buf, len);
 	return ret;
 }
 
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
