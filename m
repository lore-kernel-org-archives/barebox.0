Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PGC3t-0005Pq-3i
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 14:54:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Nov 2010 15:53:57 +0100
Message-Id: <1289400839-5937-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
References: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/13] imx nand: Add v3 (i.MX51) support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx51-regs.h |    2 +
 arch/arm/mach-imx/nand.c                    |    9 ++
 drivers/mtd/nand/Kconfig                    |    4 +-
 drivers/mtd/nand/nand_imx.c                 |  208 ++++++++++++++++++++++++++-
 4 files changed, 220 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx51-regs.h b/arch/arm/mach-imx/include/mach/imx51-regs.h
index 1d241c8..2e6cacb 100644
--- a/arch/arm/mach-imx/include/mach/imx51-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx51-regs.h
@@ -104,6 +104,8 @@
 #define MX51_HSI2C_DMA_BASE_ADDR	(MX51_SPBA0_BASE_ADDR + 0x00038000)
 #define MX51_SPBA_CTRL_BASE_ADDR	(MX51_SPBA0_BASE_ADDR + 0x0003C000)
 
+#define MX51_NFC_AXI_BASE_ADDR	0xcfff0000
+
 /*
  * Memory regions and CS
  */
diff --git a/arch/arm/mach-imx/nand.c b/arch/arm/mach-imx/nand.c
index c228f96..c52b8b0 100644
--- a/arch/arm/mach-imx/nand.c
+++ b/arch/arm/mach-imx/nand.c
@@ -95,6 +95,15 @@ void imx_nand_set_layout(int writesize, int datawidth)
 	FMCR = fmcr;
 }
 
+#elif defined CONFIG_ARCH_IMX51
+
+void imx_nand_set_layout(int writesize, int datawidth)
+{
+	/* Just silence the compiler warning below. On i.MX51 we don't
+	 * have external boot.
+	 */
+}
+
 #else
 #warning using empty imx_nand_set_layout(). NAND flash will not work properly if not booting from it
 
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index bc95195..034bb6f 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -11,12 +11,12 @@ if NAND
 config NAND_IMX
 	bool
 	prompt "i.MX NAND driver"
-	depends on ARCH_IMX21 || ARCH_IMX27 || ARCH_IMX31 || ARCH_IMX35 || ARCH_IMX25
+	depends on ARCH_IMX21 || ARCH_IMX27 || ARCH_IMX31 || ARCH_IMX35 || ARCH_IMX25 || ARCH_IMX51
 
 config NAND_IMX_BOOT
 	bool
 	prompt "Support Starting barebox from NAND"
-	depends on NAND_IMX || NAND_IMX_V2
+	depends on NAND_IMX && !ARCH_IMX51
 
 choice
 	depends on NAND_IMX_BOOT
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 9e2ba32..9a15ab2 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -32,6 +32,8 @@
 
 #define nfc_is_v21()		(cpu_is_mx25() || cpu_is_mx35())
 #define nfc_is_v1()		(cpu_is_mx31() || cpu_is_mx27() || cpu_is_mx21())
+#define nfc_is_v3_2()		cpu_is_mx51()
+#define nfc_is_v3()		nfc_is_v3_2()
 
 #define NFC_V1_ECC_STATUS_RESULT	0x0c
 #define NFC_V1_RSLTMAIN_AREA		0x0e
@@ -82,6 +84,54 @@
 #define NFC_ID				(1 << 4)
 #define NFC_STATUS			(1 << 5)
 
+#define NFC_V3_FLASH_CMD		(host->regs_axi + 0x00)
+#define NFC_V3_FLASH_ADDR0		(host->regs_axi + 0x04)
+
+#define NFC_V3_CONFIG1			(host->regs_axi + 0x34)
+#define NFC_V3_CONFIG1_SP_EN		(1 << 0)
+#define NFC_V3_CONFIG1_RBA(x)		(((x) & 0x7 ) << 4)
+
+#define NFC_V3_ECC_STATUS_RESULT	(host->regs_axi + 0x38)
+
+#define NFC_V3_LAUNCH			(host->regs_axi + 0x40)
+
+#define NFC_V3_WRPROT			(host->regs_ip + 0x0)
+#define NFC_V3_WRPROT_LOCK_TIGHT	(1 << 0)
+#define NFC_V3_WRPROT_LOCK		(1 << 1)
+#define NFC_V3_WRPROT_UNLOCK		(1 << 2)
+#define NFC_V3_WRPROT_BLS_UNLOCK	(2 << 6)
+
+#define NFC_V3_WRPROT_UNLOCK_BLK_ADD0   (host->regs_ip + 0x04)
+
+#define NFC_V3_CONFIG2			(host->regs_ip + 0x24)
+#define NFC_V3_CONFIG2_PS_512			(0 << 0)
+#define NFC_V3_CONFIG2_PS_2048			(1 << 0)
+#define NFC_V3_CONFIG2_PS_4096			(2 << 0)
+#define NFC_V3_CONFIG2_ONE_CYCLE		(1 << 2)
+#define NFC_V3_CONFIG2_ECC_EN			(1 << 3)
+#define NFC_V3_CONFIG2_2CMD_PHASES		(1 << 4)
+#define NFC_V3_CONFIG2_NUM_ADDR_PHASE0		(1 << 5)
+#define NFC_V3_CONFIG2_ECC_MODE_8		(1 << 6)
+#define NFC_V3_CONFIG2_PPB(x)			(((x) & 0x3) << 7)
+#define NFC_V3_CONFIG2_NUM_ADDR_PHASE1(x)	(((x) & 0x3) << 12)
+#define NFC_V3_CONFIG2_INT_MSK			(1 << 15)
+#define NFC_V3_CONFIG2_ST_CMD(x)		(((x) & 0xff) << 24)
+#define NFC_V3_CONFIG2_SPAS(x)			(((x) & 0xff) << 16)
+
+#define NFC_V3_CONFIG3				(host->regs_ip + 0x28)
+#define NFC_V3_CONFIG3_ADD_OP(x)		(((x) & 0x3) << 0)
+#define NFC_V3_CONFIG3_FW8			(1 << 3)
+#define NFC_V3_CONFIG3_SBB(x)			(((x) & 0x7) << 8)
+#define NFC_V3_CONFIG3_NUM_OF_DEVICES(x)	(((x) & 0x7) << 12)
+#define NFC_V3_CONFIG3_RBB_MODE			(1 << 15)
+#define NFC_V3_CONFIG3_NO_SDMA			(1 << 20)
+
+#define NFC_V3_IPC			(host->regs_ip + 0x2C)
+#define NFC_V3_IPC_CREQ			(1 << 0)
+#define NFC_V3_IPC_INT			(1 << 31)
+
+#define NFC_V3_DELAY_LINE		(host->regs_ip + 0x34)
+
 #ifdef CONFIG_NAND_IMX_BOOT
 #define __nand_boot_init __bare_init
 #else
@@ -99,6 +149,8 @@ struct imx_nand_host {
 
 	void __iomem		*base;
 	void __iomem		*regs;
+	void __iomem		*regs_axi;
+	void __iomem		*regs_ip;
 	int			status_request;
 	struct clk		*clk;
 
@@ -176,6 +228,20 @@ static void memcpy32(void *trg, const void *src, int size)
 		*t++ = *s++;
 }
 
+static int check_int_v3(struct imx_nand_host *host)
+{
+	uint32_t tmp;
+
+	tmp = readl(NFC_V3_IPC);
+	if (!(tmp & NFC_V3_IPC_INT))
+		return 0;
+
+	tmp &= ~NFC_V3_IPC_INT;
+	writel(tmp, NFC_V3_IPC);
+
+	return 1;
+}
+
 static int check_int_v1_v2(struct imx_nand_host *host)
 {
 	uint32_t tmp;
@@ -209,6 +275,18 @@ static void wait_op_done(struct imx_nand_host *host)
  *
  * @param       cmd     command for NAND Flash
  */
+static void send_cmd_v3(struct imx_nand_host *host, uint16_t cmd)
+{
+	/* fill command */
+	writel(cmd, NFC_V3_FLASH_CMD);
+
+	/* send out command */
+	writel(NFC_CMD, NFC_V3_LAUNCH);
+
+	/* Wait for operation to complete */
+	wait_op_done(host);
+}
+
 static void send_cmd_v1_v2(struct imx_nand_host *host, u16 cmd)
 {
 	MTD_DEBUG(MTD_DEBUG_LEVEL3, "send_cmd(host, 0x%x)\n", cmd);
@@ -238,6 +316,17 @@ static void send_cmd_v1_v2(struct imx_nand_host *host, u16 cmd)
  * @param       addr    address to be written to NFC.
  * @param       islast  True if this is the last address cycle for command
  */
+static void send_addr_v3(struct imx_nand_host *host, uint16_t addr)
+{
+	/* fill address */
+	writel(addr, NFC_V3_FLASH_ADDR0);
+
+	/* send out address */
+	writel(NFC_ADDR, NFC_V3_LAUNCH);
+
+	wait_op_done(host);
+}
+
 static void send_addr_v1_v2(struct imx_nand_host *host, u16 addr)
 {
 	MTD_DEBUG(MTD_DEBUG_LEVEL3, "send_addr(host, 0x%x %d)\n", addr, islast);
@@ -256,6 +345,20 @@ static void send_addr_v1_v2(struct imx_nand_host *host, u16 addr)
  * @param	buf_id	      Specify Internal RAM Buffer number (0-3)
  * @param       spare_only    set true if only the spare area is transferred
  */
+static void send_page_v3(struct imx_nand_host *host, unsigned int ops)
+{
+	uint32_t tmp;
+
+	tmp = readl(NFC_V3_CONFIG1);
+	tmp &= ~(7 << 4);
+	writel(tmp, NFC_V3_CONFIG1);
+
+	/* transfer data from NFC ram to nand */
+	writel(ops, NFC_V3_LAUNCH);
+
+	wait_op_done(host);
+}
+
 static void send_page_v1_v2(struct imx_nand_host *host,
 		unsigned int ops)
 {
@@ -281,6 +384,16 @@ static void send_page_v1_v2(struct imx_nand_host *host,
  * This function requests the NANDFC to perform a read of the
  * NAND device ID.
  */
+static void send_read_id_v3(struct imx_nand_host *host)
+{
+	/* Read ID into main buffer */
+	writel(NFC_ID, NFC_V3_LAUNCH);
+
+	wait_op_done(host);
+
+	memcpy(host->data_buf, host->main_area0, 16);
+}
+
 static void send_read_id_v1_v2(struct imx_nand_host *host)
 {
 	struct nand_chip *this = &host->nand;
@@ -315,6 +428,14 @@ static void send_read_id_v1_v2(struct imx_nand_host *host)
  *
  * @return  device status
  */
+static uint16_t get_dev_status_v3(struct imx_nand_host *host)
+{
+	writew(NFC_STATUS, NFC_V3_LAUNCH);
+	wait_op_done(host);
+
+	return readl(NFC_V3_CONFIG1) >> 16;
+}
+
 static u16 get_dev_status_v1_v2(struct imx_nand_host *host)
 {
 	void *main_buf = host->main_area0;
@@ -405,7 +526,10 @@ static int imx_nand_correct_data_v2_v3(struct mtd_info *mtd, u_char *dat,
 
 	no_subpages = mtd->writesize >> 9;
 
-	ecc_stat = readl(host->regs + NFC_V2_ECC_STATUS_RESULT1);
+	if (nfc_is_v21())
+		ecc_stat = readl(host->regs + NFC_V2_ECC_STATUS_RESULT1);
+	else
+		ecc_stat = readl(NFC_V3_ECC_STATUS_RESULT);
 
 	do {
 		err = ecc_stat & ecc_bit_mask;
@@ -704,6 +828,72 @@ static void preset_v1_v2(struct mtd_info *mtd)
 	writew(0x4, host->regs + NFC_V1_V2_WRPROT);
 }
 
+static void preset_v3(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd->priv;
+	struct imx_nand_host *host = chip->priv;
+	uint32_t config2, config3;
+	int i, addr_phases;
+
+	writel(NFC_V3_CONFIG1_RBA(0), NFC_V3_CONFIG1);
+	writel(NFC_V3_IPC_CREQ, NFC_V3_IPC);
+
+	/* Unlock the internal RAM Buffer */
+	writel(NFC_V3_WRPROT_BLS_UNLOCK | NFC_V3_WRPROT_UNLOCK,
+			NFC_V3_WRPROT);
+
+	/* Blocks to be unlocked */
+	for (i = 0; i < NAND_MAX_CHIPS; i++)
+		writel(0x0 | (0xffff << 16),
+				NFC_V3_WRPROT_UNLOCK_BLK_ADD0 + (i << 2));
+
+	writel(0, NFC_V3_IPC);
+
+	config2 = NFC_V3_CONFIG2_ONE_CYCLE |
+		NFC_V3_CONFIG2_2CMD_PHASES |
+		NFC_V3_CONFIG2_SPAS(mtd->oobsize >> 1) |
+		NFC_V3_CONFIG2_ST_CMD(0x70) |
+		NFC_V3_CONFIG2_NUM_ADDR_PHASE0;
+
+	if (chip->ecc.mode == NAND_ECC_HW)
+		config2 |= NFC_V3_CONFIG2_ECC_EN;
+
+	addr_phases = fls(chip->pagemask) >> 3;
+
+	if (mtd->writesize == 2048) {
+		config2 |= NFC_V3_CONFIG2_PS_2048;
+		config2 |= NFC_V3_CONFIG2_NUM_ADDR_PHASE1(addr_phases);
+	} else if (mtd->writesize == 4096) {
+		config2 |= NFC_V3_CONFIG2_PS_4096;
+		config2 |= NFC_V3_CONFIG2_NUM_ADDR_PHASE1(addr_phases);
+	} else {
+		config2 |= NFC_V3_CONFIG2_PS_512;
+		config2 |= NFC_V3_CONFIG2_NUM_ADDR_PHASE1(addr_phases - 1);
+	}
+
+	if (mtd->writesize) {
+		config2 |= NFC_V3_CONFIG2_PPB(ffs(mtd->erasesize / mtd->writesize) - 6);
+		host->eccsize = get_eccsize(mtd);
+		if (host->eccsize == 8)
+			config2 |= NFC_V3_CONFIG2_ECC_MODE_8;
+	}
+
+	writel(config2, NFC_V3_CONFIG2);
+
+	config3 = NFC_V3_CONFIG3_NUM_OF_DEVICES(0) |
+			NFC_V3_CONFIG3_NO_SDMA |
+			NFC_V3_CONFIG3_RBB_MODE |
+			NFC_V3_CONFIG3_SBB(6) | /* Reset default */
+			NFC_V3_CONFIG3_ADD_OP(0);
+
+	if (!(chip->options & NAND_BUSWIDTH_16))
+		config3 |= NFC_V3_CONFIG3_FW8;
+
+	writel(config3, NFC_V3_CONFIG3);
+
+	writel(0, NFC_V3_DELAY_LINE);
+}
+
 /*
  * This function is used by the upper layer to write command to NAND Flash for
  * different operations to be carried out on NAND Flash
@@ -930,6 +1120,22 @@ static int __init imxnd_probe(struct device_d *dev)
 		host->spare_len = 16;
 		oob_smallpage = &nandv1_hw_eccoob_smallpage;
 		oob_largepage = &nandv1_hw_eccoob_largepage;
+	} else if (nfc_is_v3_2()) {
+#ifdef CONFIG_ARCH_IMX51
+		host->regs_ip = (void *)MX51_NFC_BASE_ADDR;
+#endif
+		host->regs_axi = host->base + 0x1e00;
+		host->spare0 = host->base + 0x1000;
+		host->spare_len = 64;
+		host->preset = preset_v3;
+		host->send_cmd = send_cmd_v3;
+		host->send_addr = send_addr_v3;
+		host->send_page = send_page_v3;
+		host->send_read_id = send_read_id_v3;
+		host->get_dev_status = get_dev_status_v3;
+		host->check_int = check_int_v3;
+		oob_smallpage = &nandv2_hw_eccoob_smallpage;
+		oob_largepage = &nandv2_hw_eccoob_largepage;
 	}
 
 	host->dev = dev;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
