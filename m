Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQazC-0004Li-2L
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 16:08:38 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Wed,  6 Jun 2018 18:08:08 +0200
Message-Id: <20180606160809.16233-5-m.niestroj@grinn-global.com>
In-Reply-To: <20180606160809.16233-1-m.niestroj@grinn-global.com>
References: <20180606160809.16233-1-m.niestroj@grinn-global.com>
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
Subject: [RFC PATCH 4/5] scripts: imx: Support encrypted boot with HABv4
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
Extending table with lot of hab_encrypt* commands is not super nice.
I am open to better ideas here!

 arch/arm/mach-imx/Kconfig                     |  11 ++
 .../mach-imx/include/mach/habv4-imx6-gencsf.h |  14 ++
 scripts/Makefile.lib                          |   3 +-
 scripts/imx/imx-image.c                       |  28 ++-
 scripts/imx/imx.c                             | 161 +++++++++++++++++-
 scripts/imx/imx.h                             |   9 +
 6 files changed, 214 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 29ebc654c..9822a7e8d 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -794,6 +794,17 @@ config HABV4_IMG_CRT_PEM
 	  This file will be inserted into the Command Sequence File
 	  (CSF) when using the CSF template that comes with barebox.
 
+config HABV4_DEK
+	string "Path to DEK"
+	default "../crts/dek"
+	help
+	  Path to the Data Encryption Key (DEK), produced by the
+	  Freescale Code Signing Tool (cst).
+
+	  Image will be encrypted using this key and enough space will
+	  be reserved on the end of the image, so DEK blob (unique for
+	  each device) can be simply appended during flashing.
+
 endif
 
 config HABV3
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
index 0649caa0c..b4fdf512b 100644
--- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
+++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
@@ -6,6 +6,7 @@
  * CONFIG_HABV4_TABLE_BIN
  * CONFIG_HABV4_CSF_CRT_PEM
  * CONFIG_HABV4_IMG_CRT_PEM
+ * CONFIG_HABV4_DEK
  */
 
 hab [Header]
@@ -43,3 +44,16 @@ hab [Authenticate Data]
 hab Verification index = 2
 
 hab_blocks
+
+hab_encrypt [Install Secret Key]
+hab_encrypt Verification index = 0
+hab_encrypt Target index = 0
+hab_encrypt_key CONFIG_HABV4_DEK
+hab_encrypt_key_length
+hab_encrypt_blob_address
+
+hab_encrypt [Decrypt Data]
+hab_encrypt Verification index = 0
+hab_encrypt Mac Bytes = 16
+
+hab_encrypt_blocks
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 272b5981e..9e432daee 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -432,7 +432,8 @@ imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
       -DCONFIG_HABV3_IMG_CRT_DER=\"$(CONFIG_HABV3_IMG_CRT_DER)\" \
       -DCONFIG_HABV4_TABLE_BIN=\"$(CONFIG_HABV4_TABLE_BIN)\" \
       -DCONFIG_HABV4_CSF_CRT_PEM=\"$(CONFIG_HABV4_CSF_CRT_PEM)\" \
-      -DCONFIG_HABV4_IMG_CRT_PEM=\"$(CONFIG_HABV4_IMG_CRT_PEM)\"
+      -DCONFIG_HABV4_IMG_CRT_PEM=\"$(CONFIG_HABV4_IMG_CRT_PEM)\" \
+      -DCONFIG_HABV4_DEK=\"$(CONFIG_HABV4_DEK)\"
 
 dcd-tmp = $(subst $(comma),_,$(dot-target).dcd.tmp)
 
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 9688a8ce1..eef6e0902 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -36,7 +36,6 @@
 #include <include/filetype.h>
 
 #define MAX_DCD 1024
-#define CSF_LEN 0x2000		/* length of the CSF (needed for HAB) */
 
 static uint32_t dcdtable[MAX_DCD];
 static int curdcd;
@@ -521,6 +520,7 @@ static int hab_sign(struct config_data *data)
 	struct stat s;
 	char *cst;
 	void *buf;
+	size_t csf_space = CSF_LEN;
 
 	cst = getenv("CST");
 	if (!cst)
@@ -601,15 +601,23 @@ static int hab_sign(struct config_data *data)
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
@@ -620,7 +628,7 @@ static int hab_sign(struct config_data *data)
 
 	outfd = open(data->outfile, O_WRONLY | O_APPEND);
 
-	ret = xwrite(outfd, buf, CSF_LEN);
+	ret = xwrite(outfd, buf, csf_space);
 	if (ret < 0) {
 		fprintf(stderr, "write failed: %s\n", strerror(errno));
 		return -errno;
@@ -685,7 +693,7 @@ int main(int argc, char *argv[])
 
 	prgname = argv[0];
 
-	while ((opt = getopt(argc, argv, "c:hf:o:bdus")) != -1) {
+	while ((opt = getopt(argc, argv, "c:hf:o:bduse")) != -1) {
 		switch (opt) {
 		case 'c':
 			configfile = optarg;
@@ -708,6 +716,9 @@ int main(int argc, char *argv[])
 		case 'u':
 			create_usb_image = 1;
 			break;
+		case 'e':
+			data.encrypt_image = 1;
+			break;
 		case 'h':
 			usage(argv[0]);
 		default:
@@ -750,6 +761,7 @@ int main(int argc, char *argv[])
 	 */
 	data.load_size = roundup(data.image_size + HEADER_LEN, 0x1000);
 
+
 	ret = parse_config(&data, configfile);
 	if (ret)
 		exit(1);
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index b47671f14..e4deaff5b 100644
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
@@ -313,6 +320,7 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 	const char *type;
 	char *str;
 	int ret;
+	uint32_t signed_size = data->load_size;
 
 	if (!data->csf)
 		return -EINVAL;
@@ -322,15 +330,22 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
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
@@ -338,7 +353,7 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 			       "         0x%08x 512 %d \"%s\"\n",
 			       data->image_load_addr, data->outfile,
 			       data->image_load_addr + 512,
-			       data->load_size - 512, data->outfile);
+			       signed_size - 512, data->outfile);
 	} else {
 		fprintf(stderr, "Invalid hab_blocks option: %s\n", type);
 		return -EINVAL;
@@ -354,6 +369,131 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
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
+	struct stat s;
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
+	/* Strip quotation marks */
+	dekfile = argv[1] + 1;
+	dekfile[strlen(dekfile) - 1] = '\0';
+
+	ret = stat(dekfile, &s);
+	if (ret) {
+		fprintf(stderr, "failed to stat(%s) DEK: (%d) %s\n",
+			dekfile, errno, strerror(errno));
+		return -errno;
+	}
+
+	data->dek_size = s.st_size;
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
+	char *str;
+	int ret;
+
+	if (!data->csf)
+		return -EINVAL;
+
+	if (!data->encrypt_image)
+		return 0;
+
+	if (!data->dek_size)
+		return -EINVAL;
+
+	ret = asprintf(&str, "Key Length = %zu\n", data->dek_size * 8);
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
@@ -417,6 +557,21 @@ struct command cmds[] = {
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
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index c7677f81a..efe8c7289 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -1,6 +1,13 @@
 
 #define HEADER_LEN 0x1000	/* length of the blank area + IVT + DCD */
+#define CSF_LEN 0x2000		/* length of the CSF (needed for HAB) */
 
+#define DEK_BLOB_HEADER 8	/* length of DEK blob header */
+#define DEK_BLOB_KEY 32		/* length of DEK blob AES-256 key */
+#define DEK_BLOB_MAC 16		/* length of DEK blob MAC */
+
+/* DEK blob length excluding DEK itself */
+#define DEK_BLOB_OVERHEAD (DEK_BLOB_HEADER + DEK_BLOB_KEY + DEK_BLOB_MAC)
 /*
  * ============================================================================
  * i.MX flash header v1 handling. Found on i.MX35 and i.MX51
@@ -80,6 +87,8 @@ struct config_data {
 	int (*nop)(const struct config_data *data);
 	int csf_space;
 	char *csf;
+	int encrypt_image;
+	size_t dek_size;
 };
 
 #define MAX_RECORDS_DCD_V2 1024
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
