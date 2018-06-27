Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXysx-0000Gp-92
 for barebox@lists.infradead.org; Wed, 27 Jun 2018 01:04:41 +0000
Received: by mail-pl0-x242.google.com with SMTP id c41-v6so168354plj.10
 for <barebox@lists.infradead.org>; Tue, 26 Jun 2018 18:04:34 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Jun 2018 18:04:08 -0700
Message-Id: <20180627010412.20646-7-andrew.smirnov@gmail.com>
In-Reply-To: <20180627010412.20646-1-andrew.smirnov@gmail.com>
References: <20180627010412.20646-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 06/10] ARM: i.MX: Move i.MX header definitions to mach-imx
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move i.MX header definitions from scripts to mach-imx in order to make
it availible to both script and bootloader code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/imx-header.h | 118 ++++++++++++++++++++
 scripts/imx/imx.h                           | 114 +------------------
 2 files changed, 119 insertions(+), 113 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/imx-header.h

diff --git a/arch/arm/mach-imx/include/mach/imx-header.h b/arch/arm/mach-imx/include/mach/imx-header.h
new file mode 100644
index 000000000..4fedba7ad
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx-header.h
@@ -0,0 +1,118 @@
+#ifndef __IMX_HEADER_H__
+#define __IMX_HEADER_H__
+
+#define HEADER_LEN 0x1000	/* length of the blank area + IVT + DCD */
+
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
+struct imx_dcd_rec_v1 {
+	uint32_t type;
+	uint32_t addr;
+	uint32_t val;
+} __attribute__((packed));
+
+#define TAG_IVT_HEADER	0xd1
+#define IVT_VERSION	0x40
+#define TAG_DCD_HEADER	0xd2
+#define DCD_VERSION	0x40
+#define TAG_UNLOCK	0xb2
+#define TAG_NOP		0xc0
+#define TAG_WRITE	0xcc
+#define TAG_CHECK	0xcf
+#define PARAMETER_FLAG_MASK	(1 << 3)
+#define PARAMETER_FLAG_SET	(1 << 4)
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
+
+struct config_data {
+	uint32_t image_load_addr;
+	uint32_t image_dcd_offset;
+	uint32_t image_size;
+	uint32_t load_size;
+	char *outfile;
+	char *srkfile;
+	int header_version;
+	off_t header_gap;
+	uint32_t first_opcode;
+	int cpu_type;
+	int (*check)(const struct config_data *data, uint32_t cmd,
+		     uint32_t addr, uint32_t mask);
+	int (*write_mem)(const struct config_data *data, uint32_t addr,
+			 uint32_t val, int width, int set_bits, int clear_bits);
+	int (*nop)(const struct config_data *data);
+	int csf_space;
+	char *csf;
+};
+
+#define MAX_RECORDS_DCD_V2 1024
+struct imx_dcd_v2_write_rec {
+	uint32_t addr;
+	uint32_t val;
+} __attribute__((packed));
+
+struct imx_dcd_v2_write {
+	uint8_t tag;
+	uint16_t length;
+	uint8_t param;
+	struct imx_dcd_v2_write_rec data[MAX_RECORDS_DCD_V2];
+} __attribute__((packed));
+
+struct imx_dcd_v2_check {
+	uint8_t tag;
+	uint16_t length;
+	uint8_t param;
+	uint32_t addr;
+	uint32_t mask;
+	uint32_t count;
+} __attribute__((packed));
+
+enum imx_dcd_v2_check_cond {
+	until_all_bits_clear = 0, /* until ((*address & mask) == 0) { ...} */
+	until_any_bit_clear = 1, /* until ((*address & mask) != mask) { ...} */
+	until_all_bits_set = 2, /* until ((*address & mask) == mask) { ...} */
+	until_any_bit_set = 3, /* until ((*address & mask) != 0) { ...} */
+} __attribute__((packed));
+
+#endif
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index 92a3fd316..20fb1e876 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -1,116 +1,4 @@
 
-#define HEADER_LEN 0x1000	/* length of the blank area + IVT + DCD */
-
-/*
- * ============================================================================
- * i.MX flash header v1 handling. Found on i.MX35 and i.MX51
- * ============================================================================
- */
-#define DCD_BARKER       0xb17219e9
-
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
-
-struct imx_boot_data {
-	uint32_t start;
-	uint32_t size;
-	uint32_t plugin;
-} __attribute__((packed));
-
-struct imx_dcd_rec_v1 {
-	uint32_t type;
-	uint32_t addr;
-	uint32_t val;
-} __attribute__((packed));
-
-#define TAG_IVT_HEADER	0xd1
-#define IVT_VERSION	0x40
-#define TAG_DCD_HEADER	0xd2
-#define DCD_VERSION	0x40
-#define TAG_UNLOCK	0xb2
-#define TAG_NOP		0xc0
-#define TAG_WRITE	0xcc
-#define TAG_CHECK	0xcf
-#define PARAMETER_FLAG_MASK	(1 << 3)
-#define PARAMETER_FLAG_SET	(1 << 4)
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
-struct config_data {
-	uint32_t image_load_addr;
-	uint32_t image_dcd_offset;
-	uint32_t image_size;
-	uint32_t load_size;
-	char *outfile;
-	char *srkfile;
-	int header_version;
-	off_t header_gap;
-	uint32_t first_opcode;
-	int cpu_type;
-	int (*check)(const struct config_data *data, uint32_t cmd,
-		     uint32_t addr, uint32_t mask);
-	int (*write_mem)(const struct config_data *data, uint32_t addr,
-			 uint32_t val, int width, int set_bits, int clear_bits);
-	int (*nop)(const struct config_data *data);
-	int csf_space;
-	char *csf;
-};
-
-#define MAX_RECORDS_DCD_V2 1024
-struct imx_dcd_v2_write_rec {
-	uint32_t addr;
-	uint32_t val;
-} __attribute__((packed));
-
-struct imx_dcd_v2_write {
-	uint8_t tag;
-	uint16_t length;
-	uint8_t param;
-	struct imx_dcd_v2_write_rec data[MAX_RECORDS_DCD_V2];
-} __attribute__((packed));
-
-struct imx_dcd_v2_check {
-	uint8_t tag;
-	uint16_t length;
-	uint8_t param;
-	uint32_t addr;
-	uint32_t mask;
-	uint32_t count;
-} __attribute__((packed));
-
-enum imx_dcd_v2_check_cond {
-	until_all_bits_clear = 0, /* until ((*address & mask) == 0) { ...} */
-	until_any_bit_clear = 1, /* until ((*address & mask) != mask) { ...} */
-	until_all_bits_set = 2, /* until ((*address & mask) == mask) { ...} */
-	until_any_bit_set = 3, /* until ((*address & mask) != 0) { ...} */
-} __attribute__((packed));
+#include <mach/imx-header.h>
 
 int parse_config(struct config_data *data, const char *filename);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
