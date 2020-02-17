Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fnX-0008Gc-VP
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:46:15 +0100
Message-Id: <20200217124623.14520-35-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 34/42] scripts: imx-usb-loader: Add 2nd stage loading support
To: Barebox List <barebox@lists.infradead.org>

This adds the host part for 2nd stage uploading in case the RAM setup is
done in code. This works in conjunction with "usb: gadget: fsl_udc: Add
PBL image loading support".

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 45 +++++++++++++++++++++++++++++++++---
 1 file changed, 42 insertions(+), 3 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 08affe72c7..d222b57a88 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -763,7 +763,8 @@ static int modify_memory(unsigned addr, unsigned val, int width, int set_bits, i
 	return write_memory(addr, val, 4);
 }
 
-static int load_file(void *buf, unsigned len, unsigned dladdr, unsigned char type)
+static int load_file(void *buf, unsigned len, unsigned dladdr,
+		     unsigned char type, bool mode_barebox)
 {
 	static struct sdp_command dl_command = {
 		.cmd = SDP_WRITE_FILE,
@@ -828,6 +829,9 @@ static int load_file(void *buf, unsigned len, unsigned dladdr, unsigned char typ
 		cnt -= now;
 	}
 
+	if (mode_barebox)
+		return transfer_size;
+
 	if (usb_id->mach_id->mode == MODE_HID) {
 		err = transfer(3, tmp, sizeof(tmp), &last_trans);
 		if (err)
@@ -1300,6 +1304,22 @@ static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
 	return 0;
 }
 
+static int get_payload_start(const unsigned char *p, uint32_t *ofs)
+{
+	struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
+
+	switch (usb_id->mach_id->header_type) {
+	case HDR_MX51:
+		return -EINVAL;
+
+	case HDR_MX53:
+		*ofs = hdr->entry - hdr->self;
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
 static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
 		unsigned *p_max_length, unsigned *p_plugin,
 		unsigned *p_header_addr)
@@ -1362,6 +1382,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	unsigned max_length;
 	unsigned plugin = 0;
 	unsigned header_addr = 0;
+	unsigned total_size = 0;
 
 	ret = read_file(curr->filename, &buf, &fsize);
 	if (ret < 0)
@@ -1384,6 +1405,11 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	image = buf + header_offset;
 	fsize -= header_offset;
 
+	if (fsize > max_length) {
+		total_size = fsize;
+		fsize = max_length;
+	}
+
 	type = FT_APP;
 
 	if (verify) {
@@ -1406,7 +1432,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	printf("loading binary file(%s) to 0x%08x, fsize=%u type=%d...\n",
 			curr->filename, header_addr, fsize, type);
 
-	ret = load_file(image, fsize, header_addr, type);
+	ret = load_file(image, fsize, header_addr, type, false);
 	if (ret < 0)
 		goto cleanup;
 
@@ -1429,7 +1455,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 			 * so we load part of the image again with type FT_APP
 			 * this time.
 			 */
-			ret = load_file(verify_buffer, 64, header_addr, FT_APP);
+			ret = load_file(verify_buffer, 64, header_addr, FT_APP, false);
 			if (ret < 0)
 				goto cleanup;
 
@@ -1444,6 +1470,19 @@ static int do_irom_download(struct usb_work *curr, int verify)
 			return ret;
 	}
 
+	if (total_size) {
+		uint32_t ofs;
+
+		ret = get_payload_start(image, &ofs);
+		if (ret) {
+			printf("Cannot get offset of payload\n");
+			goto cleanup;
+		}
+		printf("Loading full image\n");
+		printf("Note: This needs board support on the other end\n");
+		load_file(image + ofs, total_size - ofs, 0, 0, true);
+	}
+
 	ret = 0;
 cleanup:
 	free(verify_buffer);
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
