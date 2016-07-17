Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bOoPv-0004Tv-Gv
 for barebox@lists.infradead.org; Sun, 17 Jul 2016 15:55:45 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 17 Jul 2016 17:53:14 +0200
Message-Id: <1468770798-22102-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 1/5] scripts: imx-usb-loader: const function args
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 scripts/imx/imx-usb-loader.c | 29 +++++++++++++++++------------
 1 file changed, 17 insertions(+), 12 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index cf9d610..9ead7b1 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -669,13 +669,14 @@ static int load_file(void *buf, unsigned len, unsigned dladdr, unsigned char typ
 	return transfer_size;
 }
 
-static int write_dcd_table_ivt(struct imx_flash_header_v2 *hdr, unsigned char *file_start, unsigned cnt)
+static int write_dcd_table_ivt(const struct imx_flash_header_v2 *hdr,
+			       const unsigned char *file_start, unsigned cnt)
 {
 	unsigned char *dcd_end;
 	unsigned m_length;
 #define cvt_dest_to_src		(((unsigned char *)hdr) - hdr->self)
 	unsigned char* dcd;
-	unsigned char* file_end = file_start + cnt;
+	const unsigned char *file_end = file_start + cnt;
 	int err = 0;
 
 	if (!hdr->dcd_ptr) {
@@ -747,8 +748,8 @@ static int write_dcd_table_ivt(struct imx_flash_header_v2 *hdr, unsigned char *f
 	return err;
 }
 
-static int get_dcd_range_old(struct imx_flash_header *hdr,
-		unsigned char *file_start, unsigned cnt,
+static int get_dcd_range_old(const struct imx_flash_header *hdr,
+		const unsigned char *file_start, unsigned cnt,
 		unsigned char **pstart, unsigned char **pend)
 {
 	unsigned char *dcd_end;
@@ -756,7 +757,7 @@ static int get_dcd_range_old(struct imx_flash_header *hdr,
 #define cvt_dest_to_src_old		(((unsigned char *)&hdr->dcd) - hdr->dcd_ptr_ptr)
 	unsigned char* dcd;
 	unsigned val;
-	unsigned char* file_end = file_start + cnt;
+	const unsigned char *file_end = file_start + cnt;
 
 	if (!hdr->dcd) {
 		printf("No dcd table, barker=%x\n", hdr->app_code_barker);
@@ -794,7 +795,8 @@ static int get_dcd_range_old(struct imx_flash_header *hdr,
 	return 0;
 }
 
-static int write_dcd_table_old(struct imx_flash_header *hdr, unsigned char *file_start, unsigned cnt)
+static int write_dcd_table_old(const struct imx_flash_header *hdr,
+			       const unsigned char *file_start, unsigned cnt)
 {
 	unsigned val;
 	unsigned char *dcd_end;
@@ -877,10 +879,12 @@ err:
 	return ret;
 }
 
-static int is_header(unsigned char *p)
+static int is_header(const unsigned char *p)
 {
-	struct imx_flash_header *ohdr = (struct imx_flash_header *)p;
-	struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
+	const struct imx_flash_header *ohdr =
+		(const struct imx_flash_header *)p;
+	const struct imx_flash_header_v2 *hdr =
+		(const struct imx_flash_header_v2 *)p;
 
 	switch (usb_id->mach_id->header_type) {
 	case HDR_MX51:
@@ -895,7 +899,8 @@ static int is_header(unsigned char *p)
 	return 0;
 }
 
-static int perform_dcd(unsigned char *p, unsigned char *file_start, unsigned cnt)
+static int perform_dcd(unsigned char *p, const unsigned char *file_start,
+		       unsigned cnt)
 {
 	struct imx_flash_header *ohdr = (struct imx_flash_header *)p;
 	struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
@@ -938,11 +943,11 @@ static int clear_dcd_ptr(unsigned char *p, unsigned char *file_start, unsigned c
 	return 0;
 }
 
-static int get_dl_start(unsigned char *p, unsigned char *file_start,
+static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
 		unsigned cnt, unsigned *dladdr, unsigned *max_length, unsigned *plugin,
 		unsigned *header_addr)
 {
-	unsigned char* file_end = file_start + cnt;
+	const unsigned char *file_end = file_start + cnt;
 	switch (usb_id->mach_id->header_type) {
 	case HDR_MX51:
 	{
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
