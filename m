Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9HT4-0006Ho-Aq
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 13:15:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Oct 2010 15:15:20 +0200
Message-Id: <1287753331-7696-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
References: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/13] i.MX nand: optimize nand boot code for size
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/Kconfig    |   16 ++++
 drivers/mtd/nand/nand_imx.c |  196 +++++++++++++++++++++++++++++--------------
 2 files changed, 150 insertions(+), 62 deletions(-)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 475499a..bc95195 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -18,6 +18,22 @@ config NAND_IMX_BOOT
 	prompt "Support Starting barebox from NAND"
 	depends on NAND_IMX || NAND_IMX_V2
 
+choice
+	depends on NAND_IMX_BOOT
+	default NAND_IMX_BOOT_512_2K
+	prompt "select nand pagesize you want to support booting from"
+
+config NAND_IMX_BOOT_512
+	bool "512 byte page size"
+
+config NAND_IMX_BOOT_2K
+	bool "2048 byte page size"
+
+config NAND_IMX_BOOT_512_2K
+	bool "512 byte and 2048 byte pagesize"
+
+endchoice
+
 config NAND_OMAP_GPMC
 	tristate "NAND Flash Support for GPMC based OMAP platforms"
 	depends on ((ARCH_OMAP2 || ARCH_OMAP3) && GPMC)
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 5454e32..63ba188 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -222,7 +222,7 @@ static void memcpy32(void *trg, const void *src, int size)
  * @param       max_retries     number of retry attempts (separated by 1 us)
  * @param       param           parameter for debug
  */
-static void __nand_boot_init wait_op_done(struct imx_nand_host *host)
+static void wait_op_done(struct imx_nand_host *host)
 {
 	u32 tmp;
 	int i;
@@ -247,7 +247,7 @@ static void __nand_boot_init wait_op_done(struct imx_nand_host *host)
  *
  * @param       cmd     command for NAND Flash
  */
-static void __nand_boot_init send_cmd(struct imx_nand_host *host, u16 cmd)
+static void send_cmd(struct imx_nand_host *host, u16 cmd)
 {
 	MTD_DEBUG(MTD_DEBUG_LEVEL3, "send_cmd(host, 0x%x)\n", cmd);
 
@@ -276,7 +276,7 @@ static void __nand_boot_init send_cmd(struct imx_nand_host *host, u16 cmd)
  * @param       addr    address to be written to NFC.
  * @param       islast  True if this is the last address cycle for command
  */
-static void __nand_boot_init noinline send_addr(struct imx_nand_host *host, u16 addr)
+static void send_addr(struct imx_nand_host *host, u16 addr)
 {
 	MTD_DEBUG(MTD_DEBUG_LEVEL3, "send_addr(host, 0x%x %d)\n", addr, islast);
 
@@ -294,7 +294,7 @@ static void __nand_boot_init noinline send_addr(struct imx_nand_host *host, u16
  * @param	buf_id	      Specify Internal RAM Buffer number (0-3)
  * @param       spare_only    set true if only the spare area is transferred
  */
-static void __nand_boot_init send_page(struct imx_nand_host *host,
+static void send_page(struct imx_nand_host *host,
 		unsigned int ops)
 {
 	int bufs, i;
@@ -1013,20 +1013,87 @@ static struct driver_d imx_nand_driver = {
 };
 
 #ifdef CONFIG_NAND_IMX_BOOT
+static void __nand_boot_init noinline imx_nandboot_wait_op_done(void *regs)
+{
+	u32 r;
+
+	while (1) {
+		r = readw(regs + NFC_CONFIG2);
+		if (r & NFC_INT)
+			break;
+	};
+
+	r &= ~NFC_INT;
+
+	writew(r, regs + NFC_CONFIG2);
+}
+
+/*
+ * This function issues the specified command to the NAND device and
+ * waits for completion.
+ *
+ * @param       cmd     command for NAND Flash
+ */
+static void __nand_boot_init imx_nandboot_send_cmd(void *regs, u16 cmd)
+{
+	writew(cmd, regs + NFC_FLASH_CMD);
+	writew(NFC_CMD, regs + NFC_CONFIG2);
+
+	imx_nandboot_wait_op_done(regs);
+}
+
+/*
+ * This function sends an address (or partial address) to the
+ * NAND device.  The address is used to select the source/destination for
+ * a NAND command.
+ *
+ * @param       addr    address to be written to NFC.
+ * @param       islast  True if this is the last address cycle for command
+ */
+static void __nand_boot_init noinline imx_nandboot_send_addr(void *regs, u16 addr)
+{
+	writew(addr, regs + NFC_FLASH_ADDR);
+	writew(NFC_ADDR, regs + NFC_CONFIG2);
+
+	/* Wait for operation to complete */
+	imx_nandboot_wait_op_done(regs);
+}
 
-static void __nand_boot_init nfc_addr(struct imx_nand_host *host, u32 offs)
+static void __nand_boot_init imx_nandboot_nfc_addr(void *regs, u32 offs, int pagesize_2k)
 {
-	if (host->pagesize_2k) {
-		send_addr(host, offs & 0xff);
-		send_addr(host, offs & 0xff);
-		send_addr(host, (offs >> 11) & 0xff);
-		send_addr(host, (offs >> 19) & 0xff);
-		send_addr(host, (offs >> 27) & 0xff);
+	imx_nandboot_send_addr(regs, offs & 0xff);
+
+	if (pagesize_2k) {
+		imx_nandboot_send_addr(regs, offs & 0xff);
+		imx_nandboot_send_addr(regs, (offs >> 11) & 0xff);
+		imx_nandboot_send_addr(regs, (offs >> 19) & 0xff);
+		imx_nandboot_send_addr(regs, (offs >> 27) & 0xff);
+		imx_nandboot_send_cmd(regs, NAND_CMD_READSTART);
 	} else {
-		send_addr(host, offs & 0xff);
-		send_addr(host, (offs >> 9) & 0xff);
-		send_addr(host, (offs >> 17) & 0xff);
-		send_addr(host, (offs >> 25) & 0xff);
+		imx_nandboot_send_addr(regs, (offs >> 9) & 0xff);
+		imx_nandboot_send_addr(regs, (offs >> 17) & 0xff);
+		imx_nandboot_send_addr(regs, (offs >> 25) & 0xff);
+	}
+}
+
+static void __nand_boot_init imx_nandboot_send_page(void *regs,
+		unsigned int ops, int pagesize_2k)
+{
+	int bufs, i;
+
+	if (nfc_is_v1() && pagesize_2k)
+		bufs = 4;
+	else
+		bufs = 1;
+
+	for (i = 0; i < bufs; i++) {
+		/* NANDFC buffer 0 is used for page read/write */
+		writew(i, regs + NFC_BUF_ADDR);
+
+		writew(ops, regs + NFC_CONFIG2);
+
+		/* Wait for operation to complete */
+		imx_nandboot_wait_op_done(regs);
 	}
 }
 
@@ -1040,38 +1107,49 @@ static void __nand_boot_init __memcpy32(void *trg, const void *src, int size)
 		*t++ = *s++;
 }
 
-void __nand_boot_init imx_nand_load_image(void *dest, int size)
+static int __maybe_unused is_pagesize_2k(void)
 {
-	struct imx_nand_host host;
-	u32 tmp, page, block, blocksize, pagesize;
 #ifdef CONFIG_ARCH_IMX21
-	tmp = readl(IMX_SYSTEM_CTL_BASE + 0x14);
-	if (tmp & (1 << 5))
-		host.pagesize_2k = 1;
+	if (readl(IMX_SYSTEM_CTL_BASE + 0x14) & (1 << 5))
+		return 1;
 	else
-		host.pagesize_2k = 0;
+		return 0;
 #endif
 #ifdef CONFIG_ARCH_IMX27
-	tmp = readl(IMX_SYSTEM_CTL_BASE + 0x14);
-	if (tmp & (1 << 5))
-		host.pagesize_2k = 1;
+	if (readl(IMX_SYSTEM_CTL_BASE + 0x14) & (1 << 5))
+		return 1;
 	else
-		host.pagesize_2k = 0;
+		return 0;
 #endif
 #ifdef CONFIG_ARCH_IMX31
-	tmp = readl(IMX_CCM_BASE + CCM_RCSR);
-	if (tmp & RCSR_NFMS)
-		host.pagesize_2k = 1;
+	if (readl(IMX_CCM_BASE + CCM_RCSR) & RCSR_NFMS)
+		return 1;
 	else
-		host.pagesize_2k = 0;
+		return 0;
 #endif
 #if defined(CONFIG_ARCH_IMX35) || defined(CONFIG_ARCH_IMX25)
 	if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 8))
-		host.pagesize_2k = 1;
+		return 1;
 	else
-		host.pagesize_2k = 0;
+		return 0;
+#endif
+}
+
+void __nand_boot_init imx_nand_load_image(void *dest, int size)
+{
+	u32 tmp, page, block, blocksize, pagesize;
+	int pagesize_2k = 1;
+	void *regs, *base, *spare0;
+
+#if defined(CONFIG_NAND_IMX_BOOT_512)
+	pagesize_2k = 0;
+#elif defined(CONFIG_NAND_IMX_BOOT_2K)
+	pagesize_2k = 1;
+#else
+	pagesize_2k = is_pagesize_2k();
 #endif
-	if (host.pagesize_2k) {
+
+	if (pagesize_2k) {
 		pagesize = 2048;
 		blocksize = 128 * 1024;
 	} else {
@@ -1079,45 +1157,43 @@ void __nand_boot_init imx_nand_load_image(void *dest, int size)
 		blocksize = 16 * 1024;
 	}
 
-	host.base = (void __iomem *)IMX_NFC_BASE;
+	base = (void __iomem *)IMX_NFC_BASE;
 	if (nfc_is_v21()) {
-		host.regs = host.base + 0x1000;
-		host.spare0 = host.base + 0x1000;
-		host.spare_len = 64;
+		regs = base + 0x1000;
+		spare0 = base + 0x1000;
 	} else if (nfc_is_v1()) {
-		host.regs = host.base;
-		host.spare0 = host.base + 0x800;
-		host.spare_len = 16;
+		regs = base;
+		spare0 = base + 0x800;
 	}
 
-	send_cmd(&host, NAND_CMD_RESET);
+	imx_nandboot_send_cmd(regs, NAND_CMD_RESET);
 
 	/* preset operation */
 	/* Unlock the internal RAM Buffer */
-	writew(0x2, host.regs + NFC_CONFIG);
+	writew(0x2, regs + NFC_CONFIG);
 
 	/* Unlock Block Command for given address range */
-	writew(0x4, host.regs + NFC_WRPROT);
+	writew(0x4, regs + NFC_WRPROT);
 
-	tmp = readw(host.regs + NFC_CONFIG1);
+	tmp = readw(regs + NFC_CONFIG1);
 	tmp |= NFC_ECC_EN;
 	if (nfc_is_v21())
 		/* currently no support for 218 byte OOB with stronger ECC */
 		tmp |= NFC_ECC_MODE;
 	tmp &= ~(NFC_SP_EN | NFC_INT_MSK);
-	writew(tmp, host.regs + NFC_CONFIG1);
+	writew(tmp, regs + NFC_CONFIG1);
 
 	if (nfc_is_v21()) {
-		if (host.pagesize_2k) {
-			tmp = readw(host.regs + NFC_SPAS);
+		if (pagesize_2k) {
+			tmp = readw(regs + NFC_SPAS);
 			tmp &= 0xff00;
 			tmp |= NFC_SPAS_64;
-			writew(tmp, host.regs + NFC_SPAS);
+			writew(tmp, regs + NFC_SPAS);
 		} else {
-			tmp = readw(host.regs + NFC_SPAS);
+			tmp = readw(regs + NFC_SPAS);
 			tmp &= 0xff00;
 			tmp |= NFC_SPAS_16;
-			writew(tmp, host.regs + NFC_SPAS);
+			writew(tmp, regs + NFC_SPAS);
 		}
 	}
 
@@ -1132,25 +1208,21 @@ void __nand_boot_init imx_nand_load_image(void *dest, int size)
 					block * blocksize +
 					page * pagesize);
 
-			send_cmd(&host, NAND_CMD_READ0);
-			nfc_addr(&host, block * blocksize +
-					page * pagesize);
-			if (host.pagesize_2k)
-				send_cmd(&host, NAND_CMD_READSTART);
-			send_page(&host, NFC_OUTPUT);
+			imx_nandboot_send_cmd(regs, NAND_CMD_READ0);
+			imx_nandboot_nfc_addr(regs, block * blocksize +
+					page * pagesize, pagesize_2k);
+			imx_nandboot_send_page(regs, NFC_OUTPUT, pagesize_2k);
 			page++;
 
-			if (host.pagesize_2k) {
-				if ((readw(host.spare0) & 0xff)
-						!= 0xff)
+			if (pagesize_2k) {
+				if ((readw(spare0) & 0xff) != 0xff)
 					continue;
 			} else {
-				if ((readw(host.spare0 + 4) & 0xff00)
-						!= 0xff00)
+				if ((readw(spare0 + 4) & 0xff00) != 0xff00)
 					continue;
 			}
 
-			__memcpy32(dest, host.base, pagesize);
+			__memcpy32(dest, base, pagesize);
 			dest += pagesize;
 			size -= pagesize;
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
