Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YdLHq-0007q4-Ik
 for barebox@lists.infradead.org; Wed, 01 Apr 2015 16:14:42 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  1 Apr 2015 18:14:09 +0200
Message-Id: <1427904855-32548-5-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
References: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/10] imx-image: introduce HEADER_LEN and replace several
 0x1000 and 4096
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 scripts/imx/imx-image.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 45f97504054e..89cb8240e40d 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -32,6 +32,7 @@
 #define offsetof(TYPE, MEMBER) __builtin_offsetof(TYPE, MEMBER)
 
 #define MAX_DCD 1024
+#define HEADER_LEN 0x1000	/* length of the blank area + IVT + DCD */
 
 static uint32_t image_load_addr;
 static uint32_t image_dcd_offset;
@@ -185,7 +186,7 @@ static int add_header_v2(void *buf, int offset, uint32_t loadaddr, uint32_t imag
 	hdr->header.length	= htobe16(32);
 	hdr->header.version	= IVT_VERSION;
 
-	hdr->entry		= loadaddr + 0x1000;
+	hdr->entry		= loadaddr + HEADER_LEN;
 	hdr->dcd_ptr		= loadaddr + offset + offsetof(struct imx_flash_header_v2, dcd_header);
 	hdr->boot_data_ptr	= loadaddr + offset + offsetof(struct imx_flash_header_v2, boot_data);
 	hdr->self		= loadaddr + offset;
@@ -706,7 +707,7 @@ int main(int argc, char *argv[])
 	if (ret)
 		exit(1);
 
-	buf = calloc(4096, 1);
+	buf = calloc(1, HEADER_LEN);
 	if (!buf)
 		exit(1);
 
@@ -732,14 +733,14 @@ int main(int argc, char *argv[])
 	}
 
 	/*
-	 * Add 0x1000 to the image size for the DCD.
+	 * Add HEADER_LEN to the image size for the blank aera + IVT + DCD.
 	 * Align up to a 4k boundary, because:
 	 * - at least i.MX5 NAND boot only reads full NAND pages and misses the
 	 *   last partial NAND page.
 	 * - i.MX6 SPI NOR boot corrupts the last few bytes of an image loaded
 	 *   in ver funy ways when the image size is not 4 byte aligned
 	 */
-	load_size = ((image_size + 0x1000) + 0xfff) & ~0xfff;
+	load_size = ((image_size + HEADER_LEN) + 0xfff) & ~0xfff;
 
 	switch (header_version) {
 	case 1:
@@ -760,14 +761,14 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
-	ret = xwrite(outfd, buf, 4096);
+	ret = xwrite(outfd, buf, HEADER_LEN);
 	if (ret < 0) {
 		perror("write");
 		exit(1);
 	}
 
 	if (cpu_type == 35) {
-		ret = xwrite(outfd, buf, 4096);
+		ret = xwrite(outfd, buf, HEADER_LEN);
 		if (ret < 0) {
 			perror("write");
 			exit(1);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
