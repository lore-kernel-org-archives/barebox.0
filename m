Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzeTF-0007ru-S8
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 10:01:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1hzeT9-0003mt-Ms
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 12:00:55 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1hzeT9-0007qS-A0
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 12:00:55 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 19 Aug 2019 12:00:46 +0200
Message-Id: <20190819100049.6053-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: socfpga: fix xload on arria10
To: Barebox List <barebox@lists.infradead.org>

Since the commit
	5a1a5ed2537d7d12f851f3778707681d6c08d6e8
	ARM: images: use piggydata

the loading mechanism in the arria10 xload is neither functional nor needed.
Now, barebox has/can be loaded like a normal image, so the filesize, that is
written to the barebox header, can be evaluated.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-xload.c | 65 ++++++---------------------
 images/Makefile.socfpga               |  2 +-
 2 files changed, 14 insertions(+), 53 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
index 3622a3cd9cf4..047f61246cbf 100644
--- a/arch/arm/mach-socfpga/arria10-xload.c
+++ b/arch/arm/mach-socfpga/arria10-xload.c
@@ -386,70 +386,31 @@ int arria10_load_fpga(int offset, int bitstream_size)
 	return 0;
 }
 
-static int image_size(void)
-{
-	uint32_t *image_end = (void *)__image_end;
-	uint32_t payload_len;
-	uint32_t pbl_len;
-	uint32_t arria10_header_len;
-	uint32_t sizep;
-	uint32_t arria10_crc;
-
-	/* arria10 header is 512 byte */
-	arria10_header_len = 512;
-	/* pbl is appended with 4 byte CRC for boot rom */
-	arria10_crc = 4;
-
-	/* The length of the PBL image */
-	pbl_len = __image_end - _text;
-
-	sizep = 4;
-
-	/* The length of the payload is appended directly behind the PBL */
-	payload_len = *(image_end);
-
-	return pbl_len + arria10_header_len + sizep + arria10_crc + payload_len;
-}
-
 void arria10_start_image(int offset)
 {
 	void *buf = (void *)0x0;
-	void *in_buf = (void *)SZ_1M;
 	uint32_t start;
-	int size = 0;
-	int ret;
+        unsigned int size;
+        int ret;
 	void __noreturn (*bb)(void);
-	uint32_t pbl_len = __image_end - _text;
-	uint32_t *image_end = (void *)__image_end;
-	uint32_t arria10_header_len;
-	uint32_t sizep;
-	uint32_t arria10_crc;
-
-	size = image_size();
 
 	start = bootloader.first_sec + offset / SECTOR_SIZE;
 
-	ret = arria10_read_blocks(buf, start, ALIGN(size, SECTOR_SIZE));
-	if (ret) {
-		puts_ll("Loading image failed\n");
+        ret = arria10_read_blocks(buf, start, ALIGN(ARM_HEAD_SIZE, SECTOR_SIZE));
+        if (ret)
 		hang();
-	}
-
-	/* arria10 header is 512 byte */
-	arria10_header_len = 512;
-	sizep = 4;
 
-	/* copy PBL */
-	memcpy(in_buf, buf, pbl_len + sizep + arria10_header_len);
-
-	/* pbl is appended with 4 byte CRC for boot rom */
-	arria10_crc = 4;
+	if (is_barebox_arm_head(buf))
+		size = *((unsigned int *)buf + ARM_HEAD_SIZE_OFFSET /
+			 sizeof(unsigned int));
+	else
+		hang();
 
-	/* copy payload, skip the Arria10 CRC */
-	memcpy(in_buf + pbl_len + sizep + arria10_header_len,
-	       buf + pbl_len + sizep + arria10_header_len + arria10_crc, *(image_end));
+        ret = arria10_read_blocks(buf, start, ALIGN(size, SECTOR_SIZE));
+        if (ret)
+		hang();
 
-	bb = in_buf;
+	bb = buf;
 
 	bb();
 
diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
index 6b346a5f8414..b36e2a5033d3 100644
--- a/images/Makefile.socfpga
+++ b/images/Makefile.socfpga
@@ -4,7 +4,7 @@
 
 # %.socfpgaimg - convert into socfpga image
 # ----------------------------------------------------------------
-SOCFPGA_IMAGE_ARGS-$(CONFIG_ARCH_SOCFPGA_ARRIA10) += -v1
+SOCFPGA_IMAGE_ARGS-$(CONFIG_ARCH_SOCFPGA_ARRIA10) += -v1 -b
 SOCFPGA_IMAGE_ARGS-$(CONFIG_ARCH_SOCFPGA_CYCLONE5) += -v0
 
 quiet_cmd_socfpga_image = SOCFPGA-IMG $@
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
