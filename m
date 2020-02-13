Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ByB-0007Wo-HI
 for barebox@lists.infradead.org; Thu, 13 Feb 2020 10:43:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2020 11:43:35 +0100
Message-Id: <20200213104335.6057-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] scripts: imx-usb-loader: dladdr is unused, remove it
To: Barebox List <barebox@lists.infradead.org>

The download address is the same as the place we put the header to, so
we can drop the calculation of dladdr and use header_addr directly.

Tested on i.MX51, i.MX53 and i.MX6

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 29 ++++++++---------------------
 1 file changed, 8 insertions(+), 21 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index d6c62820c3..08affe72c7 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1259,7 +1259,7 @@ static int perform_dcd(unsigned char *p, const unsigned char *file_start,
 }
 
 static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
-		unsigned cnt, unsigned *dladdr, unsigned *max_length, unsigned *plugin,
+		unsigned cnt, unsigned *max_length, unsigned *plugin,
 		unsigned *header_addr)
 {
 	const unsigned char *file_end = file_start + cnt;
@@ -1271,7 +1271,6 @@ static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
 		unsigned char* dcd;
 		int err = get_dcd_range_old(ohdr, file_start, cnt, &dcd, &dcd_end);
 
-		*dladdr = ohdr->app_dest;
 		*header_addr = ohdr->dcd_ptr_ptr - offsetof(struct imx_flash_header, dcd);
 		*plugin = 0;
 		if (err >= 0)
@@ -1284,7 +1283,6 @@ static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
 		unsigned char *bd;
 		struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
 
-		*dladdr = hdr->self;
 		*header_addr = hdr->self;
 		bd = hdr->boot_data_ptr + cvt_dest_to_src;
 		if ((bd < file_start) || ((bd + 4) > file_end)) {
@@ -1292,7 +1290,6 @@ static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
 			return -1;
 		}
 
-		*dladdr = ((struct imx_boot_data *)bd)->start;
 		*max_length = ((struct imx_boot_data *)bd)->size;
 		*plugin = ((struct imx_boot_data *)bd)->plugin;
 		((struct imx_boot_data *)bd)->plugin = 0;
@@ -1304,7 +1301,7 @@ static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
 }
 
 static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
-		unsigned *p_dladdr, unsigned *p_max_length, unsigned *p_plugin,
+		unsigned *p_max_length, unsigned *p_plugin,
 		unsigned *p_header_addr)
 {
 	int ret;
@@ -1319,7 +1316,7 @@ static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
 		if (!is_header(p))
 			continue;
 
-		ret = get_dl_start(p, buf, cnt, p_dladdr, p_max_length, p_plugin, p_header_addr);
+		ret = get_dl_start(p, buf, cnt, p_max_length, p_plugin, p_header_addr);
 		if (ret < 0) {
 			printf("!!get_dl_start returned %i\n", ret);
 			return ret;
@@ -1362,7 +1359,6 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	unsigned char *buf = NULL;
 	unsigned char *image;
 	unsigned char *verify_buffer = NULL;
-	unsigned dladdr = 0;
 	unsigned max_length;
 	unsigned plugin = 0;
 	unsigned header_addr = 0;
@@ -1373,8 +1369,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 
 	max_length = fsize;
 
-	ret = process_header(curr, buf, fsize,
-			&dladdr, &max_length, &plugin, &header_addr);
+	ret = process_header(curr, buf, fsize, &max_length, &plugin, &header_addr);
 	if (ret < 0)
 		goto cleanup;
 
@@ -1386,14 +1381,6 @@ static int do_irom_download(struct usb_work *curr, int verify)
 		goto cleanup;
 	}
 
-	if (!dladdr) {
-		printf("unknown load address\n");
-		ret = -3;
-		goto cleanup;
-	}
-
-	dladdr = header_addr;
-
 	image = buf + header_offset;
 	fsize -= header_offset;
 
@@ -1417,9 +1404,9 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	}
 
 	printf("loading binary file(%s) to 0x%08x, fsize=%u type=%d...\n",
-			curr->filename, dladdr, fsize, type);
+			curr->filename, header_addr, fsize, type);
 
-	ret = load_file(image, fsize, dladdr, type);
+	ret = load_file(image, fsize, header_addr, type);
 	if (ret < 0)
 		goto cleanup;
 
@@ -1428,7 +1415,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	if (verify) {
 		printf("verifying file...\n");
 
-		ret = verify_memory(image, fsize, dladdr);
+		ret = verify_memory(image, fsize, header_addr);
 		if (ret < 0) {
 			printf("verifying failed\n");
 			goto cleanup;
@@ -1442,7 +1429,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 			 * so we load part of the image again with type FT_APP
 			 * this time.
 			 */
-			ret = load_file(verify_buffer, 64, dladdr, FT_APP);
+			ret = load_file(verify_buffer, 64, header_addr, FT_APP);
 			if (ret < 0)
 				goto cleanup;
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
