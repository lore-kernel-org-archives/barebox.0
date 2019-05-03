Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUa1-0003nh-Tm
 for barebox@lists.infradead.org; Fri, 03 May 2019 09:34:12 +0000
Received: from [2001:67c:670:c0a8:d4b8:1dff:fe64:e144] (helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZy-00088C-CB
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:06 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZx-0007G7-VF
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:05 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  3 May 2019 11:34:00 +0200
Message-Id: <2c719e26b64aae260ce65ff47d22a4fe06ca9e5e.1556875750.git-series.s.trumtrar@pengutronix.de>
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
Subject: [PATCH 10/10] mtd: devices: m25p80: use the spi_mem_xx() API
To: Barebox List <barebox@lists.infradead.org>

This is the barebox adoption of the linux v4.16 patch

  4120f8d158ef904fb305b27e4a4524649faf3096
  Author:     Boris Brezillon <bbrezillon@kernel.org>
  AuthorDate: Thu Apr 26 18:18:19 2018 +0200
  Commit:     Mark Brown <broonie@kernel.org>
  CommitDate: Fri May 11 11:33:51 2018 +0900

  mtd: spi-nor: Use the spi_mem_xx() API

  The spi_mem_xxx() API has been introduced to replace the
  spi_flash_read() one. Make use of it so we can get rid of
  spi_flash_read().

  Note that using spi_mem_xx() also simplifies the code because this API
  takes care of using the regular spi_sync() interface when the optimized
  ->mem_ops interface is not implemented by the controller.

  Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
  Reviewed-by: Frieder Schrempf <frieder.schrempf@exceet.de>
  Tested-by: Frieder Schrempf <frieder.schrempf@exceet.de>
  Signed-off-by: Mark Brown <broonie@kernel.org>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mtd/devices/Kconfig  |   1 +-
 drivers/mtd/devices/m25p80.c | 142 +++++++++++++++---------------------
 2 files changed, 62 insertions(+), 81 deletions(-)

diff --git a/drivers/mtd/devices/Kconfig b/drivers/mtd/devices/Kconfig
index 9c3925bde135..25db10a9b2cb 100644
--- a/drivers/mtd/devices/Kconfig
+++ b/drivers/mtd/devices/Kconfig
@@ -23,6 +23,7 @@ config MTD_M25P80
 	tristate "Support most SPI Flash chips (AT26DF, M25P, W25X, ...)"
 	depends on SPI
 	select MTD_SPI_NOR
+	select SPI_MEM
 	help
 	  This enables access to most modern SPI flash chips, used for
 	  program and data storage. Series supported include Atmel AT26DF,
diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 8c4659ce11e0..a6098b9c5856 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -27,12 +27,13 @@
 #include <clock.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/spi-nor.h>
+#include <linux/spi/spi-mem.h>
 #include <linux/mod_devicetable.h>
 
 #define MAX_CMD_SIZE		6
 
 struct m25p {
-	struct spi_device	*spi;
+	struct spi_mem		*spimem;
 	struct spi_nor		spi_nor;
 	struct mtd_info		mtd;
 	u8			command[MAX_CMD_SIZE];
@@ -41,70 +42,60 @@ struct m25p {
 static int m25p80_read_reg(struct spi_nor *nor, u8 code, u8 *val, int len)
 {
 	struct m25p *flash = nor->priv;
-	struct spi_device *spi = flash->spi;
+	struct spi_mem_op op = SPI_MEM_OP(SPI_MEM_OP_CMD(code, 1),
+					  SPI_MEM_OP_NO_ADDR,
+					  SPI_MEM_OP_NO_DUMMY,
+					  SPI_MEM_OP_DATA_IN(len, val, 1));
 	int ret;
 
-	ret = spi_write_then_read(spi, &code, 1, val, len);
-	if (ret < 0)
-		dev_err(&spi->dev, "error %d reading %x\n", ret, code);
+	ret = spi_mem_exec_op(flash->spimem, &op);
+ 	if (ret < 0)
+		dev_err(&flash->spimem->spi->dev, "error %d reading %x\n", ret,
+			code);
 
 	return ret;
 }
 
-static void m25p_addr2cmd(struct spi_nor *nor, unsigned int addr, u8 *cmd)
-{
-	/* opcode is in cmd[0] */
-	cmd[1] = addr >> (nor->addr_width * 8 -  8);
-	cmd[2] = addr >> (nor->addr_width * 8 - 16);
-	cmd[3] = addr >> (nor->addr_width * 8 - 24);
-	cmd[4] = addr >> (nor->addr_width * 8 - 32);
-}
-
-static int m25p_cmdsz(struct spi_nor *nor)
-{
-	return 1 + nor->addr_width;
-}
-
 static int m25p80_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
 {
 	struct m25p *flash = nor->priv;
-	struct spi_device *spi = flash->spi;
+	struct spi_mem_op op = SPI_MEM_OP(SPI_MEM_OP_CMD(opcode, 1),
+					  SPI_MEM_OP_NO_ADDR,
+					  SPI_MEM_OP_NO_DUMMY,
+					  SPI_MEM_OP_DATA_OUT(len, buf, 1));
 
-	flash->command[0] = opcode;
-	if (buf)
-		memcpy(&flash->command[1], buf, len);
-
-	return spi_write(spi, flash->command, len + 1);
+	return spi_mem_exec_op(flash->spimem, &op);
 }
 
 static void m25p80_write(struct spi_nor *nor, loff_t to, size_t len,
 			 size_t *retlen, const u_char *buf)
 {
 	struct m25p *flash = nor->priv;
-	struct spi_device *spi = flash->spi;
-	struct spi_transfer t[2] = {};
-	struct spi_message m;
-	int cmd_sz = m25p_cmdsz(nor);
+	struct spi_mem_op op =
+		SPI_MEM_OP(SPI_MEM_OP_CMD(nor->program_opcode, 1),
+			   SPI_MEM_OP_ADDR(nor->addr_width, to, 1),
+			   SPI_MEM_OP_NO_DUMMY,
+			   SPI_MEM_OP_DATA_OUT(len, buf, 1));
+	int ret;
 
-	spi_message_init(&m);
+	op.cmd.buswidth = spi_nor_get_protocol_inst_nbits(nor->write_proto);
+	op.addr.buswidth = spi_nor_get_protocol_addr_nbits(nor->write_proto);
+	op.data.buswidth = spi_nor_get_protocol_data_nbits(nor->write_proto);
 
 	if (nor->program_opcode == SPINOR_OP_AAI_WP && nor->sst_write_second)
-		cmd_sz = 1;
-
-	flash->command[0] = nor->program_opcode;
-	m25p_addr2cmd(nor, to, flash->command);
+		op.addr.nbytes = 0;
 
-	t[0].tx_buf = flash->command;
-	t[0].len = cmd_sz;
-	spi_message_add_tail(&t[0], &m);
+	ret = spi_mem_adjust_op_size(flash->spimem, &op);
+	if (ret)
+		return;
 
-	t[1].tx_buf = buf;
-	t[1].len = len;
-	spi_message_add_tail(&t[1], &m);
+	op.data.nbytes = len < op.data.nbytes ? len : op.data.nbytes;
 
-	spi_sync(spi, &m);
+	ret = spi_mem_exec_op(flash->spimem, &op);
+	if (ret)
+		return;
 
-	*retlen += m.actual_length - cmd_sz;
+	*retlen = op.data.nbytes;
 }
 
 /*
@@ -115,46 +106,35 @@ static int m25p80_read(struct spi_nor *nor, loff_t from, size_t len,
 		       size_t *retlen, u_char *buf)
 {
 	struct m25p *flash = nor->priv;
-	struct spi_device *spi = flash->spi;
-	struct spi_transfer t[2];
-	struct spi_message m;
-	unsigned int dummy = nor->read_dummy;
-
-	/* convert the dummy cycles to the number of bytes */
-	dummy /= 8;
-
-	spi_message_init(&m);
-	memset(t, 0, (sizeof t));
-
-	flash->command[0] = nor->read_opcode;
-	m25p_addr2cmd(nor, from, flash->command);
-
-	t[0].tx_buf = flash->command;
-	t[0].len = m25p_cmdsz(nor) + dummy;
-	spi_message_add_tail(&t[0], &m);
-
-	t[1].rx_buf = buf;
-	t[1].len = len;
-	spi_message_add_tail(&t[1], &m);
-
-	spi_sync(spi, &m);
-
-	*retlen = m.actual_length - m25p_cmdsz(nor) - dummy;
-	return 0;
-}
+	struct spi_mem_op op =
+		SPI_MEM_OP(SPI_MEM_OP_CMD(nor->read_opcode, 1),
+			   SPI_MEM_OP_ADDR(nor->addr_width, from, 1),
+			   SPI_MEM_OP_DUMMY(nor->read_dummy, 1),
+			   SPI_MEM_OP_DATA_IN(len, buf, 1));
+	size_t remaining = len;
+	int ret;
 
-static int m25p80_erase(struct spi_nor *nor, loff_t offset)
-{
-	struct m25p *flash = nor->priv;
+	op.cmd.buswidth = spi_nor_get_protocol_inst_nbits(nor->read_proto);
+	op.addr.buswidth = spi_nor_get_protocol_addr_nbits(nor->read_proto);
+	op.dummy.buswidth = op.addr.buswidth;
+	op.data.buswidth = spi_nor_get_protocol_data_nbits(nor->read_proto);
 
-	dev_dbg(nor->dev, "%dKiB at 0x%08x\n",
-			flash->mtd.erasesize / 1024, (u32)offset);
+	op.dummy.nbytes = (nor->read_dummy * op.dummy.buswidth) / 8;
 
-	/* Set up command buffer. */
-	flash->command[0] = nor->erase_opcode;
-	m25p_addr2cmd(nor, offset, flash->command);
+	while (remaining) {
+		op.data.nbytes = remaining < UINT_MAX ? remaining : UINT_MAX;
+		ret = spi_mem_adjust_op_size(flash->spimem, &op);
+		if (ret)
+ 			return ret;
+		ret = spi_mem_exec_op(flash->spimem, &op);
+		if (ret)
+			return ret;
+		op.addr.val += op.data.nbytes;
+		remaining -= op.data.nbytes;
+		op.data.buf.in += op.data.nbytes;
+ 	}
 
-	spi_write(flash->spi, flash->command, m25p_cmdsz(nor));
+	*retlen = len;
 
 	return 0;
 }
@@ -228,6 +208,7 @@ static const struct platform_device_id m25p_ids[] = {
 static int m25p_probe(struct device_d *dev)
 {
 	struct spi_device *spi = (struct spi_device *)dev->type_data;
+	struct spi_mem *spimem = spi->mem;
 	struct flash_platform_data	*data;
 	struct m25p			*flash;
 	struct spi_nor			*nor;
@@ -250,17 +231,16 @@ static int m25p_probe(struct device_d *dev)
 	/* install the hooks */
 	nor->read = m25p80_read;
 	nor->write = m25p80_write;
-	nor->erase = m25p80_erase;
 	nor->write_reg = m25p80_write_reg;
 	nor->read_reg = m25p80_read_reg;
 
-	nor->dev = dev;
+	nor->dev = &spimem->spi->dev;
 	nor->mtd = &flash->mtd;
 	nor->priv = flash;
 
 	flash->mtd.priv = nor;
 	flash->mtd.parent = &spi->dev;
-	flash->spi = spi;
+	flash->spimem = spimem;
 
 	if (spi->mode & SPI_RX_QUAD)
 		hwcaps.mask |= SNOR_HWCAPS_READ_1_1_4;
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
