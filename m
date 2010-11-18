Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PJ4WH-0005aU-Ka
	for barebox@lists.infradead.org; Thu, 18 Nov 2010 13:27:23 +0000
Received: by mail-fx0-f49.google.com with SMTP id 1so1559330fxm.36
	for <barebox@lists.infradead.org>; Thu, 18 Nov 2010 05:27:21 -0800 (PST)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu, 18 Nov 2010 14:29:30 +0100
Message-Id: <1290086971-5467-5-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1290086971-5467-1-git-send-email-marek.belisko@open-nandra.com>
References: <1290086971-5467-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 4/5] nand_s3c2410: Fix sparse warnings.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Patch fix following sparse warnings:
drivers/mtd/nand/nand_s3c2410.c:125:9:
warning: incorrect type in argument 1 (different base types)
	expected void const volatile [noderef] <asn:2>*<noident>
	got unsigned long

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 drivers/mtd/nand/nand_s3c2410.c |   26 +++++++++++++-------------
 include/linux/mtd/nand.h        |    1 -
 2 files changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index b989583..fa4acf4 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -96,7 +96,7 @@ struct s3c24x0_nand_host {
 	struct mtd_partition	*parts;
 	struct device_d		*dev;
 
-	unsigned long		base;
+	void __iomem		*base;
 };
 
 /**
@@ -120,7 +120,7 @@ static struct nand_ecclayout nand_hw_eccoob = {
  * @param[in] host Base address of the NAND controller
  * @param[in] cmd Command for NAND flash
  */
-static void __nand_boot_init send_cmd(unsigned long host, uint8_t cmd)
+static void __nand_boot_init send_cmd(void __iomem *host, uint8_t cmd)
 {
 	writeb(cmd, host + NFCMD);
 }
@@ -130,7 +130,7 @@ static void __nand_boot_init send_cmd(unsigned long host, uint8_t cmd)
  * @param[in] host Base address of the NAND controller
  * @param[in] addr Address for the NAND flash
  */
-static void __nand_boot_init send_addr(unsigned long host, uint8_t addr)
+static void __nand_boot_init send_addr(void __iomem *host, uint8_t addr)
 {
 	writeb(addr, host + NFADDR);
 }
@@ -139,7 +139,7 @@ static void __nand_boot_init send_addr(unsigned long host, uint8_t addr)
  * Enable the NAND flash access
  * @param[in] host Base address of the NAND controller
  */
-static void __nand_boot_init enable_cs(unsigned long host)
+static void __nand_boot_init enable_cs(void __iomem *host)
 {
 #ifdef CONFIG_CPU_S3C2410
 	writew(readw(host + NFCONF) & ~NFCONF_nFCE, host + NFCONF);
@@ -153,7 +153,7 @@ static void __nand_boot_init enable_cs(unsigned long host)
  * Disable the NAND flash access
  * @param[in] host Base address of the NAND controller
  */
-static void __nand_boot_init disable_cs(unsigned long host)
+static void __nand_boot_init disable_cs(void __iomem *host)
 {
 #ifdef CONFIG_CPU_S3C2410
 	writew(readw(host + NFCONF) | NFCONF_nFCE, host + NFCONF);
@@ -168,7 +168,7 @@ static void __nand_boot_init disable_cs(unsigned long host)
  * @param[in] host Base address of the NAND controller
  * @param[in] timing Timing to access the NAND memory
  */
-static void __nand_boot_init enable_nand_controller(unsigned long host, uint32_t timing)
+static void __nand_boot_init enable_nand_controller(void __iomem *host, uint32_t timing)
 {
 #ifdef CONFIG_CPU_S3C2410
 	writew(timing + NFCONF_EN + NFCONF_nFCE, host + NFCONF);
@@ -183,7 +183,7 @@ static void __nand_boot_init enable_nand_controller(unsigned long host, uint32_t
  * Diable the NAND flash controller
  * @param[in] host Base address of the NAND controller
  */
-static void __nand_boot_init disable_nand_controller(unsigned long host)
+static void __nand_boot_init disable_nand_controller(void __iomem *host)
 {
 #ifdef CONFIG_CPU_S3C2410
 	writew(NFCONF_nFCE, host + NFCONF);
@@ -359,7 +359,7 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 		return -ENOMEM;
 
 	host->dev = dev;
-	host->base = dev->map_base;
+	host->base = IOMEM(dev->map_base);
 
 	/* structures must be linked */
 	chip = &host->nand;
@@ -375,7 +375,7 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 	chip->chip_delay = 50;
 	chip->priv = host;
 
-	chip->IO_ADDR_R = chip->IO_ADDR_W = (void*)(dev->map_base + NFDATA);
+	chip->IO_ADDR_R = chip->IO_ADDR_W = IOMEM(dev->map_base + NFDATA);
 
 	chip->cmd_ctrl = s3c24x0_nand_hwcontrol;
 	chip->dev_ready = s3c24x0_nand_devready;
@@ -418,13 +418,13 @@ static struct driver_d s3c24x0_nand_driver = {
 
 #ifdef CONFIG_S3C24XX_NAND_BOOT
 
-static void __nand_boot_init wait_for_completion(unsigned long host)
+static void __nand_boot_init wait_for_completion(void __iomem *host)
 {
 	while (!(readw(host + NFSTAT) & NFSTAT_BUSY))
 		;
 }
 
-static void __nand_boot_init nfc_addr(unsigned long host, uint32_t offs)
+static void __nand_boot_init nfc_addr(void __iomem *host, uint32_t offs)
 {
 	send_addr(host, offs & 0xff);
 	send_addr(host, (offs >> 9) & 0xff);
@@ -447,7 +447,7 @@ static void __nand_boot_init nfc_addr(unsigned long host, uint32_t offs)
  */
 void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page, int pagesize)
 {
-	unsigned long host = S3C24X0_NAND_BASE;
+	void __iomem *host = (void __iomem *)S3C24X0_NAND_BASE;
 	int i;
 
 	/*
@@ -469,7 +469,7 @@ void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page, in
 		wait_for_completion(host);
 		/* copy one page (do *not* use readsb() here!)*/
 		for (i = 0; i < pagesize; i++)
-			writeb(readb(host + NFDATA), (unsigned long)(dest + i));
+			writeb(readb(host + NFDATA), (void __iomem *)(dest + i));
 		disable_cs(host);
 
 		page++;
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 2befaf0..6cf2bb2 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -359,7 +359,6 @@ struct nand_buffers {
  *			(determine if errors are correctable)
  * @write_page:		[REPLACEABLE] High-level page write function
  */
-#define IOMEM(addr) ((void __force __iomem *)addr)
 struct nand_chip {
 	
 	void __iomem	*IO_ADDR_R;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
