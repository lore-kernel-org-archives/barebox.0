Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUa2-0003nm-4V
 for barebox@lists.infradead.org; Fri, 03 May 2019 09:34:20 +0000
Received: from [2001:67c:670:c0a8:d4b8:1dff:fe64:e144] (helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZy-000881-Aa
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:06 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZx-0007G1-RM
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:05 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  3 May 2019 11:33:58 +0200
Message-Id: <d3f17b97203281926d79a69424e8fc7a8a479360.1556875750.git-series.s.trumtrar@pengutronix.de>
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
Subject: [PATCH 08/10] mtd: spi-nor: introduce SPI 1-2-2 and SPI 1-4-4
 protocols
To: Barebox List <barebox@lists.infradead.org>

Sync the driver with Linux v4.12 and apply the patch

  commit cfc5604c488ccd17936b69008af0c9ae050f4a08
  Author:     Cyrille Pitchen <cyrille.pitchen@atmel.com>
  AuthorDate: Tue Apr 25 22:08:46 2017 +0200
  Commit:     Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>
  CommitDate: Mon May 15 21:56:17 2017 +0200

      mtd: spi-nor: introduce SPI 1-2-2 and SPI 1-4-4 protocols

      This patch changes the prototype of spi_nor_scan(): its 3rd parameter
      is replaced by a 'struct spi_nor_hwcaps' pointer, which tells the spi-nor
      framework about the actual hardware capabilities supported by the SPI
      controller and its driver.

      Besides, this patch also introduces a new 'struct spi_nor_flash_parameter'
      telling the spi-nor framework about the hardware capabilities supported by
      the SPI flash memory and the associated settings required to use those
      hardware caps.

      Then, to improve the readability of spi_nor_scan(), the discovery of the
      memory settings and the memory initialization are now split into two
      dedicated functions.

      1 - spi_nor_init_params()

      The spi_nor_init_params() function is responsible for initializing the
      'struct spi_nor_flash_parameter'. Currently this structure is filled with
      legacy values but further patches will allow to override some parameter
      values dynamically, for instance by reading the JESD216 Serial Flash
      Discoverable Parameter (SFDP) tables from the SPI memory.
      The spi_nor_init_params() function only deals with the hardware
      capabilities of the SPI flash memory: especially it doesn't care about
      the hardware capabilities supported by the SPI controller.

      2 - spi_nor_setup()

      The second function is called once the 'struct spi_nor_flash_parameter'
      has been initialized by spi_nor_init_params().
      With both 'struct spi_nor_flash_parameter' and 'struct spi_nor_hwcaps',
      the new argument of spi_nor_scan(), spi_nor_setup() computes the best
      match between hardware caps supported by both the (Q)SPI memory and
      controller hence selecting the relevant settings for (Fast) Read and Page
      Program operations.

      Signed-off-by: Cyrille Pitchen <cyrille.pitchen@atmel.com>
      Reviewed-by: Marek Vasut <marek.vasut@gmail.com>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mtd/devices/m25p80.c          |  13 +-
 drivers/mtd/spi-nor/cadence-quadspi.c | 118 ++---
 drivers/mtd/spi-nor/spi-nor.c         | 584 ++++++++++++++++++++-------
 include/linux/mtd/spi-nor.h           | 194 +++++++--
 4 files changed, 679 insertions(+), 230 deletions(-)

diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index de1d325cff97..8c4659ce11e0 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -231,7 +231,11 @@ static int m25p_probe(struct device_d *dev)
 	struct flash_platform_data	*data;
 	struct m25p			*flash;
 	struct spi_nor			*nor;
-	enum read_mode mode =		SPI_NOR_NORMAL;
+	struct spi_nor_hwcaps hwcaps = {
+		.mask = SNOR_HWCAPS_READ |
+			SNOR_HWCAPS_READ_FAST |
+			SNOR_HWCAPS_PP,
+	};
 	const char			*flash_name = NULL;
 	int				device_id;
 	bool				use_large_blocks;
@@ -258,6 +262,11 @@ static int m25p_probe(struct device_d *dev)
 	flash->mtd.parent = &spi->dev;
 	flash->spi = spi;
 
+	if (spi->mode & SPI_RX_QUAD)
+		hwcaps.mask |= SNOR_HWCAPS_READ_1_1_4;
+	else if (spi->mode & SPI_RX_DUAL)
+		hwcaps.mask |= SNOR_HWCAPS_READ_1_1_2;
+
 	dev->priv = (void *)flash;
 
 	if (data && data->name)
@@ -275,7 +284,7 @@ static int m25p_probe(struct device_d *dev)
 	use_large_blocks = of_property_read_bool(dev->device_node,
 			"use-large-blocks");
 
-	ret = spi_nor_scan(nor, flash_name, mode, use_large_blocks);
+	ret = spi_nor_scan(nor, flash_name, &hwcaps, use_large_blocks);
 	if (ret)
 		return ret;
 
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 781f3b72908e..11e4d236dd4c 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -679,6 +679,55 @@ failwr:
 	return ret;
 }
 
+static void cqspi_controller_enable(struct cqspi_st *cqspi)
+{
+	void __iomem *reg_base = cqspi->iobase;
+	unsigned int reg;
+
+	reg = readl(reg_base + CQSPI_REG_CONFIG);
+	reg |= CQSPI_REG_CONFIG_ENABLE_MASK;
+	writel(reg, reg_base + CQSPI_REG_CONFIG);
+}
+
+static void cqspi_controller_disable(struct cqspi_st *cqspi)
+{
+	void __iomem *reg_base = cqspi->iobase;
+	unsigned int reg;
+
+	reg = readl(reg_base + CQSPI_REG_CONFIG);
+	reg &= ~CQSPI_REG_CONFIG_ENABLE_MASK;
+	writel(reg, reg_base + CQSPI_REG_CONFIG);
+}
+
+static void cqspi_chipselect(struct cqspi_st *cqspi,
+			     unsigned int chip_select,
+			     unsigned int decoder_enable)
+{
+	void __iomem *reg_base = cqspi->iobase;
+	unsigned int reg;
+
+	reg = readl(reg_base + CQSPI_REG_CONFIG);
+	if (decoder_enable) {
+		reg |= CQSPI_REG_CONFIG_DECODE_MASK;
+	} else {
+		reg &= ~CQSPI_REG_CONFIG_DECODE_MASK;
+
+		/* Convert CS if without decoder.
+		 * CS0 to 4b'1110
+		 * CS1 to 4b'1101
+		 * CS2 to 4b'1011
+		 * CS3 to 4b'0111
+		 */
+		chip_select = 0xF & ~(1 << chip_select);
+	}
+
+	reg &= ~(CQSPI_REG_CONFIG_CHIPSELECT_MASK
+		 << CQSPI_REG_CONFIG_CHIPSELECT_LSB);
+	reg |= (chip_select & CQSPI_REG_CONFIG_CHIPSELECT_MASK)
+		<< CQSPI_REG_CONFIG_CHIPSELECT_LSB;
+	writel(reg, reg_base + CQSPI_REG_CONFIG);
+}
+
 static unsigned int calculate_ticks_for_ns(unsigned int ref_clk_hz,
 					   unsigned int ns_val)
 {
@@ -790,55 +839,6 @@ static void cqspi_readdata_capture(struct cqspi_st *cqspi,
 	writel(reg, reg_base + CQSPI_REG_READCAPTURE);
 }
 
-static void cqspi_chipselect(struct cqspi_st *cqspi,
-			     unsigned int chip_select,
-			     unsigned int decoder_enable)
-{
-	void __iomem *reg_base = cqspi->iobase;
-	unsigned int reg;
-
-	reg = readl(reg_base + CQSPI_REG_CONFIG);
-	if (decoder_enable) {
-		reg |= CQSPI_REG_CONFIG_DECODE_MASK;
-	} else {
-		reg &= ~CQSPI_REG_CONFIG_DECODE_MASK;
-
-		/* Convert CS if without decoder.
-		 * CS0 to 4b'1110
-		 * CS1 to 4b'1101
-		 * CS2 to 4b'1011
-		 * CS3 to 4b'0111
-		 */
-		chip_select = 0xF & ~(1 << chip_select);
-	}
-
-	reg &= ~(CQSPI_REG_CONFIG_CHIPSELECT_MASK
-		 << CQSPI_REG_CONFIG_CHIPSELECT_LSB);
-	reg |= (chip_select & CQSPI_REG_CONFIG_CHIPSELECT_MASK)
-	    << CQSPI_REG_CONFIG_CHIPSELECT_LSB;
-	writel(reg, reg_base + CQSPI_REG_CONFIG);
-}
-
-static void cqspi_controller_enable(struct cqspi_st *cqspi)
-{
-	void __iomem *reg_base = cqspi->iobase;
-	unsigned int reg;
-
-	reg = readl(reg_base + CQSPI_REG_CONFIG);
-	reg |= CQSPI_REG_CONFIG_ENABLE_MASK;
-	writel(reg, reg_base + CQSPI_REG_CONFIG);
-}
-
-static void cqspi_controller_disable(struct cqspi_st *cqspi)
-{
-	void __iomem *reg_base = cqspi->iobase;
-	unsigned int reg;
-
-	reg = readl(reg_base + CQSPI_REG_CONFIG);
-	reg &= ~CQSPI_REG_CONFIG_ENABLE_MASK;
-	writel(reg, reg_base + CQSPI_REG_CONFIG);
-}
-
 static void cqspi_switch_cs(struct cqspi_st *cqspi, unsigned int cs)
 {
 	unsigned int reg;
@@ -904,15 +904,14 @@ static int cqspi_set_protocol(struct spi_nor *nor, const int read)
 	f_pdata->data_width = CQSPI_INST_TYPE_SINGLE;
 
 	if (read) {
-		switch (nor->flash_read) {
-		case SPI_NOR_NORMAL:
-		case SPI_NOR_FAST:
+		switch (nor->read_proto) {
+		case SNOR_PROTO_1_1_1:
 			f_pdata->data_width = CQSPI_INST_TYPE_SINGLE;
 			break;
-		case SPI_NOR_DUAL:
+		case SNOR_PROTO_1_1_2:
 			f_pdata->data_width = CQSPI_INST_TYPE_DUAL;
 			break;
-		case SPI_NOR_QUAD:
+		case SNOR_PROTO_1_1_4:
 			f_pdata->data_width = CQSPI_INST_TYPE_QUAD;
 			break;
 		default:
@@ -967,7 +966,7 @@ static int cqspi_erase(struct spi_nor *nor, loff_t offs)
 {
 	int ret;
 
-	ret = cqspi_set_protocol(nor, 1);
+	ret = cqspi_set_protocol(nor, 0);
 	if (ret)
 		return ret;
 
@@ -1083,6 +1082,13 @@ static int cqspi_setup_flash(struct device_d *dev,
 			     struct cqspi_flash_pdata *f_pdata,
 			     struct device_node *np)
 {
+	const struct spi_nor_hwcaps hwcaps = {
+		.mask = SNOR_HWCAPS_READ |
+			SNOR_HWCAPS_READ_FAST |
+			SNOR_HWCAPS_READ_1_1_2 |
+			SNOR_HWCAPS_READ_1_1_4 |
+			SNOR_HWCAPS_PP,
+	};
 	struct cqspi_st *cqspi = dev->priv;
 	struct mtd_info *mtd;
 	struct spi_nor *nor;
@@ -1124,7 +1130,7 @@ static int cqspi_setup_flash(struct device_d *dev,
 	nor->write = cqspi_write;
 	nor->erase = cqspi_erase;
 
-	ret = spi_nor_scan(nor, NULL, SPI_NOR_QUAD, false);
+	ret = spi_nor_scan(nor, NULL, &hwcaps, false);
 	if (ret)
 		goto probe_failed;
 
diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index ff0dca80f417..e086d868e2e3 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -57,14 +57,85 @@ struct flash_info {
 	u16		addr_width;
 
 	u16		flags;
-#define	SECT_4K			0x01	/* SPINOR_OP_BE_4K works uniformly */
-#define	SPI_NOR_NO_ERASE	0x02	/* No erase command needed */
-#define	SST_WRITE		0x04	/* use SST byte programming */
-#define	SPI_NOR_NO_FR		0x08	/* Can't do fastread */
-#define	SECT_4K_PMC		0x10	/* SPINOR_OP_BE_4K_PMC works uniformly */
-#define	SPI_NOR_DUAL_READ	0x20    /* Flash supports Dual Read */
-#define	SPI_NOR_QUAD_READ	0x40    /* Flash supports Quad Read */
-#define	USE_FSR			0x80	/* use flag status register */
+#define SECT_4K			BIT(0)	/* SPINOR_OP_BE_4K works uniformly */
+#define SPI_NOR_NO_ERASE	BIT(1)	/* No erase command needed */
+#define SST_WRITE		BIT(2)	/* use SST byte programming */
+#define SPI_NOR_NO_FR		BIT(3)	/* Can't do fastread */
+#define SECT_4K_PMC		BIT(4)	/* SPINOR_OP_BE_4K_PMC works uniformly */
+#define SPI_NOR_DUAL_READ	BIT(5)	/* Flash supports Dual Read */
+#define SPI_NOR_QUAD_READ	BIT(6)	/* Flash supports Quad Read */
+#define USE_FSR			BIT(7)	/* use flag status register */
+#define SPI_NOR_HAS_LOCK	BIT(8)	/* Flash supports lock/unlock via SR */
+#define SPI_NOR_HAS_TB		BIT(9)	/*
+					 * Flash SR has Top/Bottom (TB) protect
+					 * bit. Must be used with
+					 * SPI_NOR_HAS_LOCK.
+					 */
+#define	SPI_S3AN		BIT(10)	/*
+					 * Xilinx Spartan 3AN In-System Flash
+					 * (MFR cannot be used for probing
+					 * because it has the same value as
+					 * ATMEL flashes)
+					 */
+#define SPI_NOR_4B_OPCODES	BIT(11)	/*
+					 * Use dedicated 4byte address op codes
+					 * to support memory size above 128Mib.
+					 */
+#define NO_CHIP_ERASE		BIT(12) /* Chip does not support chip erase */
+#define SPI_NOR_SKIP_SFDP	BIT(13)	/* Skip parsing of SFDP tables */
+#define USE_CLSR		BIT(14)	/* use CLSR command */
+#define SPI_NOR_OCTAL_READ	BIT(15)	/* Flash supports Octal Read */
+};
+
+enum spi_nor_read_command_index {
+	SNOR_CMD_READ,
+	SNOR_CMD_READ_FAST,
+
+	/* Dual SPI */
+	SNOR_CMD_READ_1_1_2,
+	SNOR_CMD_READ_1_2_2,
+	SNOR_CMD_READ_2_2_2,
+
+	/* Quad SPI */
+	SNOR_CMD_READ_1_1_4,
+	SNOR_CMD_READ_1_4_4,
+	SNOR_CMD_READ_4_4_4,
+
+	SNOR_CMD_READ_MAX
+};
+
+struct spi_nor_read_command {
+	u8			num_mode_clocks;
+	u8			num_wait_states;
+	u8			opcode;
+	enum spi_nor_protocol	proto;
+};
+
+struct spi_nor_pp_command {
+	u8			opcode;
+	enum spi_nor_protocol	proto;
+};
+
+enum spi_nor_pp_command_index {
+	SNOR_CMD_PP,
+
+	/* Quad SPI */
+	SNOR_CMD_PP_1_1_4,
+	SNOR_CMD_PP_1_4_4,
+	SNOR_CMD_PP_4_4_4,
+
+	SNOR_CMD_PP_MAX
+};
+
+struct spi_nor_flash_parameter {
+	u64				size;
+	u32				page_size;
+
+	struct spi_nor_hwcaps		hwcaps;
+	struct spi_nor_read_command	reads[SNOR_CMD_READ_MAX];
+	struct spi_nor_pp_command	page_programs[SNOR_CMD_PP_MAX];
+
+	int (*quad_enable)(struct spi_nor *nor);
 };
 
 #define JEDEC_MFR(info)	((info)->id[0])
@@ -129,24 +200,6 @@ static int read_cr(struct spi_nor *nor)
 }
 
 /*
- * Dummy Cycle calculation for different type of read.
- * It can be used to support more commands with
- * different dummy cycle requirements.
- */
-static inline int spi_nor_read_dummy_cycles(struct spi_nor *nor)
-{
-	switch (nor->flash_read) {
-	case SPI_NOR_FAST:
-	case SPI_NOR_DUAL:
-	case SPI_NOR_QUAD:
-		return 8;
-	case SPI_NOR_NORMAL:
-		return 0;
-	}
-	return 0;
-}
-
-/*
  * Write status register 1 byte
  * Returns negative if error occurred.
  */
@@ -178,6 +231,81 @@ static inline struct spi_nor *mtd_to_spi_nor(struct mtd_info *mtd)
 	return mtd->priv;
 }
 
+static u8 spi_nor_convert_opcode(u8 opcode, const u8 table[][2], size_t size)
+{
+	size_t i;
+
+	for (i = 0; i < size; i++)
+		if (table[i][0] == opcode)
+			return table[i][1];
+
+	/* No conversion found, keep input op code. */
+	return opcode;
+}
+
+static u8 spi_nor_convert_3to4_read(u8 opcode)
+{
+	static const u8 spi_nor_3to4_read[][2] = {
+		{ SPINOR_OP_READ,	SPINOR_OP_READ_4B },
+		{ SPINOR_OP_READ_FAST,	SPINOR_OP_READ_FAST_4B },
+		{ SPINOR_OP_READ_1_1_2,	SPINOR_OP_READ_1_1_2_4B },
+		{ SPINOR_OP_READ_1_2_2,	SPINOR_OP_READ_1_2_2_4B },
+		{ SPINOR_OP_READ_1_1_4,	SPINOR_OP_READ_1_1_4_4B },
+		{ SPINOR_OP_READ_1_4_4,	SPINOR_OP_READ_1_4_4_4B },
+
+		{ SPINOR_OP_READ_1_1_1_DTR,	SPINOR_OP_READ_1_1_1_DTR_4B },
+		{ SPINOR_OP_READ_1_2_2_DTR,	SPINOR_OP_READ_1_2_2_DTR_4B },
+		{ SPINOR_OP_READ_1_4_4_DTR,	SPINOR_OP_READ_1_4_4_DTR_4B },
+	};
+
+	return spi_nor_convert_opcode(opcode, spi_nor_3to4_read,
+				      ARRAY_SIZE(spi_nor_3to4_read));
+}
+
+static u8 spi_nor_convert_3to4_program(u8 opcode)
+{
+	static const u8 spi_nor_3to4_program[][2] = {
+		{ SPINOR_OP_PP,		SPINOR_OP_PP_4B },
+		{ SPINOR_OP_PP_1_1_4,	SPINOR_OP_PP_1_1_4_4B },
+		{ SPINOR_OP_PP_1_4_4,	SPINOR_OP_PP_1_4_4_4B },
+	};
+
+	return spi_nor_convert_opcode(opcode, spi_nor_3to4_program,
+				      ARRAY_SIZE(spi_nor_3to4_program));
+}
+
+static u8 spi_nor_convert_3to4_erase(u8 opcode)
+{
+	static const u8 spi_nor_3to4_erase[][2] = {
+		{ SPINOR_OP_BE_4K,	SPINOR_OP_BE_4K_4B },
+		{ SPINOR_OP_BE_32K,	SPINOR_OP_BE_32K_4B },
+		{ SPINOR_OP_SE,		SPINOR_OP_SE_4B },
+	};
+
+	return spi_nor_convert_opcode(opcode, spi_nor_3to4_erase,
+				      ARRAY_SIZE(spi_nor_3to4_erase));
+}
+
+static void spi_nor_set_4byte_opcodes(struct spi_nor *nor)
+{
+	/* Do some manufacturer fixups first */
+	switch (JEDEC_MFR(nor->info)) {
+	case SNOR_MFR_SPANSION:
+		/* No small sector erase for 4-byte command set */
+		nor->erase_opcode = SPINOR_OP_SE;
+		nor->mtd->erasesize = nor->info->sector_size;
+		break;
+
+	default:
+		break;
+	}
+
+	nor->read_opcode = spi_nor_convert_3to4_read(nor->read_opcode);
+	nor->program_opcode = spi_nor_convert_3to4_program(nor->program_opcode);
+	nor->erase_opcode = spi_nor_convert_3to4_erase(nor->erase_opcode);
+}
+
+
 /* Enable/disable 4-byte addressing mode. */
 static inline int set_4byte(struct spi_nor *nor, struct flash_info *info,
 			    int enable)
@@ -819,28 +947,6 @@ write_err:
 	return ret;
 }
 
-static int macronix_quad_enable(struct spi_nor *nor)
-{
-	int ret, val;
-
-	val = read_sr(nor);
-	write_enable(nor);
-
-	nor->cmd_buf[0] = val | SR_QUAD_EN_MX;
-	nor->write_reg(nor, SPINOR_OP_WRSR, nor->cmd_buf, 1);
-
-	if (spi_nor_wait_till_ready(nor))
-		return 1;
-
-	ret = read_sr(nor);
-	if (!(ret > 0 && (ret & SR_QUAD_EN_MX))) {
-		dev_err(nor->dev, "Macronix Quad bit not set\n");
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
 /*
  * Write status Register and configuration register with 2 bytes
  * The first byte will be written to the status register, while the
@@ -879,42 +985,272 @@ static int spansion_quad_enable(struct spi_nor *nor)
 	return 0;
 }
 
-static int set_quad_mode(struct spi_nor *nor, struct flash_info *info)
+static int spi_nor_check(struct spi_nor *nor)
 {
-	int status;
+	if (!nor->dev || !nor->read || !nor->write ||
+		!nor->read_reg || !nor->write_reg || !nor->erase) {
+		pr_err("spi-nor: please fill all the necessary fields!\n");
+		return -EINVAL;
+	}
 
-	switch (JEDEC_MFR(info)) {
-	case CFI_MFR_MACRONIX:
-		status = macronix_quad_enable(nor);
-		if (status) {
-			dev_err(nor->dev, "Macronix quad-read not enabled\n");
-			return -EINVAL;
-		}
-		return status;
-	default:
-		status = spansion_quad_enable(nor);
-		if (status) {
-			dev_err(nor->dev, "Spansion quad-read not enabled\n");
-			return -EINVAL;
-		}
-		return status;
+	return 0;
+}
+
+static void
+spi_nor_set_read_settings(struct spi_nor_read_command *read,
+			  u8 num_mode_clocks,
+			  u8 num_wait_states,
+			  u8 opcode,
+			  enum spi_nor_protocol proto)
+{
+	read->num_mode_clocks = num_mode_clocks;
+	read->num_wait_states = num_wait_states;
+	read->opcode = opcode;
+	read->proto = proto;
+}
+
+static void
+spi_nor_set_pp_settings(struct spi_nor_pp_command *pp,
+			u8 opcode,
+			enum spi_nor_protocol proto)
+{
+	pp->opcode = opcode;
+	pp->proto = proto;
+}
+
+static int spi_nor_init_params(struct spi_nor *nor,
+			       const struct flash_info *info,
+			       struct spi_nor_flash_parameter *params)
+{
+	/* Set legacy flash parameters as default. */
+	memset(params, 0, sizeof(*params));
+
+	/* Set SPI NOR sizes. */
+	params->size = info->sector_size * info->n_sectors;
+	params->page_size = info->page_size;
+
+	/* (Fast) Read settings. */
+	params->hwcaps.mask |= SNOR_HWCAPS_READ;
+	spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ],
+				  0, 0, SPINOR_OP_READ,
+				  SNOR_PROTO_1_1_1);
+
+	if (!(info->flags & SPI_NOR_NO_FR)) {
+		params->hwcaps.mask |= SNOR_HWCAPS_READ_FAST;
+		spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_FAST],
+					  0, 8, SPINOR_OP_READ_FAST,
+					  SNOR_PROTO_1_1_1);
 	}
+
+	if (info->flags & SPI_NOR_DUAL_READ) {
+		params->hwcaps.mask |= SNOR_HWCAPS_READ_1_1_2;
+		spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_1_1_2],
+					  0, 8, SPINOR_OP_READ_1_1_2,
+					  SNOR_PROTO_1_1_2);
+	}
+
+	if (info->flags & SPI_NOR_QUAD_READ) {
+		params->hwcaps.mask |= SNOR_HWCAPS_READ_1_1_4;
+		spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_1_1_4],
+					  0, 8, SPINOR_OP_READ_1_1_4,
+					  SNOR_PROTO_1_1_4);
+	}
+
+	/* Page Program settings. */
+	params->hwcaps.mask |= SNOR_HWCAPS_PP;
+	spi_nor_set_pp_settings(&params->page_programs[SNOR_CMD_PP],
+				SPINOR_OP_PP, SNOR_PROTO_1_1_1);
+
+	/* Select the procedure to set the Quad Enable bit. */
+	if (params->hwcaps.mask & (SNOR_HWCAPS_READ_QUAD |
+				   SNOR_HWCAPS_PP_QUAD))
+		params->quad_enable = spansion_quad_enable;
+
+	return 0;
 }
 
-static int spi_nor_check(struct spi_nor *nor)
+static int spi_nor_hwcaps2cmd(u32 hwcaps, const int table[][2], size_t size)
 {
-	if (!nor->dev || !nor->read || !nor->write ||
-		!nor->read_reg || !nor->write_reg || !nor->erase) {
-		pr_err("spi-nor: please fill all the necessary fields!\n");
+	size_t i;
+
+	for (i = 0; i < size; i++)
+		if (table[i][0] == (int)hwcaps)
+			return table[i][1];
+
+	return -EINVAL;
+}
+
+static int spi_nor_hwcaps_read2cmd(u32 hwcaps)
+{
+	static const int hwcaps_read2cmd[][2] = {
+		{ SNOR_HWCAPS_READ,		SNOR_CMD_READ },
+		{ SNOR_HWCAPS_READ_FAST,	SNOR_CMD_READ_FAST },
+		{ SNOR_HWCAPS_READ_1_1_2,	SNOR_CMD_READ_1_1_2 },
+		{ SNOR_HWCAPS_READ_1_2_2,	SNOR_CMD_READ_1_2_2 },
+		{ SNOR_HWCAPS_READ_2_2_2,	SNOR_CMD_READ_2_2_2 },
+		{ SNOR_HWCAPS_READ_1_1_4,	SNOR_CMD_READ_1_1_4 },
+		{ SNOR_HWCAPS_READ_1_4_4,	SNOR_CMD_READ_1_4_4 },
+		{ SNOR_HWCAPS_READ_4_4_4,	SNOR_CMD_READ_4_4_4 },
+	};
+
+	return spi_nor_hwcaps2cmd(hwcaps, hwcaps_read2cmd,
+				  ARRAY_SIZE(hwcaps_read2cmd));
+}
+
+static int spi_nor_hwcaps_pp2cmd(u32 hwcaps)
+{
+	static const int hwcaps_pp2cmd[][2] = {
+		{ SNOR_HWCAPS_PP,		SNOR_CMD_PP },
+		{ SNOR_HWCAPS_PP_1_1_4,		SNOR_CMD_PP_1_1_4 },
+		{ SNOR_HWCAPS_PP_1_4_4,		SNOR_CMD_PP_1_4_4 },
+		{ SNOR_HWCAPS_PP_4_4_4,		SNOR_CMD_PP_4_4_4 },
+	};
+
+	return spi_nor_hwcaps2cmd(hwcaps, hwcaps_pp2cmd,
+				  ARRAY_SIZE(hwcaps_pp2cmd));
+}
+
+static int spi_nor_select_read(struct spi_nor *nor,
+			       const struct spi_nor_flash_parameter *params,
+			       u32 shared_hwcaps)
+{
+	int cmd, best_match = fls(shared_hwcaps & SNOR_HWCAPS_READ_MASK) - 1;
+	const struct spi_nor_read_command *read;
+
+	if (best_match < 0)
+		return -EINVAL;
+
+	cmd = spi_nor_hwcaps_read2cmd(BIT(best_match));
+	if (cmd < 0)
 		return -EINVAL;
+
+	read = &params->reads[cmd];
+	nor->read_opcode = read->opcode;
+	nor->read_proto = read->proto;
+
+	/*
+	 * In the spi-nor framework, we don't need to make the difference
+	 * between mode clock cycles and wait state clock cycles.
+	 * Indeed, the value of the mode clock cycles is used by a QSPI
+	 * flash memory to know whether it should enter or leave its 0-4-4
+	 * (Continuous Read / XIP) mode.
+	 * eXecution In Place is out of the scope of the mtd sub-system.
+	 * Hence we choose to merge both mode and wait state clock cycles
+	 * into the so called dummy clock cycles.
+	 */
+	nor->read_dummy = read->num_mode_clocks + read->num_wait_states;
+	return 0;
+}
+
+static int spi_nor_select_pp(struct spi_nor *nor,
+			     const struct spi_nor_flash_parameter *params,
+			     u32 shared_hwcaps)
+{
+	int cmd, best_match = fls(shared_hwcaps & SNOR_HWCAPS_PP_MASK) - 1;
+	const struct spi_nor_pp_command *pp;
+
+	if (best_match < 0)
+		return -EINVAL;
+
+	cmd = spi_nor_hwcaps_pp2cmd(BIT(best_match));
+	if (cmd < 0)
+		return -EINVAL;
+
+	pp = &params->page_programs[cmd];
+	nor->program_opcode = pp->opcode;
+	nor->write_proto = pp->proto;
+	return 0;
+}
+
+static int spi_nor_select_erase(struct spi_nor *nor,
+				const struct flash_info *info)
+{
+	struct mtd_info *mtd = nor->mtd;
+
+#ifdef CONFIG_MTD_SPI_NOR_USE_4K_SECTORS
+	/* prefer "small sector" erase if possible */
+	if (info->flags & SECT_4K) {
+		nor->erase_opcode = SPINOR_OP_BE_4K;
+		mtd->erasesize = 4096;
+	} else if (info->flags & SECT_4K_PMC) {
+		nor->erase_opcode = SPINOR_OP_BE_4K_PMC;
+		mtd->erasesize = 4096;
+	} else
+#endif
+	{
+		nor->erase_opcode = SPINOR_OP_SE;
+		mtd->erasesize = info->sector_size;
+	}
+	return 0;
+}
+
+static int spi_nor_setup(struct spi_nor *nor, const struct flash_info *info,
+			 const struct spi_nor_flash_parameter *params,
+			 const struct spi_nor_hwcaps *hwcaps)
+{
+	u32 ignored_mask, shared_mask;
+	bool enable_quad_io;
+	int err;
+
+	/*
+	 * Keep only the hardware capabilities supported by both the SPI
+	 * controller and the SPI flash memory.
+	 */
+	shared_mask = hwcaps->mask & params->hwcaps.mask;
+
+	/* SPI n-n-n protocols are not supported yet. */
+	ignored_mask = (SNOR_HWCAPS_READ_2_2_2 |
+			SNOR_HWCAPS_READ_4_4_4 |
+			SNOR_HWCAPS_PP_4_4_4);
+	if (shared_mask & ignored_mask) {
+		dev_dbg(nor->dev,
+			"SPI n-n-n protocols are not supported yet.\n");
+		shared_mask &= ~ignored_mask;
+	}
+
+	/* Select the (Fast) Read command. */
+	err = spi_nor_select_read(nor, params, shared_mask);
+	if (err) {
+		dev_err(nor->dev,
+			"can't select read settings supported by both the SPI controller and memory.\n");
+		return err;
+	}
+
+	/* Select the Page Program command. */
+	err = spi_nor_select_pp(nor, params, shared_mask);
+	if (err) {
+		dev_err(nor->dev,
+			"can't select write settings supported by both the SPI controller and memory.\n");
+		return err;
+	}
+
+	/* Select the Sector Erase command. */
+	err = spi_nor_select_erase(nor, info);
+	if (err) {
+		dev_err(nor->dev,
+			"can't select erase settings supported by both the SPI controller and memory.\n");
+		return err;
+	}
+
+	/* Enable Quad I/O if needed. */
+	enable_quad_io = (spi_nor_get_protocol_width(nor->read_proto) == 4 ||
+			  spi_nor_get_protocol_width(nor->write_proto) == 4);
+	if (enable_quad_io && params->quad_enable) {
+		err = params->quad_enable(nor);
+		if (err) {
+			dev_err(nor->dev, "quad mode not supported\n");
+			return err;
+		}
 	}
 
 	return 0;
 }
 
-int spi_nor_scan(struct spi_nor *nor, const char *name, enum read_mode mode,
+int spi_nor_scan(struct spi_nor *nor, const char *name,
+		 const struct spi_nor_hwcaps *hwcaps,
 		 bool use_large_blocks)
 {
+	struct spi_nor_flash_parameter params;
 	const struct spi_device_id	*id = NULL;
 	struct flash_info		*info;
 	struct device_d *dev = nor->dev;
@@ -927,6 +1263,11 @@ int spi_nor_scan(struct spi_nor *nor, const char *name, enum read_mode mode,
 	if (ret)
 		return ret;
 
+	/* Reset SPI protocol for all commands. */
+	nor->reg_proto = SNOR_PROTO_1_1_1;
+	nor->read_proto = SNOR_PROTO_1_1_1;
+	nor->write_proto = SNOR_PROTO_1_1_1;
+
 	/* Try to auto-detect if chip name wasn't specified */
 	if (!name)
 		id = spi_nor_read_id(nor);
@@ -962,6 +1303,8 @@ int spi_nor_scan(struct spi_nor *nor, const char *name, enum read_mode mode,
 		}
 	}
 
+	nor->info = info;
+
 	mutex_init(&nor->lock);
 
 	/*
@@ -976,12 +1319,17 @@ int spi_nor_scan(struct spi_nor *nor, const char *name, enum read_mode mode,
 		write_sr(nor, 0);
 	}
 
+	/* Parse the Serial Flash Discoverable Parameters table. */
+	ret = spi_nor_init_params(nor, info, &params);
+	if (ret)
+		return ret;
+
 	if (!mtd->name)
 		mtd->name = (char *) dev_name(dev);
 	mtd->type = MTD_NORFLASH;
 	mtd->writesize = 1;
 	mtd->flags = MTD_CAP_NORFLASH;
-	mtd->size = info->sector_size * info->n_sectors;
+	mtd->size = params.size;
 	mtd->erase = spi_nor_erase;
 	mtd->read = spi_nor_read;
 
@@ -1000,108 +1348,52 @@ int spi_nor_scan(struct spi_nor *nor, const char *name, enum read_mode mode,
 	if (info->flags & USE_FSR)
 		nor->flags |= SNOR_F_USE_FSR;
 
-#ifdef CONFIG_MTD_SPI_NOR_USE_4K_SECTORS
-	/* prefer "small sector" erase if possible */
-	if (info->flags & SECT_4K && !use_large_blocks) {
-		nor->erase_opcode = SPINOR_OP_BE_4K;
-		mtd->erasesize = 4096;
-	} else if (info->flags & SECT_4K_PMC && !use_large_blocks) {
-		nor->erase_opcode = SPINOR_OP_BE_4K_PMC;
-		mtd->erasesize = 4096;
-	} else
-#endif
-	{
-		nor->erase_opcode = SPINOR_OP_SE;
-		mtd->erasesize = info->sector_size;
-	}
-
 	if (info->flags & SPI_NOR_NO_ERASE)
 		mtd->flags |= MTD_NO_ERASE;
 
-	nor->page_size = info->page_size;
+	nor->page_size = params.page_size;
 	mtd->writebufsize = nor->page_size;
 
 	if (np) {
 		/* If we were instantiated by DT, use it */
 		if (of_property_read_bool(np, "m25p,fast-read"))
-			nor->flash_read = SPI_NOR_FAST;
+			params.hwcaps.mask |= SNOR_HWCAPS_READ_FAST;
 		else
-			nor->flash_read = SPI_NOR_NORMAL;
+			params.hwcaps.mask &= ~SNOR_HWCAPS_READ_FAST;
 	} else {
 		/* If we weren't instantiated by DT, default to fast-read */
-		nor->flash_read = SPI_NOR_FAST;
+		params.hwcaps.mask |= SNOR_HWCAPS_READ_FAST;
 	}
 
 	/* Some devices cannot do fast-read, no matter what DT tells us */
 	if (info->flags & SPI_NOR_NO_FR)
-		nor->flash_read = SPI_NOR_NORMAL;
-
-	/* Quad/Dual-read mode takes precedence over fast/normal */
-	if (mode == SPI_NOR_QUAD && info->flags & SPI_NOR_QUAD_READ) {
-		ret = set_quad_mode(nor, info);
-		if (ret) {
-			dev_err(dev, "quad mode not supported\n");
-			return ret;
-		}
-		nor->flash_read = SPI_NOR_QUAD;
-	} else if (mode == SPI_NOR_DUAL && info->flags & SPI_NOR_DUAL_READ) {
-		nor->flash_read = SPI_NOR_DUAL;
-	}
-
-	/* Default commands */
-	switch (nor->flash_read) {
-	case SPI_NOR_QUAD:
-		nor->read_opcode = SPINOR_OP_READ_1_1_4;
-		break;
-	case SPI_NOR_DUAL:
-		nor->read_opcode = SPINOR_OP_READ_1_1_2;
-		break;
-	case SPI_NOR_FAST:
-		nor->read_opcode = SPINOR_OP_READ_FAST;
-		break;
-	case SPI_NOR_NORMAL:
-		nor->read_opcode = SPINOR_OP_READ;
-		break;
-	default:
-		dev_err(dev, "No Read opcode defined\n");
-		return -EINVAL;
-	}
+		params.hwcaps.mask &= ~SNOR_HWCAPS_READ_FAST;
 
-	nor->program_opcode = SPINOR_OP_PP;
+	/*
+	 * Configure the SPI memory:
+	 * - select op codes for (Fast) Read, Page Program and Sector Erase.
+	 * - set the number of dummy cycles (mode cycles + wait states).
+	 * - set the SPI protocols for register and memory accesses.
+	 * - set the Quad Enable bit if needed (required by SPI x-y-4 protos).
+	 */
+	ret = spi_nor_setup(nor, info, &params, hwcaps);
+	if (ret)
+		return ret;
 
 	if (info->addr_width)
 		nor->addr_width = info->addr_width;
 	else if (mtd->size > 0x1000000) {
 		/* enable 4-byte addressing if the device exceeds 16MiB */
 		nor->addr_width = 4;
-		if (JEDEC_MFR(info) == CFI_MFR_AMD) {
-			/* Dedicated 4-byte command set */
-			switch (nor->flash_read) {
-			case SPI_NOR_QUAD:
-				nor->read_opcode = SPINOR_OP_READ4_1_1_4;
-				break;
-			case SPI_NOR_DUAL:
-				nor->read_opcode = SPINOR_OP_READ4_1_1_2;
-				break;
-			case SPI_NOR_FAST:
-				nor->read_opcode = SPINOR_OP_READ4_FAST;
-				break;
-			case SPI_NOR_NORMAL:
-				nor->read_opcode = SPINOR_OP_READ4;
-				break;
-			}
-			nor->program_opcode = SPINOR_OP_PP_4B;
-			/* No small sector erase for 4-byte command set */
-			nor->erase_opcode = SPINOR_OP_SE_4B;
-			mtd->erasesize = info->sector_size;
-		} else
+		if (JEDEC_MFR(info) == SNOR_MFR_SPANSION ||
+	 	    info->flags & SPI_NOR_4B_OPCODES)
+			spi_nor_set_4byte_opcodes(nor);
+		else
 			set_4byte(nor, info, 1);
 	} else {
 		nor->addr_width = 3;
 	}
 
-	nor->read_dummy = spi_nor_read_dummy_cycles(nor);
-
 	dev_info(dev, "%s (%lld Kbytes)\n", id->name,
 			(long long)mtd->size >> 10);
 
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index beac1e7ab0f3..eec5a890ebef 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -10,9 +10,26 @@
 #ifndef __LINUX_MTD_SPI_NOR_H
 #define __LINUX_MTD_SPI_NOR_H
 
+#include <linux/bitops.h>
 #include <linux/mutex.h>
 
 /*
+ * Manufacturer IDs
+ *
+ * The first byte returned from the flash after sending opcode SPINOR_OP_RDID.
+ * Sometimes these are the same as CFI IDs, but sometimes they aren't.
+ */
+#define SNOR_MFR_ATMEL		CFI_MFR_ATMEL
+#define SNOR_MFR_GIGADEVICE	0xc8
+#define SNOR_MFR_INTEL		CFI_MFR_INTEL
+#define SNOR_MFR_ST		CFI_MFR_ST	/* ST Micro */
+#define SNOR_MFR_MICRON		CFI_MFR_MICRON	/* Micron */
+#define SNOR_MFR_MACRONIX	CFI_MFR_MACRONIX
+#define SNOR_MFR_SPANSION	CFI_MFR_AMD
+#define SNOR_MFR_SST		CFI_MFR_SST
+#define SNOR_MFR_WINBOND	0xef /* Also used by some Spansion */
+
+/*
  * Note on opcode nomenclature: some opcodes have a format like
  * SPINOR_OP_FUNCTION{4,}_x_y_z. The numbers x, y, and z stand for the number
  * of I/O lines used for the opcode, address, and data (respectively). The
@@ -24,28 +41,53 @@
 #define SPINOR_OP_WREN		0x06	/* Write enable */
 #define SPINOR_OP_RDSR		0x05	/* Read status register */
 #define SPINOR_OP_WRSR		0x01	/* Write status register 1 byte */
+#define SPINOR_OP_RDSR2		0x3f	/* Read status register 2 */
+#define SPINOR_OP_WRSR2		0x3e	/* Write status register 2 */
 #define SPINOR_OP_READ		0x03	/* Read data bytes (low frequency) */
 #define SPINOR_OP_READ_FAST	0x0b	/* Read data bytes (high frequency) */
-#define SPINOR_OP_READ_1_1_2	0x3b	/* Read data bytes (Dual SPI) */
-#define SPINOR_OP_READ_1_1_4	0x6b	/* Read data bytes (Quad SPI) */
+#define SPINOR_OP_READ_1_1_2	0x3b	/* Read data bytes (Dual Output SPI) */
+#define SPINOR_OP_READ_1_2_2	0xbb	/* Read data bytes (Dual I/O SPI) */
+#define SPINOR_OP_READ_1_1_4	0x6b	/* Read data bytes (Quad Output SPI) */
+#define SPINOR_OP_READ_1_4_4	0xeb	/* Read data bytes (Quad I/O SPI) */
 #define SPINOR_OP_PP		0x02	/* Page program (up to 256 bytes) */
+#define SPINOR_OP_PP_1_1_4	0x32	/* Quad page program */
+#define SPINOR_OP_PP_1_4_4	0x38	/* Quad page program */
 #define SPINOR_OP_BE_4K		0x20	/* Erase 4KiB block */
 #define SPINOR_OP_BE_4K_PMC	0xd7	/* Erase 4KiB block on PMC chips */
 #define SPINOR_OP_BE_32K	0x52	/* Erase 32KiB block */
 #define SPINOR_OP_CHIP_ERASE	0xc7	/* Erase whole flash chip */
 #define SPINOR_OP_SE		0xd8	/* Sector erase (usually 64KiB) */
 #define SPINOR_OP_RDID		0x9f	/* Read JEDEC ID */
+#define SPINOR_OP_RDSFDP	0x5a	/* Read SFDP */
 #define SPINOR_OP_RDCR		0x35	/* Read configuration register */
 #define SPINOR_OP_RDFSR		0x70	/* Read flag status register */
+#define SPINOR_OP_CLFSR		0x50	/* Clear flag status register */
+#define SPINOR_OP_RDEAR		0xc8	/* Read Extended Address Register */
+#define SPINOR_OP_WREAR		0xc5	/* Write Extended Address Register */
 
 /* 4-byte address opcodes - used on Spansion and some Macronix flashes. */
-#define SPINOR_OP_READ4		0x13	/* Read data bytes (low frequency) */
-#define SPINOR_OP_READ4_FAST	0x0c	/* Read data bytes (high frequency) */
-#define SPINOR_OP_READ4_1_1_2	0x3c	/* Read data bytes (Dual SPI) */
-#define SPINOR_OP_READ4_1_1_4	0x6c	/* Read data bytes (Quad SPI) */
+#define SPINOR_OP_READ_4B	0x13	/* Read data bytes (low frequency) */
+#define SPINOR_OP_READ_FAST_4B	0x0c	/* Read data bytes (high frequency) */
+#define SPINOR_OP_READ_1_1_2_4B	0x3c	/* Read data bytes (Dual Output SPI) */
+#define SPINOR_OP_READ_1_2_2_4B	0xbc	/* Read data bytes (Dual I/O SPI) */
+#define SPINOR_OP_READ_1_1_4_4B	0x6c	/* Read data bytes (Quad Output SPI) */
+#define SPINOR_OP_READ_1_4_4_4B	0xec	/* Read data bytes (Quad I/O SPI) */
 #define SPINOR_OP_PP_4B		0x12	/* Page program (up to 256 bytes) */
+#define SPINOR_OP_PP_1_1_4_4B	0x34	/* Quad page program */
+#define SPINOR_OP_PP_1_4_4_4B	0x3e	/* Quad page program */
+#define SPINOR_OP_BE_4K_4B	0x21	/* Erase 4KiB block */
+#define SPINOR_OP_BE_32K_4B	0x5c	/* Erase 32KiB block */
 #define SPINOR_OP_SE_4B		0xdc	/* Sector erase (usually 64KiB) */
 
+/* Double Transfer Rate opcodes - defined in JEDEC JESD216B. */
+#define SPINOR_OP_READ_1_1_1_DTR	0x0d
+#define SPINOR_OP_READ_1_2_2_DTR	0xbd
+#define SPINOR_OP_READ_1_4_4_DTR	0xed
+
+#define SPINOR_OP_READ_1_1_1_DTR_4B	0x0e
+#define SPINOR_OP_READ_1_2_2_DTR_4B	0xbe
+#define SPINOR_OP_READ_1_4_4_DTR_4B	0xee
+
 /* Used for SST flashes only. */
 #define SPINOR_OP_BP		0x02	/* Byte program */
 #define SPINOR_OP_WRDI		0x04	/* Write disable */
@@ -59,29 +101,79 @@
 #define SPINOR_OP_BRWR		0x17	/* Bank register write */
 
 /* Status Register bits. */
-#define SR_WIP			1	/* Write in progress */
-#define SR_WEL			2	/* Write enable latch */
+#define SR_WIP			BIT(0)	/* Write in progress */
+#define SR_WEL			BIT(1)	/* Write enable latch */
 /* meaning of other SR_* bits may differ between vendors */
-#define SR_BP0			4	/* Block protect 0 */
-#define SR_BP1			8	/* Block protect 1 */
-#define SR_BP2			0x10	/* Block protect 2 */
-#define SR_SRWD			0x80	/* SR write protect */
+#define SR_BP0			BIT(2)	/* Block protect 0 */
+#define SR_BP1			BIT(3)	/* Block protect 1 */
+#define SR_BP2			BIT(4)	/* Block protect 2 */
+#define SR_SRWD			BIT(7)	/* SR write protect */
 
-#define SR_QUAD_EN_MX		0x40	/* Macronix Quad I/O */
+#define SR_QUAD_EN_MX		BIT(6)	/* Macronix Quad I/O */
 
 /* Flag Status Register bits */
-#define FSR_READY		0x80
+#define FSR_READY		BIT(7)
 
 /* Configuration Register bits. */
-#define CR_QUAD_EN_SPAN		0x2	/* Spansion Quad I/O */
+#define CR_QUAD_EN_SPAN		BIT(2)	/* Spansion Quad I/O */
+
+/* Supported SPI protocols */
+#define SNOR_PROTO_INST_MASK   GENMASK(23, 16)
+#define SNOR_PROTO_INST_SHIFT  16
+#define SNOR_PROTO_INST(_nbits)        \
+       ((((unsigned long)(_nbits)) << SNOR_PROTO_INST_SHIFT) & \
+        SNOR_PROTO_INST_MASK)
 
-enum read_mode {
-	SPI_NOR_NORMAL = 0,
-	SPI_NOR_FAST,
-	SPI_NOR_DUAL,
-	SPI_NOR_QUAD,
+#define SNOR_PROTO_ADDR_MASK   GENMASK(15, 8)
+#define SNOR_PROTO_ADDR_SHIFT  8
+#define SNOR_PROTO_ADDR(_nbits)        \
+       ((((unsigned long)(_nbits)) << SNOR_PROTO_ADDR_SHIFT) & \
+        SNOR_PROTO_ADDR_MASK)
+
+#define SNOR_PROTO_DATA_MASK   GENMASK(7, 0)
+#define SNOR_PROTO_DATA_SHIFT  0
+#define SNOR_PROTO_DATA(_nbits)        \
+       ((((unsigned long)(_nbits)) << SNOR_PROTO_DATA_SHIFT) & \
+        SNOR_PROTO_DATA_MASK)
+
+#define SNOR_PROTO_STR(_inst_nbits, _addr_nbits, _data_nbits)  \
+       (SNOR_PROTO_INST(_inst_nbits) |                         \
+        SNOR_PROTO_ADDR(_addr_nbits) |                         \
+        SNOR_PROTO_DATA(_data_nbits))
+
+enum spi_nor_protocol {
+       SNOR_PROTO_1_1_1 = SNOR_PROTO_STR(1, 1, 1),
+       SNOR_PROTO_1_1_2 = SNOR_PROTO_STR(1, 1, 2),
+       SNOR_PROTO_1_1_4 = SNOR_PROTO_STR(1, 1, 4),
+       SNOR_PROTO_1_2_2 = SNOR_PROTO_STR(1, 2, 2),
+       SNOR_PROTO_1_4_4 = SNOR_PROTO_STR(1, 4, 4),
+       SNOR_PROTO_2_2_2 = SNOR_PROTO_STR(2, 2, 2),
+       SNOR_PROTO_4_4_4 = SNOR_PROTO_STR(4, 4, 4),
 };
 
+static inline u8 spi_nor_get_protocol_inst_nbits(enum spi_nor_protocol proto)
+{
+       return ((unsigned long)(proto & SNOR_PROTO_INST_MASK)) >>
+               SNOR_PROTO_INST_SHIFT;
+}
+
+static inline u8 spi_nor_get_protocol_addr_nbits(enum spi_nor_protocol proto)
+{
+       return ((unsigned long)(proto & SNOR_PROTO_ADDR_MASK)) >>
+               SNOR_PROTO_ADDR_SHIFT;
+}
+
+static inline u8 spi_nor_get_protocol_data_nbits(enum spi_nor_protocol proto)
+{
+       return ((unsigned long)(proto & SNOR_PROTO_DATA_MASK)) >>
+               SNOR_PROTO_DATA_SHIFT;
+}
+
+static inline u8 spi_nor_get_protocol_width(enum spi_nor_protocol proto)
+{
+       return spi_nor_get_protocol_data_nbits(proto);
+}
+
 #define SPI_NOR_MAX_CMD_SIZE	8
 enum spi_nor_ops {
 	SPI_NOR_OPS_READ = 0,
@@ -106,17 +198,17 @@ enum spi_nor_option_flags {
  * @read_opcode:	the read opcode
  * @read_dummy:		the dummy needed by the read operation
  * @program_opcode:	the program opcode
- * @flash_read:		the mode of the read
  * @sst_write_second:	used by the SST write operation
  * @flags:		flag options for the current SPI-NOR (SNOR_F_*)
+ * @read_proto:		the SPI protocol for read operations
+ * @write_proto:	the SPI protocol for write operations
+ * @reg_proto		the SPI protocol for read_reg/write_reg/erase operations
  * @cfg:		used by the read_xfer/write_xfer
  * @cmd_buf:		used by the write_reg
  * @prepare:		[OPTIONAL] do some preparations for the
  *			read/write/erase/lock/unlock operations
  * @unprepare:		[OPTIONAL] do some post work after the
  *			read/write/erase/lock/unlock operations
- * @read_xfer:		[OPTIONAL] the read fundamental primitive
- * @write_xfer:		[OPTIONAL] the writefundamental primitive
  * @read_reg:		[DRIVER-SPECIFIC] read out the register
  * @write_reg:		[DRIVER-SPECIFIC] write data to the register
  * @read:		[DRIVER-SPECIFIC] read data from the SPI NOR
@@ -129,13 +221,16 @@ struct spi_nor {
 	struct mtd_info		*mtd;
 	struct mutex		lock;
 	struct device_d		*dev;
+	const struct flash_info	*info;
 	u32			page_size;
 	u8			addr_width;
 	u8			erase_opcode;
 	u8			read_opcode;
 	u8			read_dummy;
 	u8			program_opcode;
-	enum read_mode		flash_read;
+	enum spi_nor_protocol	read_proto;
+	enum spi_nor_protocol	write_proto;
+	enum spi_nor_protocol	reg_proto;
 	bool			sst_write_second;
 	u32			flags;
 	u8			cmd_buf[SPI_NOR_MAX_CMD_SIZE];
@@ -155,10 +250,56 @@ struct spi_nor {
 };
 
 /**
+ * struct spi_nor_hwcaps - Structure for describing the hardware capabilies
+ * supported by the SPI controller (bus master).
+ * @mask:              the bitmask listing all the supported hw capabilies
+ */
+struct spi_nor_hwcaps {
+       u32     mask;
+};
+
+/*
+ *(Fast) Read capabilities.
+ * MUST be ordered by priority: the higher bit position, the higher priority.
+ * As a matter of performances, it is relevant to use Quad SPI protocols first,
+ * then Dual SPI protocols before Fast Read and lastly (Slow) Read.
+ */
+#define SNOR_HWCAPS_READ_MASK          GENMASK(7, 0)
+#define SNOR_HWCAPS_READ               BIT(0)
+#define SNOR_HWCAPS_READ_FAST          BIT(1)
+
+#define SNOR_HWCAPS_READ_DUAL          GENMASK(4, 2)
+#define SNOR_HWCAPS_READ_1_1_2         BIT(2)
+#define SNOR_HWCAPS_READ_1_2_2         BIT(3)
+#define SNOR_HWCAPS_READ_2_2_2         BIT(4)
+
+#define SNOR_HWCAPS_READ_QUAD          GENMASK(7, 5)
+#define SNOR_HWCAPS_READ_1_1_4         BIT(5)
+#define SNOR_HWCAPS_READ_1_4_4         BIT(6)
+#define SNOR_HWCAPS_READ_4_4_4         BIT(7)
+
+/*
+ * Page Program capabilities.
+ * MUST be ordered by priority: the higher bit position, the higher priority.
+ * Like (Fast) Read capabilities, Quad SPI protocols are preferred to the
+ * legacy SPI 1-1-1 protocol.
+ * Note that Dual Page Programs are not supported because there is no existing
+ * JEDEC/SFDP standard to define them. Also at this moment no SPI flash memory
+ * implements such commands.
+ */
+#define SNOR_HWCAPS_PP_MASK    GENMASK(19, 16)
+#define SNOR_HWCAPS_PP         BIT(16)
+
+#define SNOR_HWCAPS_PP_QUAD    GENMASK(19, 17)
+#define SNOR_HWCAPS_PP_1_1_4   BIT(17)
+#define SNOR_HWCAPS_PP_1_4_4   BIT(18)
+#define SNOR_HWCAPS_PP_4_4_4   BIT(19)
+
+/**
  * spi_nor_scan() - scan the SPI NOR
  * @nor:	the spi_nor structure
  * @name:	the chip type name
- * @mode:	the read mode supported by the driver
+ * @hwcaps:	the hardware capabilities supported by the controller driver
  * @use_large_blocks: prefer large blocks even if 4k blocks are supported
  *
  * The drivers can use this fuction to scan the SPI NOR.
@@ -169,7 +310,8 @@ struct spi_nor {
  *
  * Return: 0 for success, others for failure.
  */
-int spi_nor_scan(struct spi_nor *nor, const char *name, enum read_mode mode,
+int spi_nor_scan(struct spi_nor *nor, const char *name,
+		 const struct spi_nor_hwcaps *hwcaps,
 		 bool use_large_blocks);
 
 #endif
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
