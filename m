Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bOoPy-0004Tw-Sr
 for barebox@lists.infradead.org; Sun, 17 Jul 2016 15:55:47 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 17 Jul 2016 17:53:15 +0200
Message-Id: <1468770798-22102-2-git-send-email-akurz@blala.de>
In-Reply-To: <1468770798-22102-1-git-send-email-akurz@blala.de>
References: <1468770798-22102-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 2/5] scripts: imx-usb-loader: remove useless code
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The configuration interface for struct usb_work is not implemented here
leaving the options set on fixed settings or even uninitialized.
Do some cleanup and remove those half-cooked dead code passages.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 scripts/imx/imx-usb-loader.c | 49 +++-----------------------------------------
 1 file changed, 3 insertions(+), 46 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 9ead7b1..17551e3 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -67,13 +67,7 @@ struct mach_id {
 struct usb_work {
 	char filename[256];
 	unsigned char dcd;
-	unsigned char clear_dcd;
 	unsigned char plug;
-#define J_ADDR		1
-#define J_HEADER	2
-#define J_HEADER2	3
-	unsigned char jump_mode;
-	unsigned jump_addr;
 };
 
 struct usb_id {
@@ -925,24 +919,6 @@ static int perform_dcd(unsigned char *p, const unsigned char *file_start,
 	return ret;
 }
 
-static int clear_dcd_ptr(unsigned char *p, unsigned char *file_start, unsigned cnt)
-{
-	struct imx_flash_header *ohdr = (struct imx_flash_header *)p;
-	struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
-
-	switch (usb_id->mach_id->header_type) {
-	case HDR_MX51:
-		printf("clear dcd_ptr=0x%08x\n", ohdr->dcd);
-		ohdr->dcd = 0;
-		break;
-	case HDR_MX53:
-		printf("clear dcd_ptr=0x%08x\n", hdr->dcd_ptr);
-		hdr->dcd_ptr = 0;
-		break;
-	}
-	return 0;
-}
-
 static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
 		unsigned cnt, unsigned *dladdr, unsigned *max_length, unsigned *plugin,
 		unsigned *header_addr)
@@ -1017,18 +993,6 @@ static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
 				return ret;
 			}
 			curr->dcd = 0;
-			if ((!curr->jump_mode) && (!curr->plug)) {
-				printf("!!dcd done, nothing else requested\n");
-				return 0;
-			}
-		}
-
-		if (curr->clear_dcd) {
-			ret = clear_dcd_ptr(p, buf, cnt);
-			if (ret < 0) {
-				printf("!!clear_dcd returned %i\n", ret);
-				return ret;
-			}
 		}
 
 		if (*p_plugin && (!curr->plug) && (!header_cnt)) {
@@ -1110,12 +1074,6 @@ static int do_irom_download(struct usb_work *curr, int verify)
 
 	header_offset = ret;
 
-	if ((!curr->jump_mode) && (!curr->plug)) {
-		/*  nothing else requested */
-		ret = 0;
-		goto cleanup;
-	}
-
 	if (plugin && (!curr->plug)) {
 		printf("Only plugin header found\n");
 		ret = -1;
@@ -1130,9 +1088,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 
 	file_base = header_addr - header_offset;
 
-	type = (curr->plug || curr->jump_mode) ? FT_APP : FT_LOAD_ONLY;
-
-	if (usb_id->mach_id->mode == MODE_BULK && type == FT_APP) {
+	if (usb_id->mach_id->mode == MODE_BULK) {
 		/* No jump command, dladdr should point to header */
 		dladdr = header_addr;
 	}
@@ -1153,6 +1109,8 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	if (fsize > max_length)
 		fsize = max_length;
 
+	type = FT_APP;
+
 	if (verify) {
 		verify_buffer = malloc(64);
 
@@ -1314,7 +1272,6 @@ int main(int argc, char *argv[])
 
 	w.plug = 1;
 	w.dcd = 1;
-	w.jump_mode = J_HEADER;
 	strncpy(w.filename, argv[optind], sizeof(w.filename) - 1);
 
 	r = libusb_init(NULL);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
