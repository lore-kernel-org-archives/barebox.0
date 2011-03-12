Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PyUHG-0008On-0m
	for barebox@lists.infradead.org; Sat, 12 Mar 2011 19:15:14 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 12 Mar 2011 20:14:55 +0100
Message-Id: <1299957297-8539-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1299957297-8539-1-git-send-email-jbe@pengutronix.de>
References: <1299957297-8539-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 4/6] S3C24xx/NFC: Consider correct NAND page size for boot.
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

When booting from NAND, its important to know the correct page size. When
the NAND is used as the boot source, four dedicated pins are used to configure
the correct page size and address cycles. These pins can be read back in one
of the NFC registers to parametrize the load function.

This patch also extends the read routine to support more than four address
cycles on demand.

BTW: At least some mini2440s are misconfigured to use five address cycles for
a NAND device that is known to need only four address cycles. In this case the
vendor is at our side: This NAND simply ignores any additional address cycles
than required.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/a9m2410/a9m2410.c                 |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                 |    2 +-
 arch/arm/boards/mini2440/mini2440.c               |    2 +-
 arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h |    2 +-
 drivers/mtd/nand/nand_s3c2410.c                   |   76 ++++++++++++++++-----
 5 files changed, 62 insertions(+), 22 deletions(-)

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
index ab309a0..448aa40 100644
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
index 94c075e..84f6061 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -492,37 +492,78 @@ static void __nand_boot_init wait_for_completion(void __iomem *host)
 		;
 }
 
-static void __nand_boot_init nfc_addr(void __iomem *host, uint32_t offs)
+/**
+ * Convert a page offset into a page address for the NAND
+ * @param host Where to write the address to
+ * @param offs Page's offset in the NAND
+ * @param ps Page size (512 or 2048)
+ * @param c Address cycle count (3, 4 or 5)
+ *
+ * Uses the offset of the page to generate an page address into the NAND. This
+ * differs when using a 512 byte or 2048 bytes per page NAND.
+ * The collumn part of the page address to be generated is always forced to '0'.
+ */
+static void __nand_boot_init nfc_addr(void __iomem *host, uint32_t offs,
+					int ps, int c)
 {
-	send_addr(host, offs & 0xff);
-	send_addr(host, (offs >> 9) & 0xff);
-	send_addr(host, (offs >> 17) & 0xff);
-	send_addr(host, (offs >> 25) & 0xff);
+	send_addr(host, 0); /* collumn part 1 */
+
+	if (ps == 512) {
+		send_addr(host, offs >> 9);
+		send_addr(host, offs >> 17);
+		if (c > 3)
+			send_addr(host, offs >> 25);
+	} else {
+		send_addr(host, 0); /* collumn part 2 */
+		send_addr(host, offs >> 11);
+		send_addr(host, offs >> 19);
+		if (c > 4)
+			send_addr(host, offs >> 27);
+		send_cmd(host, NAND_CMD_READSTART);
+	}
 }
 
 /**
- * Load a sequential count of blocks from the NAND into memory
+ * Load a sequential count of pages from the NAND into memory
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
@@ -533,7 +574,7 @@ void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page, in
 	do {
 		enable_cs(host);
 		send_cmd(host, NAND_CMD_READ0);
-		nfc_addr(host, page * pagesize);
+		nfc_addr(host, page * pagesize, pagesize, cycle);
 		wait_for_completion(host);
 		/* copy one page (do *not* use readsb() here!)*/
 		for (i = 0; i < pagesize; i++)
@@ -555,16 +596,15 @@ void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page, in
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
 
 	/* re-enable the controller again, as this was a test only */
 	enable_nand_controller((void *)S3C24X0_NAND_BASE,
@@ -574,7 +614,7 @@ static int do_nand_boot_test(struct command *cmdtp, int argc, char *argv[])
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
