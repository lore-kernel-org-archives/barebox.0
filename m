Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9x2m-0007gv-O9
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 12:52:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Aug 2013 14:52:23 +0200
Message-Id: <1376571143-10936-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] imx-image: Align image size
To: barebox@lists.infradead.org

Several boot modes on i.MX can't cope with partial pages or
non word aligned image lengths, so align the size to 4k.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 09fdc5f..ec571eb 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -632,7 +632,7 @@ int main(int argc, char *argv[])
 	char *imagename = NULL;
 	char *outfile = NULL;
 	void *buf;
-	size_t image_size = 0;
+	size_t image_size = 0, load_size;
 	struct stat s;
 	int infd, outfd;
 	int dcd_only = 0;
@@ -714,12 +714,22 @@ int main(int argc, char *argv[])
 		exit (0);
 	}
 
+	/*
+	 * Add 0x1000 to the image size for the DCD.
+	 * Align up to a 4k boundary, because:
+	 * - at least i.MX5 NAND boot only reads full NAND pages and misses the
+	 *   last partial NAND page.
+	 * - i.MX6 SPI NOR boot corrupts the last few bytes of an image loaded
+	 *   in ver funy ways when the image size is not 4 byte aligned
+	 */
+	load_size = ((image_size + 0x1000) + 0xfff) & ~0xfff;
+
 	switch (header_version) {
 	case 1:
-		add_header_v1(buf, image_dcd_offset, image_load_addr, image_size + 0x1000);
+		add_header_v1(buf, image_dcd_offset, image_load_addr, load_size);
 		break;
 	case 2:
-		add_header_v2(buf, image_dcd_offset, image_load_addr, image_size + 0x1000);
+		add_header_v2(buf, image_dcd_offset, image_load_addr, load_size);
 		break;
 	default:
 		fprintf(stderr, "Congratulations! You're welcome to implement header version %d\n",
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
