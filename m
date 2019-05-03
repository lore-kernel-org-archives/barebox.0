Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUa1-0003nj-Uy
 for barebox@lists.infradead.org; Fri, 03 May 2019 09:34:15 +0000
Received: from [2001:67c:670:c0a8:d4b8:1dff:fe64:e144] (helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZy-00087t-5Z
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:06 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZx-0007Fs-Lu
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:05 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  3 May 2019 11:33:55 +0200
Message-Id: <4fcfb40618d740302a8c211448895fb0eedd46b5.1556875750.git-series.s.trumtrar@pengutronix.de>
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
Subject: [PATCH 05/10] mtd: spi-nor: remove unused write_enable from write_reg
To: Barebox List <barebox@lists.infradead.org>

Based on the Linux v4.2 commit:

  commit f9f3ce835ddce3c669eee869253105f88819888b
  Author:     Jagan Teki <jteki@openedev.com>
  AuthorDate: Wed Aug 19 15:26:44 2015 +0530
  Commit:     Brian Norris <computersforpeace@gmail.com>
  CommitDate: Fri Sep 11 16:04:55 2015 -0700

      mtd: spi-nor: Zap unneeded write_enable from write_reg

      The 'write_enable' argument is unused and unneeded, so remove it from
      the API.

      Signed-off-by: Jagan Teki <jteki@openedev.com>
      Cc: David Woodhouse <dwmw2@infradead.org>
      Cc: Han Xu <han.xu@freescale.com>
      [Brian: fixed for nxp-spifi.c]
      Signed-off-by: Brian Norris <computersforpeace@gmail.com>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mtd/devices/m25p80.c          |  3 +--
 drivers/mtd/spi-nor/cadence-quadspi.c |  5 ++---
 drivers/mtd/spi-nor/spi-nor.c         | 16 ++++++++--------
 include/linux/mtd/spi-nor.h           |  3 +--
 4 files changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 8a67792125e3..de1d325cff97 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -65,8 +65,7 @@ static int m25p_cmdsz(struct spi_nor *nor)
 	return 1 + nor->addr_width;
 }
 
-static int m25p80_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len,
-			    int wr_en)
+static int m25p80_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
 {
 	struct m25p *flash = nor->priv;
 	struct spi_device *spi = flash->spi;
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 4142f0de7dcb..781f3b72908e 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -972,7 +972,7 @@ static int cqspi_erase(struct spi_nor *nor, loff_t offs)
 		return ret;
 
 	/* Send write enable, then erase commands. */
-	ret = nor->write_reg(nor, SPINOR_OP_WREN, NULL, 0, 0);
+	ret = nor->write_reg(nor, SPINOR_OP_WREN, NULL, 0);
 	if (ret)
 		return ret;
 
@@ -995,8 +995,7 @@ static int cqspi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
 	return ret;
 }
 
-static int cqspi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len,
-			   int write_enable)
+static int cqspi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
 {
 	int ret = 0;
 
diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 851ac1c33e7f..ff0dca80f417 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -153,7 +153,7 @@ static inline int spi_nor_read_dummy_cycles(struct spi_nor *nor)
 static inline int write_sr(struct spi_nor *nor, u8 val)
 {
 	nor->cmd_buf[0] = val;
-	return nor->write_reg(nor, SPINOR_OP_WRSR, nor->cmd_buf, 1, 0);
+	return nor->write_reg(nor, SPINOR_OP_WRSR, nor->cmd_buf, 1);
 }
 
 /*
@@ -162,7 +162,7 @@ static inline int write_sr(struct spi_nor *nor, u8 val)
  */
 static inline int write_enable(struct spi_nor *nor)
 {
-	return nor->write_reg(nor, SPINOR_OP_WREN, NULL, 0, 0);
+	return nor->write_reg(nor, SPINOR_OP_WREN, NULL, 0);
 }
 
 /*
@@ -170,7 +170,7 @@ static inline int write_enable(struct spi_nor *nor)
  */
 static inline int write_disable(struct spi_nor *nor)
 {
-	return nor->write_reg(nor, SPINOR_OP_WRDI, NULL, 0, 0);
+	return nor->write_reg(nor, SPINOR_OP_WRDI, NULL, 0);
 }
 
 static inline struct spi_nor *mtd_to_spi_nor(struct mtd_info *mtd)
@@ -196,7 +196,7 @@ static inline int set_4byte(struct spi_nor *nor, struct flash_info *info,
 			write_enable(nor);
 
 		cmd = enable ? SPINOR_OP_EN4B : SPINOR_OP_EX4B;
-		status = nor->write_reg(nor, cmd, NULL, 0, 0);
+		status = nor->write_reg(nor, cmd, NULL, 0);
 		if (need_wren)
 			write_disable(nor);
 
@@ -204,7 +204,7 @@ static inline int set_4byte(struct spi_nor *nor, struct flash_info *info,
 	default:
 		/* Spansion style */
 		nor->cmd_buf[0] = enable << 7;
-		return nor->write_reg(nor, SPINOR_OP_BRWR, nor->cmd_buf, 1, 0);
+		return nor->write_reg(nor, SPINOR_OP_BRWR, nor->cmd_buf, 1);
 	}
 }
 static inline int spi_nor_sr_ready(struct spi_nor *nor)
@@ -279,7 +279,7 @@ static int erase_chip(struct spi_nor *nor)
 {
 	dev_dbg(nor->dev, " %lldKiB\n", (long long)(nor->mtd->size >> 10));
 
-	return nor->write_reg(nor, SPINOR_OP_CHIP_ERASE, NULL, 0, 0);
+	return nor->write_reg(nor, SPINOR_OP_CHIP_ERASE, NULL, 0);
 }
 
 static int spi_nor_lock_and_prep(struct spi_nor *nor, enum spi_nor_ops ops)
@@ -827,7 +827,7 @@ static int macronix_quad_enable(struct spi_nor *nor)
 	write_enable(nor);
 
 	nor->cmd_buf[0] = val | SR_QUAD_EN_MX;
-	nor->write_reg(nor, SPINOR_OP_WRSR, nor->cmd_buf, 1, 0);
+	nor->write_reg(nor, SPINOR_OP_WRSR, nor->cmd_buf, 1);
 
 	if (spi_nor_wait_till_ready(nor))
 		return 1;
@@ -852,7 +852,7 @@ static int write_sr_cr(struct spi_nor *nor, u16 val)
 	nor->cmd_buf[0] = val & 0xff;
 	nor->cmd_buf[1] = (val >> 8);
 
-	return nor->write_reg(nor, SPINOR_OP_WRSR, nor->cmd_buf, 2, 0);
+	return nor->write_reg(nor, SPINOR_OP_WRSR, nor->cmd_buf, 2);
 }
 
 static int spansion_quad_enable(struct spi_nor *nor)
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index de9ac08ef173..ec6825471b60 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -175,8 +175,7 @@ struct spi_nor {
 	int (*write_xfer)(struct spi_nor *nor, struct spi_nor_xfer_cfg *cfg,
 			  u8 *buf, size_t len);
 	int (*read_reg)(struct spi_nor *nor, u8 opcode, u8 *buf, int len);
-	int (*write_reg)(struct spi_nor *nor, u8 opcode, u8 *buf, int len,
-			int write_enable);
+	int (*write_reg)(struct spi_nor *nor, u8 opcode, u8 *buf, int len);
 
 	int (*read)(struct spi_nor *nor, loff_t from,
 			size_t len, size_t *retlen, u_char *read_buf);
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
