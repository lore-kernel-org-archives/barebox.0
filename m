Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ByP-0007e2-FM
 for barebox@lists.infradead.org; Thu, 13 Feb 2020 10:43:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2020 11:43:34 +0100
Message-Id: <20200213104335.6057-2-s.hauer@pengutronix.de>
In-Reply-To: <20200213104335.6057-1-s.hauer@pengutronix.de>
References: <20200213104335.6057-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] scripts: imx-usb-loader: download address is always the
 header address
To: Barebox List <barebox@lists.infradead.org>

We always have to upload the image beginning with the header, we have
to skip everything that is before the header.
In MODE_BULK this is explicit, but in HID mode this is obfuscated by
doing several calculations with helper variables. Drop this and simplify
code.

Tested on i.MX51, i.MX53 and i.MX6

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 22 +++++-----------------
 1 file changed, 5 insertions(+), 17 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index ebe0eea050..d6c62820c3 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1359,7 +1359,6 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	unsigned char type;
 	unsigned fsize = 0;
 	unsigned header_offset;
-	unsigned file_base;
 	unsigned char *buf = NULL;
 	unsigned char *image;
 	unsigned char *verify_buffer = NULL;
@@ -1367,7 +1366,6 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	unsigned max_length;
 	unsigned plugin = 0;
 	unsigned header_addr = 0;
-	unsigned skip = 0;
 
 	ret = read_file(curr->filename, &buf, &fsize);
 	if (ret < 0)
@@ -1394,20 +1392,10 @@ static int do_irom_download(struct usb_work *curr, int verify)
 		goto cleanup;
 	}
 
-	file_base = header_addr - header_offset;
+	dladdr = header_addr;
 
-	if (usb_id->mach_id->mode == MODE_BULK) {
-		/* No jump command, dladdr should point to header */
-		dladdr = header_addr;
-	}
-
-	skip = dladdr - file_base;
-
-	image = buf + skip;
-	fsize -= skip;
-
-	if (fsize > max_length)
-		fsize = max_length;
+	image = buf + header_offset;
+	fsize -= header_offset;
 
 	type = FT_APP;
 
@@ -1428,8 +1416,8 @@ static int do_irom_download(struct usb_work *curr, int verify)
 		}
 	}
 
-	printf("loading binary file(%s) to 0x%08x, skip=0x%x, fsize=%u type=%d...\n",
-			curr->filename, dladdr, skip, fsize, type);
+	printf("loading binary file(%s) to 0x%08x, fsize=%u type=%d...\n",
+			curr->filename, dladdr, fsize, type);
 
 	ret = load_file(image, fsize, dladdr, type);
 	if (ret < 0)
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
