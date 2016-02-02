Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQcG1-0002Po-8x
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:47:57 +0100
Message-Id: <1454424497-7157-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
References: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/34] scripts: imx: Consolidate flash headers in imx tools
To: Barebox List <barebox@lists.infradead.org>

Both imx-image and imx-usb-loader use their own variants of the
i.MX flash header definitions. Consolidate them to avoid code
duplication.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c      | 49 ++----------------------
 scripts/imx/imx-usb-loader.c | 89 +++++++++++++++-----------------------------
 scripts/imx/imx.h            | 52 ++++++++++++++++++++++++++
 3 files changed, 84 insertions(+), 106 deletions(-)
 create mode 100644 scripts/imx/imx.h

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 788fa81..162e710 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -27,6 +27,9 @@
 #include <fcntl.h>
 #include <endian.h>
 #include <linux/kernel.h>
+
+#include "imx.h"
+
 #include <include/filetype.h>
 
 #define MAX_DCD 1024
@@ -47,20 +50,8 @@ static int prepare_sign;
  * i.MX flash header v1 handling. Found on i.MX35 and i.MX51
  * ============================================================================
  */
-struct imx_flash_header {
-	uint32_t app_code_jump_vector;
-	uint32_t app_code_barker;
-	uint32_t app_code_csf;
-	uint32_t dcd_ptr_ptr;
-	uint32_t super_root_key;
-	uint32_t dcd;
-	uint32_t app_dest;
-	uint32_t dcd_barker;
-	uint32_t dcd_block_len;
-} __attribute__((packed));
 
 #define FLASH_HEADER_OFFSET 0x400
-#define DCD_BARKER       0xb17219e9
 
 static uint32_t bb_header[] = {
 	0xea0003fe,	/* b 0x1000 */
@@ -140,40 +131,6 @@ static int write_mem_v1(uint32_t addr, uint32_t val, int width)
  * ============================================================================
  */
 
-struct imx_boot_data {
-	uint32_t start;
-	uint32_t size;
-	uint32_t plugin;
-} __attribute__((packed));
-
-#define TAG_IVT_HEADER	0xd1
-#define IVT_VERSION	0x40
-#define TAG_DCD_HEADER	0xd2
-#define DCD_VERSION	0x40
-#define TAG_WRITE	0xcc
-#define TAG_CHECK	0xcf
-
-struct imx_ivt_header {
-	uint8_t tag;
-	uint16_t length;
-	uint8_t version;
-} __attribute__((packed));
-
-struct imx_flash_header_v2 {
-	struct imx_ivt_header header;
-
-	uint32_t entry;
-	uint32_t reserved1;
-	uint32_t dcd_ptr;
-	uint32_t boot_data_ptr;
-	uint32_t self;
-	uint32_t csf;
-	uint32_t reserved2;
-
-	struct imx_boot_data boot_data;
-	struct imx_ivt_header dcd_header;
-} __attribute__((packed));
-
 static int add_header_v2(void *buf, int offset, uint32_t loadaddr, uint32_t imagesize)
 {
 	struct imx_flash_header_v2 *hdr;
diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index dae49a1..a398386 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -34,6 +34,8 @@
 #include <getopt.h>
 #include <linux/kernel.h>
 
+#include "imx.h"
+
 #define get_min(a, b) (((a) < (b)) ? (a) : (b))
 
 #define FT_APP	0xaa
@@ -404,39 +406,6 @@ int do_status(libusb_device_handle *h, struct usb_id *p_id)
 	return err;
 }
 
-struct boot_data {
-	uint32_t dest;
-	uint32_t image_len;
-	uint32_t plugin;
-};
-
-struct imx_flash_header_v2 {
-#define IVT_BARKER 0x402000d1
-	uint32_t barker;
-	uint32_t start_addr;
-	uint32_t reserv1;
-	uint32_t dcd_ptr;
-	uint32_t boot_data_ptr;	/* struct boot_data * */
-	uint32_t self_ptr;	/* struct imx_flash_header_v2 *, this - boot_data.start = offset linked at */
-	uint32_t app_code_csf;
-	uint32_t reserv2;
-};
-
-/*
- * MX51 header type
- */
-struct imx_flash_header_v1 {
-	uint32_t app_start_addr;
-#define APP_BARKER	0xb1
-#define DCD_BARKER	0xb17219e9
-	uint32_t app_barker;
-	uint32_t csf_ptr;
-	uint32_t dcd_ptr_ptr;
-	uint32_t srk_ptr;
-	uint32_t dcd_ptr;
-	uint32_t app_dest_ptr;
-};
-
 #define V(a) (((a) >> 24) & 0xff), (((a) >> 16) & 0xff), (((a) >> 8) & 0xff), ((a) & 0xff)
 
 static int read_memory(struct libusb_device_handle *h, struct usb_id *p_id,
@@ -676,13 +645,13 @@ static int write_dcd_table_ivt(struct libusb_device_handle *h, struct usb_id *p_
 {
 	unsigned char *dcd_end;
 	unsigned m_length;
-#define cvt_dest_to_src		(((unsigned char *)hdr) - hdr->self_ptr)
+#define cvt_dest_to_src		(((unsigned char *)hdr) - hdr->self)
 	unsigned char* dcd;
 	unsigned char* file_end = file_start + cnt;
 	int err = 0;
 
 	if (!hdr->dcd_ptr) {
-		printf("No dcd table, barker=%x\n", hdr->barker);
+		printf("No dcd table in this ivt\n");
 		return 0; /* nothing to do */
 	}
 
@@ -742,27 +711,27 @@ static int write_dcd_table_ivt(struct libusb_device_handle *h, struct usb_id *p_
 	return err;
 }
 
-static int get_dcd_range_old(struct imx_flash_header_v1 *hdr,
+static int get_dcd_range_old(struct imx_flash_header *hdr,
 		unsigned char *file_start, unsigned cnt,
 		unsigned char **pstart, unsigned char **pend)
 {
 	unsigned char *dcd_end;
 	unsigned m_length;
-#define cvt_dest_to_src_old		(((unsigned char *)&hdr->dcd_ptr) - hdr->dcd_ptr_ptr)
+#define cvt_dest_to_src_old		(((unsigned char *)&hdr->dcd) - hdr->dcd_ptr_ptr)
 	unsigned char* dcd;
 	unsigned val;
 	unsigned char* file_end = file_start + cnt;
 
-	if (!hdr->dcd_ptr) {
-		printf("No dcd table, barker=%x\n", hdr->app_barker);
-		*pstart = *pend = ((unsigned char *)hdr) + sizeof(struct imx_flash_header_v1);
+	if (!hdr->dcd) {
+		printf("No dcd table, barker=%x\n", hdr->app_code_barker);
+		*pstart = *pend = ((unsigned char *)hdr) + sizeof(struct imx_flash_header);
 		return 0; /* nothing to do */
 	}
 
-	dcd = hdr->dcd_ptr + cvt_dest_to_src_old;
+	dcd = hdr->dcd + cvt_dest_to_src_old;
 
 	if ((dcd < file_start) || ((dcd + 8) > file_end)) {
-		printf("bad dcd_ptr %08x\n", hdr->dcd_ptr);
+		printf("bad dcd_ptr %08x\n", hdr->dcd);
 		return -1;
 	}
 
@@ -790,7 +759,7 @@ static int get_dcd_range_old(struct imx_flash_header_v1 *hdr,
 }
 
 static int write_dcd_table_old(struct libusb_device_handle *h, struct usb_id *p_id,
-		struct imx_flash_header_v1 *hdr, unsigned char *file_start, unsigned cnt)
+		struct imx_flash_header *hdr, unsigned char *file_start, unsigned cnt)
 {
 	unsigned val;
 	unsigned char *dcd_end;
@@ -876,16 +845,16 @@ err:
 
 static int is_header(struct usb_id *p_id, unsigned char *p)
 {
-	struct imx_flash_header_v1 *ohdr = (struct imx_flash_header_v1 *)p;
+	struct imx_flash_header *ohdr = (struct imx_flash_header *)p;
 	struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
 
 	switch (p_id->mach_id->header_type) {
 	case HDR_MX51:
-		if (ohdr->app_barker == 0xb1)
+		if (ohdr->app_code_barker == 0xb1)
 			return 1;
 		break;
 	case HDR_MX53:
-		if (hdr->barker == IVT_BARKER)
+		if (hdr->header.tag == TAG_IVT_HEADER && hdr->header.version == IVT_VERSION)
 			return 1;
 	}
 
@@ -895,14 +864,14 @@ static int is_header(struct usb_id *p_id, unsigned char *p)
 static int perform_dcd(struct libusb_device_handle *h, struct usb_id *p_id, unsigned char *p,
 		unsigned char *file_start, unsigned cnt)
 {
-	struct imx_flash_header_v1 *ohdr = (struct imx_flash_header_v1 *)p;
+	struct imx_flash_header *ohdr = (struct imx_flash_header *)p;
 	struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
 	int ret = 0;
 
 	switch (p_id->mach_id->header_type) {
 	case HDR_MX51:
 		ret = write_dcd_table_old(h, p_id, ohdr, file_start, cnt);
-		ohdr->dcd_ptr = 0;
+		ohdr->dcd = 0;
 
 		break;
 	case HDR_MX53:
@@ -918,13 +887,13 @@ static int perform_dcd(struct libusb_device_handle *h, struct usb_id *p_id, unsi
 static int clear_dcd_ptr(struct libusb_device_handle *h, struct usb_id *p_id,
 		unsigned char *p, unsigned char *file_start, unsigned cnt)
 {
-	struct imx_flash_header_v1 *ohdr = (struct imx_flash_header_v1 *)p;
+	struct imx_flash_header *ohdr = (struct imx_flash_header *)p;
 	struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
 
 	switch (p_id->mach_id->header_type) {
 	case HDR_MX51:
-		printf("clear dcd_ptr=0x%08x\n", ohdr->dcd_ptr);
-		ohdr->dcd_ptr = 0;
+		printf("clear dcd_ptr=0x%08x\n", ohdr->dcd);
+		ohdr->dcd = 0;
 		break;
 	case HDR_MX53:
 		printf("clear dcd_ptr=0x%08x\n", hdr->dcd_ptr);
@@ -942,13 +911,13 @@ static int get_dl_start(struct usb_id *p_id, unsigned char *p, unsigned char *fi
 	switch (p_id->mach_id->header_type) {
 	case HDR_MX51:
 	{
-		struct imx_flash_header_v1 *ohdr = (struct imx_flash_header_v1 *)p;
+		struct imx_flash_header *ohdr = (struct imx_flash_header *)p;
 		unsigned char *dcd_end;
 		unsigned char* dcd;
 		int err = get_dcd_range_old(ohdr, file_start, cnt, &dcd, &dcd_end);
 
-		*dladdr = ohdr->app_dest_ptr;
-		*header_addr = ohdr->dcd_ptr_ptr - offsetof(struct imx_flash_header_v1, dcd_ptr);
+		*dladdr = ohdr->app_dest;
+		*header_addr = ohdr->dcd_ptr_ptr - offsetof(struct imx_flash_header, dcd);
 		*plugin = 0;
 		if (err >= 0)
 			*max_length = dcd_end[0] | (dcd_end[1] << 8) | (dcd_end[2] << 16) | (dcd_end[3] << 24);
@@ -960,18 +929,18 @@ static int get_dl_start(struct usb_id *p_id, unsigned char *p, unsigned char *fi
 		unsigned char *bd;
 		struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
 
-		*dladdr = hdr->self_ptr;
-		*header_addr = hdr->self_ptr;
+		*dladdr = hdr->self;
+		*header_addr = hdr->self;
 		bd = hdr->boot_data_ptr + cvt_dest_to_src;
 		if ((bd < file_start) || ((bd + 4) > file_end)) {
 			printf("bad boot_data_ptr %08x\n", hdr->boot_data_ptr);
 			return -1;
 		}
 
-		*dladdr = ((struct boot_data *)bd)->dest;
-		*max_length = ((struct boot_data *)bd)->image_len;
-		*plugin = ((struct boot_data *)bd)->plugin;
-		((struct boot_data *)bd)->plugin = 0;
+		*dladdr = ((struct imx_boot_data *)bd)->start;
+		*max_length = ((struct imx_boot_data *)bd)->size;
+		*plugin = ((struct imx_boot_data *)bd)->plugin;
+		((struct imx_boot_data *)bd)->plugin = 0;
 
 		hdr->boot_data_ptr = 0;
 
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
new file mode 100644
index 0000000..e986545
--- /dev/null
+++ b/scripts/imx/imx.h
@@ -0,0 +1,52 @@
+/*
+ * ============================================================================
+ * i.MX flash header v1 handling. Found on i.MX35 and i.MX51
+ * ============================================================================
+ */
+#define DCD_BARKER       0xb17219e9
+
+struct imx_flash_header {
+	uint32_t app_code_jump_vector;
+	uint32_t app_code_barker;
+	uint32_t app_code_csf;
+	uint32_t dcd_ptr_ptr;
+	uint32_t super_root_key;
+	uint32_t dcd;
+	uint32_t app_dest;
+	uint32_t dcd_barker;
+	uint32_t dcd_block_len;
+} __attribute__((packed));
+
+struct imx_boot_data {
+	uint32_t start;
+	uint32_t size;
+	uint32_t plugin;
+} __attribute__((packed));
+
+#define TAG_IVT_HEADER	0xd1
+#define IVT_VERSION	0x40
+#define TAG_DCD_HEADER	0xd2
+#define DCD_VERSION	0x40
+#define TAG_WRITE	0xcc
+#define TAG_CHECK	0xcf
+
+struct imx_ivt_header {
+	uint8_t tag;
+	uint16_t length;
+	uint8_t version;
+} __attribute__((packed));
+
+struct imx_flash_header_v2 {
+	struct imx_ivt_header header;
+
+	uint32_t entry;
+	uint32_t reserved1;
+	uint32_t dcd_ptr;
+	uint32_t boot_data_ptr;
+	uint32_t self;
+	uint32_t csf;
+	uint32_t reserved2;
+
+	struct imx_boot_data boot_data;
+	struct imx_ivt_header dcd_header;
+} __attribute__((packed));
\ No newline at end of file
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
