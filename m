Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bbZFm-0007NA-Bg
 for barebox@lists.infradead.org; Sun, 21 Aug 2016 20:21:59 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 21 Aug 2016 22:18:37 +0200
Message-Id: <1471810717-1371-2-git-send-email-akurz@blala.de>
In-Reply-To: <1471810717-1371-1-git-send-email-akurz@blala.de>
References: <1471810717-1371-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 2/2] scripts: imx-usb-loader: structured DCD v1 element access
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

DCD v1 elements are encoded little endian.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 scripts/imx/imx-usb-loader.c | 19 +++++++++++--------
 scripts/imx/imx.h            |  6 ++++++
 2 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 9f25ca6..db74910 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -32,6 +32,7 @@
 #include <stdlib.h>
 #include <libusb.h>
 #include <getopt.h>
+#include <endian.h>
 #include <arpa/inet.h>
 #include <linux/kernel.h>
 
@@ -872,7 +873,6 @@ static int get_dcd_range_old(const struct imx_flash_header *hdr,
 static int write_dcd_table_old(const struct imx_flash_header *hdr,
 			       const unsigned char *file_start, unsigned cnt)
 {
-	unsigned val;
 	unsigned char *dcd_end;
 	unsigned char* dcd;
 	int err = get_dcd_range_old(hdr, file_start, cnt, &dcd, &dcd_end);
@@ -882,23 +882,26 @@ static int write_dcd_table_old(const struct imx_flash_header *hdr,
 	printf("writing DCD table...\n");
 
 	while (dcd < dcd_end) {
-		unsigned type = (dcd[0] << 0) | (dcd[1] << 8) | (dcd[2] << 16) | (dcd[3] << 24);
-		unsigned addr = (dcd[4] << 0) | (dcd[5] << 8) | (dcd[6] << 16) | (dcd[7] << 24);
-		val = (dcd[8] << 0) | (dcd[9] << 8) | (dcd[10] << 16) | (dcd[11] << 24);
-		dcd += 12;
+		struct imx_dcd_rec_v1 *rec = (struct imx_dcd_rec_v1 *) dcd;
+		unsigned type = le32toh(rec->type);
+		dcd += sizeof *rec;
 
 		switch (type) {
 		case 1:
 		case 2:
 		case 4:
 			if (verbose > 1)
-				printf("type=%08x *0x%08x = 0x%08x\n", type, addr, val);
-			err = write_memory(addr, val, type);
+				printf("type=%08x *0x%08x = 0x%08x\n", type,
+					le32toh(rec->addr),
+					le32toh(rec->val));
+			err = write_memory(le32toh(rec->addr),
+					   le32toh(rec->val), type);
 			if (err < 0)
 				return err;
 			break;
 		default:
-			printf("!!!unknown type=%08x *0x%08x = 0x%08x\n", type, addr, val);
+			printf("WARNING: unknown DCD type=%08x ignored\n",
+			       type);
 		}
 	}
 
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index 8db7e7b..64ebdce 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -26,6 +26,12 @@ struct imx_boot_data {
 	uint32_t plugin;
 } __attribute__((packed));
 
+struct imx_dcd_rec_v1 {
+	uint32_t type;
+	uint32_t addr;
+	uint32_t val;
+} __attribute__((packed));
+
 #define TAG_IVT_HEADER	0xd1
 #define IVT_VERSION	0x40
 #define TAG_DCD_HEADER	0xd2
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
