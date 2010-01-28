Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f221.google.com ([209.85.219.221])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NaSR6-0001jC-Pw
	for barebox@lists.infradead.org; Thu, 28 Jan 2010 11:21:25 +0000
Received: by ewy21 with SMTP id 21so648485ewy.2
	for <barebox@lists.infradead.org>; Thu, 28 Jan 2010 03:21:18 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 28 Jan 2010 12:21:18 +0100
Message-ID: <ba216b431001280321i1e649402v7ca0dd9c2661a2f8@mail.gmail.com>
From: Ivo Clarysse <ivo.clarysse@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] Fix nand_imx for i.MX21
To: barebox@lists.infradead.org

Recent changes to the nand_imx driver broke it for i.MX21 systems;
the i.MX21 NAND controller is more akin to the one in i.MX27/i.MX31,
than to the one in i.MX25/i.MX35.

Signed-off-by: Ivo Clarysse <ivo.clarysse@gmail.com>
---
diff --git a/arch/arm/mach-imx/include/mach/imx21-regs.h
b/arch/arm/mach-imx/include/mach/imx21-regs.h
index b8cb060..904177b 100644
--- a/arch/arm/mach-imx/include/mach/imx21-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx21-regs.h
@@ -107,6 +107,7 @@
 #define MPCTL1_BRMO		(1 << 6)
 #define MPCTL1_LF		(1 << 15)

+#define PCCR0_NFC_EN   (1 << 19)
 #define PCCR1_GPT1_EN	(1 << 25)

 #define CCSR_32K_SR		(1 << 15)
diff --git a/arch/arm/mach-imx/nand.c b/arch/arm/mach-imx/nand.c
index 7c57ec4..c228f96 100644
--- a/arch/arm/mach-imx/nand.c
+++ b/arch/arm/mach-imx/nand.c
@@ -59,7 +59,7 @@ void imx_nand_set_layout(int writesize, int datawidth)
 	writel(rcsr, IMX_CCM_BASE + CCM_RCSR);
 }

-#elif defined CONFIG_ARCH_IMX27
+#elif defined(CONFIG_ARCH_IMX21) || defined (CONFIG_ARCH_IMX27)

 #define FMCR_NF_FMS		(1 << 5)
 #define FMCR_NF_16BIT_SEL	(1 << 4)
diff --git a/drivers/nand/nand_imx.c b/drivers/nand/nand_imx.c
index 5811e27..70db8f9 100644
--- a/drivers/nand/nand_imx.c
+++ b/drivers/nand/nand_imx.c
@@ -32,8 +32,8 @@

 #define DVR_VER "2.0"

-#define nfc_is_v21()		(cpu_is_mx25() || cpu_is_mx35() || cpu_is_mx21())
-#define nfc_is_v1()		(cpu_is_mx31() || cpu_is_mx27())
+#define nfc_is_v21()		(cpu_is_mx25() || cpu_is_mx35())
+#define nfc_is_v1()		(cpu_is_mx31() || cpu_is_mx27() || cpu_is_mx21())

 /*
  * Addresses for NFC registers
@@ -249,6 +249,16 @@ static void __nand_boot_init send_cmd(struct
imx_nand_host *host, u16 cmd)
 	writew(cmd, host->regs + NFC_FLASH_CMD);
 	writew(NFC_CMD, host->regs + NFC_CONFIG2);

+	if (cpu_is_mx21() && (cmd == NAND_CMD_RESET)) {
+		/* Reset completion is indicated by NFC_CONFIG2 */
+		/* being set to 0 */
+		int i;
+		for (i = 0; i < 100000; i++) {
+			if (readw(host->regs + NFC_CONFIG2) == 0) {
+				break;
+			}
+		}
+	} else
 	/* Wait for operation to complete */
 	wait_op_done(host);
 }
@@ -826,9 +836,13 @@ static int __init imxnd_probe(struct device_d *dev)
 	struct nand_ecclayout *oob_smallpage, *oob_largepage;
 	u16 tmp;
 	int err = 0;
+
 #ifdef CONFIG_ARCH_IMX27
 	PCCR1 |= PCCR1_NFC_BAUDEN;
 #endif
+#ifdef CONFIG_ARCH_IMX21
+	PCCR0 |= PCCR0_NFC_EN;
+#endif
 	/* Allocate memory for MTD device structure and private data */
 	host = kzalloc(sizeof(struct imx_nand_host) + NAND_MAX_PAGESIZE +
 			NAND_MAX_OOBSIZE, GFP_KERNEL);
@@ -1015,7 +1029,13 @@ void __nand_boot_init imx_nand_load_image(void
*dest, int size)
 {
 	struct imx_nand_host host;
 	u32 tmp, page, block, blocksize, pagesize;
-
+#ifdef CONFIG_ARCH_IMX21
+	tmp = readl(IMX_SYSTEM_CTL_BASE + 0x14);
+	if (tmp & (1 << 5))
+		host.pagesize_2k = 1;
+	else
+		host.pagesize_2k = 0;
+#endif
 #ifdef CONFIG_ARCH_IMX27
 	tmp = readl(IMX_SYSTEM_CTL_BASE + 0x14);
 	if (tmp & (1 << 5))

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
