Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwAd-0003rb-8f
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:02:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 09:02:18 +0100
Message-Id: <1322467340-10596-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/14] bootm relocate_image: honour load_address
To: barebox@lists.infradead.org

the uImage should be relocated to load_address. This is handled correctly
in gzip/bzip2 compressed images, but not in uncompressed images. fix this.
Also, when a variable is not used once without casting to another type it
probably means that its type is wrong.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c |   16 ++++++++--------
 1 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 0458919..c400ab5 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -44,7 +44,7 @@
 #include <init.h>
 #include <asm-generic/memory_layout.h>
 
-#define CFG_BOOTM_LEN	0x800000	/* use 8MByte as default max gunzip size */
+#define BOOTM_LEN	0x800000	/* use 8MByte as default max gunzip size */
 
 struct image_handle_data* image_handle_data_get_by_num(struct image_handle* handle, int num)
 {
@@ -59,28 +59,28 @@ int relocate_image(struct image_handle *handle, void *load_address)
 	image_header_t *hdr = &handle->header;
 	unsigned long len  = image_get_size(hdr);
 	struct image_handle_data *iha;
-	unsigned long data;
+	void *data;
 
 #if defined CONFIG_CMD_BOOTM_ZLIB || defined CONFIG_CMD_BOOTM_BZLIB
-	uint	unc_len = CFG_BOOTM_LEN;
+	uint	unc_len = BOOTM_LEN;
 #endif
 
 	iha = image_handle_data_get_by_num(handle, 0);
-	data = (unsigned long)(iha->data);
+	data = iha->data;
 
 	switch (image_get_comp(hdr)) {
 	case IH_COMP_NONE:
-		if(image_get_load(hdr) == data) {
+		if (load_address == data) {
 			printf ("   XIP ... ");
 		} else {
-			memmove ((void *) image_get_load(hdr), (uchar *)data, len);
+			memmove(load_address, data, len);
 		}
 		break;
 #ifdef CONFIG_CMD_BOOTM_ZLIB
 	case IH_COMP_GZIP:
 		printf ("   Uncompressing ... ");
 		if (gunzip (load_address, unc_len,
-			    (uchar *)data, &len) != 0)
+			    data, &len) != 0)
 			return -1;
 		break;
 #endif
@@ -93,7 +93,7 @@ int relocate_image(struct image_handle *handle, void *load_address)
 		 * at most 2300 KB of memory.
 		 */
 		if (BZ2_bzBuffToBuffDecompress (load_address,
-						&unc_len, (char *)data, len,
+						&unc_len, data, len,
 						MALLOC_SIZE < (4096 * 1024), 0)
 						!= BZ_OK)
 			return -1;
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
