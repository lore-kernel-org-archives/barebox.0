Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwmYF-0008VM-CU
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 10:57:49 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Mon,  3 Sep 2018 12:57:13 +0200
Message-Id: <20180903105715.24263-4-m.niestroj@grinn-global.com>
In-Reply-To: <20180903105715.24263-1-m.niestroj@grinn-global.com>
References: <20180903105715.24263-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH 3/5] scripts: imx: Support encrypted boot with HABv4
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

.imxcfg configuration files support few more commands, all starting
with "hab_encrypt" string. That way it is possible to easily ignore
these commands, when image encryption was not requested. Hence, we can
use single .imxcfg file to generate signed and encrypted images in the
same build.

Images are encrypted in place by Freescale Code Signing Tool (cst),
using Data Encryption Key (DEK). This key needs to be encapsulated
by processor's hardware encryption engine to produce DEK blob, which
is unique for each device. DEK blob needs to be part of CSF area,
so we make enough space on the end of image to simply append it later,
e.g. during device flash procedure.

Introduced code was developed and tested on NXP i.MX6UL platform.

Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
Changes rfc -> v1:
 * Do not use fixed DEK path from Kconfig, but generate DEK path based
   on output filename. This supports parallel builds and allows CST tool
   to generate new DEK for every board.
 * Explicitly specify DEK size in .imxcfg

 .../mach-imx/include/mach/habv4-imx6-gencsf.h |  13 ++
 arch/arm/mach-imx/include/mach/imx-header.h   |  10 ++
 scripts/imx/imx-image.c                       |  27 ++-
 scripts/imx/imx.c                             | 158 +++++++++++++++++-
 4 files changed, 197 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
index 0649caa0c..581887960 100644
--- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
+++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
@@ -43,3 +43,16 @@ hab [Authenticate Data]
 hab Verification index = 2
 
 hab_blocks
+
+hab_encrypt [Install Secret Key]
+hab_encrypt Verification index = 0
+hab_encrypt Target index = 0
+hab_encrypt_key
+hab_encrypt_key_length 256
+hab_encrypt_blob_address
+
+hab_encrypt [Decrypt Data]
+hab_encrypt Verification index = 0
+hab_encrypt Mac Bytes = 16
+
+hab_encrypt_blocks
diff --git a/arch/arm/mach-imx/include/mach/imx-header.h b/arch/arm/mach-imx/include/mach/imx-header.h
index c9b2a5881..3c92aecf1 100644
--- a/arch/arm/mach-imx/include/mach/imx-header.h
+++ b/arch/arm/mach-imx/include/mach/imx-header.h
@@ -4,6 +4,14 @@
 #include <linux/types.h>
 
 #define HEADER_LEN 0x1000	/* length of the blank area + IVT + DCD */
+#define CSF_LEN 0x2000		/* length of the CSF (needed for HAB) */
+
+#define DEK_BLOB_HEADER 8	/* length of DEK blob header */
+#define DEK_BLOB_KEY 32		/* length of DEK blob AES-256 key */
+#define DEK_BLOB_MAC 16		/* length of DEK blob MAC */
+
+/* DEK blob length excluding DEK itself */
+#define DEK_BLOB_OVERHEAD (DEK_BLOB_HEADER + DEK_BLOB_KEY + DEK_BLOB_MAC)
 
 /*
  * ============================================================================
@@ -94,6 +102,8 @@ struct config_data {
 	int (*nop)(const struct config_data *data);
 	int csf_space;
 	char *csf;
+	int encrypt_image;
+	size_t dek_size;
 };
 
 #define MAX_RECORDS_DCD_V2 1024
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 452a544bc..5ed64af47 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -43,7 +43,6 @@
  * HEADER_SIZE
  */
 #define MAX_DCD ((HEADER_LEN - FLASH_HEADER_OFFSET - sizeof(struct imx_flash_header_v2)) / sizeof(u32))
-#define CSF_LEN 0x2000		/* length of the CSF (needed for HAB) */
 
 static uint32_t dcdtable[MAX_DCD];
 static int curdcd;
@@ -533,6 +532,7 @@ static int hab_sign(struct config_data *data)
 	struct stat s;
 	char *cst;
 	void *buf;
+	size_t csf_space = CSF_LEN;
 
 	cst = getenv("CST");
 	if (!cst)
@@ -613,15 +613,23 @@ static int hab_sign(struct config_data *data)
 		return -errno;
 	}
 
-	buf = malloc(CSF_LEN);
+	/*
+	 * DEK blob needs to be part of CSF area, in order to properly
+	 * load by ROM code. Make space to simply concatenate DEK blob
+	 * to the end of image during device flashing procedure.
+	 */
+	if (data->encrypt_image)
+		csf_space -= (data->dek_size + DEK_BLOB_OVERHEAD);
+
+	buf = malloc(csf_space);
 	if (!buf)
 		return -ENOMEM;
 
-	memset(buf, 0x5a, CSF_LEN);
+	memset(buf, 0x5a, csf_space);
 
-	if (s.st_size > CSF_LEN) {
-		fprintf(stderr, "CSF file size exceeds maximum CSF len of %d bytes\n",
-			CSF_LEN);
+	if (s.st_size > csf_space) {
+		fprintf(stderr, "CSF file size exceeds maximum CSF space of %zu bytes\n",
+			csf_space);
 	}
 
 	ret = xread(fd, buf, s.st_size);
@@ -632,7 +640,7 @@ static int hab_sign(struct config_data *data)
 
 	outfd = open(data->outfile, O_WRONLY | O_APPEND);
 
-	ret = xwrite(outfd, buf, CSF_LEN);
+	ret = xwrite(outfd, buf, csf_space);
 	if (ret < 0) {
 		fprintf(stderr, "write failed: %s\n", strerror(errno));
 		return -errno;
@@ -707,7 +715,7 @@ int main(int argc, char *argv[])
 
 	prgname = argv[0];
 
-	while ((opt = getopt(argc, argv, "c:hf:o:bdus")) != -1) {
+	while ((opt = getopt(argc, argv, "c:hf:o:bduse")) != -1) {
 		switch (opt) {
 		case 'c':
 			configfile = optarg;
@@ -730,6 +738,9 @@ int main(int argc, char *argv[])
 		case 'u':
 			create_usb_image = 1;
 			break;
+		case 'e':
+			data.encrypt_image = 1;
+			break;
 		case 'h':
 			usage(argv[0]);
 		default:
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 21206387e..eeb9b69c0 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -22,6 +22,7 @@
 #include <string.h>
 #include <stdint.h>
 #include <errno.h>
+#include <sys/stat.h>
 #include <linux/kernel.h>
 #include <mach/imx_cpu_types.h>
 
@@ -29,6 +30,12 @@
 
 #define MAXARGS 32
 
+/*
+ * First word of bootloader image should be authenticated,
+ * encrypt the rest.
+ */
+#define ENCRYPT_OFFSET	(HEADER_LEN + 0x10)
+
 static int parse_line(char *line, char *argv[])
 {
 	int nargs = 0;
@@ -320,6 +327,7 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 	const char *type;
 	char *str;
 	int ret;
+	uint32_t signed_size = data->load_size;
 
 	if (!data->csf)
 		return -EINVAL;
@@ -329,15 +337,22 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 	else
 		type = argv[1];
 
+	/*
+	 * In case of encrypted image we reduce signed area to beginning
+	 * of encrypted area.
+	 */
+	if (data->encrypt_image)
+		signed_size = ENCRYPT_OFFSET;
+
 	if (!strcmp(type, "full")) {
 		ret = asprintf(&str, "Blocks = 0x%08x 0 %d \"%s\"\n",
-			       data->image_load_addr, data->load_size,
+			       data->image_load_addr, signed_size,
 			       data->outfile);
 	} else if (!strcmp(type, "from-dcdofs")) {
 		ret = asprintf(&str, "Blocks = 0x%08x 0x%x %d \"%s\"\n",
 			       data->image_load_addr + data->image_dcd_offset,
 			       data->image_dcd_offset,
-			       data->load_size - data->image_dcd_offset,
+			       signed_size - data->image_dcd_offset,
 			       data->outfile);
 	} else if (!strcmp(type, "skip-mbr")) {
 		ret = asprintf(&str,
@@ -345,7 +360,7 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 			       "         0x%08x 512 %d \"%s\"\n",
 			       data->image_load_addr, data->outfile,
 			       data->image_load_addr + 512,
-			       data->load_size - 512, data->outfile);
+			       signed_size - 512, data->outfile);
 	} else {
 		fprintf(stderr, "Invalid hab_blocks option: %s\n", type);
 		return -EINVAL;
@@ -361,6 +376,128 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 	return 0;
 }
 
+static int do_hab_encrypt(struct config_data *data, int argc, char *argv[])
+{
+	if (!data->encrypt_image)
+		return 0;
+
+	return do_hab(data, argc, argv);
+}
+
+static int do_hab_encrypt_key(struct config_data *data, int argc, char *argv[])
+{
+	char *str;
+	char *dekfile;
+	int ret;
+
+	if (!data->csf)
+		return -EINVAL;
+
+	if (!data->encrypt_image)
+		return 0;
+
+	ret = asprintf(&dekfile, "%s.dek", data->outfile);
+	if (ret < 0)
+		return -ENOMEM;
+
+	ret = asprintf(&str, "Key = \"%s\"\n", dekfile);
+	if (ret < 0)
+		return -ENOMEM;
+
+	ret = hab_add_str(data, str);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int do_hab_encrypt_key_length(struct config_data *data, int argc,
+				     char *argv[])
+{
+	unsigned int dek_bits;
+	char *str;
+	int ret;
+
+	if (!data->csf)
+		return -EINVAL;
+
+	if (!data->encrypt_image)
+		return 0;
+
+	if (argc < 2)
+		return -EINVAL;
+
+	dek_bits = strtoul(argv[1], NULL, 0);
+
+	if (dek_bits != 128 && dek_bits != 192 && dek_bits != 256) {
+		fprintf(stderr, "wrong dek size (%u)\n", dek_bits);
+		return -EINVAL;
+	}
+
+	data->dek_size = dek_bits / 8;
+
+	ret = asprintf(&str, "Key Length = %u\n", dek_bits);
+	if (ret < 0)
+		return -ENOMEM;
+
+	ret = hab_add_str(data, str);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int do_hab_encrypt_blob_address(struct config_data *data, int argc,
+				       char *argv[])
+{
+	char *str;
+	int ret;
+
+	if (!data->csf)
+		return -EINVAL;
+
+	if (!data->encrypt_image)
+		return 0;
+
+	ret = asprintf(&str,
+		       "Blob address = 0x%08zx\n",
+		       data->image_load_addr + data->load_size + CSF_LEN -
+				(DEK_BLOB_OVERHEAD + data->dek_size));
+	if (ret < 0)
+		return -ENOMEM;
+
+	ret = hab_add_str(data, str);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int do_hab_encrypt_blocks(struct config_data *data, int argc,
+				 char *argv[])
+{
+	char *str;
+	int ret;
+
+	if (!data->csf)
+		return -EINVAL;
+
+	if (!data->encrypt_image)
+		return 0;
+
+	ret = asprintf(&str, "Blocks = 0x%08x 0x%x %d \"%s\"\n",
+		       data->image_load_addr + ENCRYPT_OFFSET, ENCRYPT_OFFSET,
+		       data->load_size - ENCRYPT_OFFSET, data->outfile);
+	if (ret < 0)
+		return -ENOMEM;
+
+	ret = hab_add_str(data, str);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 static int do_super_root_key(struct config_data *data, int argc, char *argv[])
 {
 	int len;
@@ -424,6 +561,21 @@ struct command cmds[] = {
 	}, {
 		.name = "hab_blocks",
 		.parse = do_hab_blocks,
+	}, {
+		.name = "hab_encrypt",
+		.parse = do_hab_encrypt,
+	}, {
+		.name = "hab_encrypt_key",
+		.parse = do_hab_encrypt_key,
+	}, {
+		.name = "hab_encrypt_key_length",
+		.parse = do_hab_encrypt_key_length,
+	}, {
+		.name = "hab_encrypt_blob_address",
+		.parse = do_hab_encrypt_blob_address,
+	}, {
+		.name = "hab_encrypt_blocks",
+		.parse = do_hab_encrypt_blocks,
 	}, {
 		.name = "super_root_key",
 		.parse = do_super_root_key,
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
