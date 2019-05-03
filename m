Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUa2-0003ng-1J
 for barebox@lists.infradead.org; Fri, 03 May 2019 09:34:15 +0000
Received: from [2001:67c:670:c0a8:d4b8:1dff:fe64:e144] (helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZy-00087w-4w
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:06 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZx-0007Fv-Nk
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:05 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  3 May 2019 11:33:56 +0200
Message-Id: <f0e89a4376cc31b914d3ddab6e9f270a05e335b0.1556875750.git-series.s.trumtrar@pengutronix.de>
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
Subject: [PATCH 06/10] mtd: spi-nor: remove unused read_xfer/write_xfer hooks
To: Barebox List <barebox@lists.infradead.org>

Based on the Linux v4.3 patch:

  commit 79c452adb159dc9abc507ea13faec8d115a78758
  Author:     Cyrille Pitchen <cyrille.pitchen@atmel.com>
  AuthorDate: Fri Sep 18 17:49:25 2015 +0200
  Commit:     Brian Norris <computersforpeace@gmail.com>
  CommitDate: Mon Sep 21 16:49:52 2015 -0700

      mtd: spi-nor: remove unused read_xfer/write_xfer hooks

      struct spi_nor_xfer_cfg and read_xfer/write_xfer hooks were never used by
      any driver. Do some cleanup by removing them.

      Signed-off-by: Cyrille Pitchen <cyrille.pitchen@atmel.com>
      Reviewed-by: Marek Vasut <marex@denx.de>
      Signed-off-by: Brian Norris <computersforpeace@gmail.com>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/linux/mtd/spi-nor.h | 32 --------------------------------
 1 file changed, 32 deletions(-)

diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index ec6825471b60..beac1e7ab0f3 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -82,33 +82,6 @@ enum read_mode {
 	SPI_NOR_QUAD,
 };
 
-/**
- * struct spi_nor_xfer_cfg - Structure for defining a Serial Flash transfer
- * @wren:		command for "Write Enable", or 0x00 for not required
- * @cmd:		command for operation
- * @cmd_pins:		number of pins to send @cmd (1, 2, 4)
- * @addr:		address for operation
- * @addr_pins:		number of pins to send @addr (1, 2, 4)
- * @addr_width:		number of address bytes
- *			(3,4, or 0 for address not required)
- * @mode:		mode data
- * @mode_pins:		number of pins to send @mode (1, 2, 4)
- * @mode_cycles:	number of mode cycles (0 for mode not required)
- * @dummy_cycles:	number of dummy cycles (0 for dummy not required)
- */
-struct spi_nor_xfer_cfg {
-	u8		wren;
-	u8		cmd;
-	u8		cmd_pins;
-	u32		addr;
-	u8		addr_pins;
-	u8		addr_width;
-	u8		mode;
-	u8		mode_pins;
-	u8		mode_cycles;
-	u8		dummy_cycles;
-};
-
 #define SPI_NOR_MAX_CMD_SIZE	8
 enum spi_nor_ops {
 	SPI_NOR_OPS_READ = 0,
@@ -165,15 +138,10 @@ struct spi_nor {
 	enum read_mode		flash_read;
 	bool			sst_write_second;
 	u32			flags;
-	struct spi_nor_xfer_cfg	cfg;
 	u8			cmd_buf[SPI_NOR_MAX_CMD_SIZE];
 
 	int (*prepare)(struct spi_nor *nor, enum spi_nor_ops ops);
 	void (*unprepare)(struct spi_nor *nor, enum spi_nor_ops ops);
-	int (*read_xfer)(struct spi_nor *nor, struct spi_nor_xfer_cfg *cfg,
-			 u8 *buf, size_t len);
-	int (*write_xfer)(struct spi_nor *nor, struct spi_nor_xfer_cfg *cfg,
-			  u8 *buf, size_t len);
 	int (*read_reg)(struct spi_nor *nor, u8 opcode, u8 *buf, int len);
 	int (*write_reg)(struct spi_nor *nor, u8 opcode, u8 *buf, int len);
 
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
