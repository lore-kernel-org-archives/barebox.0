Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RERoV-0002Gn-DU
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 20:23:36 +0000
Received: by mail-ey0-f177.google.com with SMTP id 3so572175eye.36
	for <barebox@lists.infradead.org>; Thu, 13 Oct 2011 13:23:35 -0700 (PDT)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu, 13 Oct 2011 22:23:13 +0200
Message-Id: <1318537394-8555-7-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1318537394-8555-1-git-send-email-marek.belisko@open-nandra.com>
References: <1318537394-8555-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 7/8] nand_s3c2410: Fix sparse warnings.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

warnings:
drivers/mtd/nand/nand_s3c2410.c:550:24: warning: cast adds address space to expression (<asn:2>)
drivers/mtd/nand/nand_s3c2410.c:561:10: warning: incorrect type in argument 1 (different base types)
drivers/mtd/nand/nand_s3c2410.c:594:4: warning: cast adds address space to expression (<asn:2>)
drivers/mtd/nand/nand_s3c2410.c:594:4: warning: cast adds address space to expression (<asn:2>)
drivers/mtd/nand/nand_s3c2410.c:623:26: warning: incorrect type in argument 1 (different address spaces)
drivers/mtd/nand/nand_s3c2410.c:623:26:    expected void [noderef] <asn:2>*host
drivers/mtd/nand/nand_s3c2410.c:623:26:    got void *<noident>

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 drivers/mtd/nand/nand_s3c2410.c |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index c5f5d97..3a6f1e0 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -547,7 +547,7 @@ static void __nand_boot_init nfc_addr(void __iomem *host, uint32_t offs,
  */
 void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page)
 {
-	void __iomem *host = (void __iomem *)S3C24X0_NAND_BASE;
+	void __iomem *host = IOMEM(S3C24X0_NAND_BASE);
 	unsigned pagesize;
 	int i, cycle;
 
@@ -558,7 +558,7 @@ void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page)
 	enable_nand_controller(host, BOARD_DEFAULT_NAND_TIMING);
 
 	/* use the current NAND hardware configuration */
-	switch (readl(S3C24X0_NAND_BASE) & 0xf) {
+	switch (readl(host) & 0xf) {
 	case 0x6:	/* 8 bit, 4 addr cycles, 512 bpp, normal NAND */
 		pagesize = 512;
 		cycle = 4;
@@ -591,7 +591,7 @@ void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page)
 		wait_for_completion(host);
 		/* copy one page (do *not* use readsb() here!)*/
 		for (i = 0; i < pagesize; i++)
-			writeb(readb(host + NFDATA), (void __iomem *)(dest + i));
+			writeb(readb(IOMEM(host + NFDATA)), IOMEM(dest + i));
 		disable_cs(host);
 
 		page++;
@@ -620,7 +620,7 @@ static int do_nand_boot_test(struct command *cmdtp, int argc, char *argv[])
 	s3c24x0_nand_load_image(dest, size, 0);
 
 	/* re-enable the controller again, as this was a test only */
-	enable_nand_controller((void *)S3C24X0_NAND_BASE,
+	enable_nand_controller(IOMEM(S3C24X0_NAND_BASE),
 				BOARD_DEFAULT_NAND_TIMING);
 
 	return 0;
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
