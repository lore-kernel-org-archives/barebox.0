Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwLtE-0002vg-RY
	for barebox@lists.infradead.org; Sun, 06 Mar 2011 21:53:28 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun,  6 Mar 2011 22:53:15 +0100
Message-Id: <1299448398-5672-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1299448398-5672-1-git-send-email-jbe@pengutronix.de>
References: <1299448398-5672-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/5] mini2440: Consider correct NAND page size for boot.
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

When booting from NAND, its important to know the correct page size. When
the NAND is used as the boot source, four dedicated pins are used to configure
the correct page size and address cycles. These pins can be read back in one
of the NFC registers to parametrize the load function.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 arch/arm/boards/a9m2410/a9m2410.c                 |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                 |    2 +-
 arch/arm/boards/mini2440/mini2440.c               |    2 +-
 arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h |    2 +-
 drivers/mtd/nand/nand_s3c2410.c                   |   44 ++++++++++++++------
 5 files changed, 35 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index 57d8fa3..8cbaec5 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -176,7 +176,7 @@ device_initcall(a9m2410_devices_init);
 #ifdef CONFIG_S3C24XX_NAND_BOOT
 void __bare_init nand_boot(void)
 {
-	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0, 512);
+	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0);
 }
 #endif
 
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 764cd65..39b5276 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -182,7 +182,7 @@ device_initcall(a9m2440_devices_init);
 #ifdef CONFIG_S3C24XX_NAND_BOOT
 void __bare_init nand_boot(void)
 {
-	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0, 512);
+	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0);
 }
 #endif
 
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 6842a79..9a7fe68 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -281,7 +281,7 @@ device_initcall(mini2440_devices_init);
 #ifdef CONFIG_S3C24XX_NAND_BOOT
 void __bare_init nand_boot(void)
 {
-	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0, 512);
+	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0);
 }
 #endif
 
diff --git a/arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h b/arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h
index d06287e..7610b4e 100644
--- a/arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h
+++ b/arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h
@@ -19,7 +19,7 @@
  */
 
 #ifdef CONFIG_S3C24XX_NAND_BOOT
-extern void s3c24x0_nand_load_image(void*, int, int, int);
+extern void s3c24x0_nand_load_image(void*, int, int);
 #endif
 
 /**
diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index df0b7c1..08330ed 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -497,7 +497,8 @@ static void __nand_boot_init wait_for_completion(void __iomem *host)
 		;
 }
 
-static void __nand_boot_init nfc_addr(void __iomem *host, uint32_t offs)
+static void __nand_boot_init nfc_addr(void __iomem *host, uint32_t offs,
+					int ps, int c)
 {
 	send_addr(host, offs & 0xff);
 	send_addr(host, (offs >> 9) & 0xff);
@@ -510,24 +511,42 @@ static void __nand_boot_init nfc_addr(void __iomem *host, uint32_t offs)
  * @param[out] dest Pointer to target area (in SDRAM)
  * @param[in] size Bytes to read from NAND device
  * @param[in] page Start page to read from
- * @param[in] pagesize Size of each page in the NAND
  *
  * This function must be located in the first 4kiB of the barebox image
- * (guess why). When this routine is running the SDRAM is up and running
- * and it runs from the correct address (physical=linked address).
- * TODO Could we access the platform data from the boardfile?
- * Due to it makes no sense this function does not return in case of failure.
+ * (guess why).
  */
-void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page, int pagesize)
+void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page)
 {
 	void __iomem *host = (void __iomem *)S3C24X0_NAND_BASE;
-	int i;
+	unsigned pagesize;
+	int i, cycle;
 
 	/*
 	 * Reenable the NFC and use the default (but slow) access
 	 * timing or the board specific setting if provided.
 	 */
 	enable_nand_controller(host, BOARD_DEFAULT_NAND_TIMING);
+
+	/* use the current NAND hardware configuration */
+	switch (readl(S3C24X0_NAND_BASE) & 0xf) {
+	case 0x6:	/* 8 bit, 4 addr cycles, 512 bpp, normal NAND */
+		pagesize = 512;
+		cycle = 4;
+		break;
+	case 0xc:	/* 8 bit, 4 addr cycles, 2048 bpp, advanced NAND */
+		pagesize = 2048;
+		cycle = 4;
+		break;
+	case 0xe:	/* 8 bit, 5 addr cycles, 2048 bpp, advanced NAND */
+		pagesize = 2048;
+		cycle = 5;
+		break;
+	default:
+		/* we cannot output an error message here :-( */
+		disable_nand_controller(host);
+		return;
+	}
+
 	enable_cs(host);
 
 	/* Reset the NAND device */
@@ -538,7 +557,7 @@ void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page, in
 	do {
 		enable_cs(host);
 		send_cmd(host, NAND_CMD_READ0);
-		nfc_addr(host, page * pagesize);
+		nfc_addr(host, page * pagesize, pagesize, cycle);
 		wait_for_completion(host);
 		/* copy one page (do *not* use readsb() here!)*/
 		for (i = 0; i < pagesize; i++)
@@ -560,22 +579,21 @@ void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page, in
 static int do_nand_boot_test(struct command *cmdtp, int argc, char *argv[])
 {
 	void *dest;
-	int size, pagesize;
+	int size;
 
 	if (argc < 3)
 		return COMMAND_ERROR_USAGE;
 
 	dest = (void *)strtoul_suffix(argv[1], NULL, 0);
 	size = strtoul_suffix(argv[2], NULL, 0);
-	pagesize = strtoul_suffix(argv[3], NULL, 0);
 
-	s3c24x0_nand_load_image(dest, size, 0, pagesize);
+	s3c24x0_nand_load_image(dest, size, 0);
 
 	return 0;
 }
 
 static const __maybe_unused char cmd_nand_boot_test_help[] =
-"Usage: nand_boot_test <dest> <size> <pagesize>\n";
+"Usage: nand_boot_test <dest> <size>\n";
 
 BAREBOX_CMD_START(nand_boot_test)
 	.cmd		= do_nand_boot_test,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
