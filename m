Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZE2-00049i-1t
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 09:24:20 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  5 Aug 2019 11:23:47 +0200
Message-Id: <25006ae222b40009eb696df24ced0850e41f32e9.1564997015.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
References: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2 08/16] scripts: imx: support signing for i.MX8MQ
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Implement signing of the PBL for i.MX8MQ.
The imagesize is also modified to i.MX8MQ to only contain the PBL.
This obsoletes the max_load_size, which is kept for other boards
currently using it.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx-header.h |  2 +-
 images/Makefile.imx                         |  8 +++-
 scripts/imx/imx-image.c                     | 64 ++++++++++++++++++----
 scripts/imx/imx.c                           | 15 ++++-
 4 files changed, 76 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx-header.h b/arch/arm/mach-imx/include/mach/imx-header.h
index 50584bb..dc8e2ee 100644
--- a/arch/arm/mach-imx/include/mach/imx-header.h
+++ b/arch/arm/mach-imx/include/mach/imx-header.h
@@ -98,6 +98,7 @@ struct config_data {
 	uint32_t image_size;
 	uint32_t max_load_size;
 	uint32_t load_size;
+	uint32_t pbl_code_size;
 	char *outfile;
 	char *srkfile;
 	int header_version;
@@ -111,6 +112,7 @@ struct config_data {
 	int (*nop)(const struct config_data *data);
 	int csf_space;
 	char *csf;
+	int sign_image;
 	char *signed_hdmi_firmware_file;
 	int encrypt_image;
 	size_t dek_size;
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 42c194b..76beccb 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -8,6 +8,14 @@
 $(obj)/%.imximg: $(obj)/% FORCE
 	$(call if_changed,imx_image,$(CFG_$(@F)),)
 
+$(obj)/%.pimximg: $(obj)/% FORCE
+	$(call if_changed,imx_image,$(CFG_$(patsubst %.pimximg,%.imximg,$(@F))),\
+	-p $($(patsubst $(obj)/%.pblb,PBL_MEMORY_SIZE_%,$<)))
+
+$(obj)/%.psimximg: $(obj)/% FORCE
+	$(call if_changed,imx_image,$(CFG_$(patsubst %.psimximg,%.imximg,$(@F))),-s \
+	-p $($(patsubst $(obj)/%.pblb,PBL_MEMORY_SIZE_%,$<)))
+
 $(obj)/%.simximg: $(obj)/% FORCE
 	$(call if_changed,imx_image,$(CFG_$(patsubst %.simximg,%.imximg,$(@F))),-s)
 
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 6a258bd..a9323f8 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -315,6 +315,16 @@ static size_t add_header_v2(const struct config_data *data, void *buf)
 	uint32_t loadaddr = data->image_load_addr;
 	uint32_t imagesize = data->load_size;
 
+	if (data->pbl_code_size) {
+		/*
+		 * Restrict the imagesize to the PBL if given.
+		 * Also take the alignment for CSF into account.
+		 */
+		imagesize = roundup(data->pbl_code_size + HEADER_LEN, 0x4);
+		if (data->csf)
+			imagesize = roundup(imagesize, 0x1000);
+	}
+
 	buf += offset;
 	hdr = buf;
 
@@ -333,14 +343,22 @@ static size_t add_header_v2(const struct config_data *data, void *buf)
 	hdr->self		= loadaddr + offset;
 
 	hdr->boot_data.start	= loadaddr;
-	if (data->max_load_size && imagesize > data->max_load_size)
+	if (!data->csf && data->max_load_size
+	    && imagesize > data->max_load_size)
 		hdr->boot_data.size	= data->max_load_size;
 	else
 		hdr->boot_data.size	= imagesize;
 
-	if (data->csf) {
+	if (data->sign_image) {
 		hdr->csf = loadaddr + imagesize;
 		hdr->boot_data.size += CSF_LEN;
+	} else if (data->pbl_code_size && data->csf) {
+		/*
+		 * For i.MX8 the CSF space is added via the linker script, so
+		 * the CSF length needs to be added if HABV4 is enabled but
+		 * signing is not.
+		 */
+		hdr->boot_data.size += CSF_LEN;
 	}
 
 	hdr->dcd_header.tag	= TAG_DCD_HEADER;
@@ -555,6 +573,7 @@ static int hab_sign(struct config_data *data)
 	char *cst;
 	void *buf;
 	size_t csf_space = CSF_LEN;
+	unsigned int offset = 0;
 
 	cst = getenv("CST");
 	if (!cst)
@@ -681,13 +700,36 @@ static int hab_sign(struct config_data *data)
 		return -errno;
 	}
 
-	outfd = open(data->outfile, O_WRONLY | O_APPEND);
+	/*
+	 * For i.MX8, write into the reserved CSF section
+	 */
+	if (data->cpu_type == IMX_CPU_IMX8MQ)
+		outfd = open(data->outfile, O_WRONLY);
+	else
+		outfd = open(data->outfile, O_WRONLY | O_APPEND);
+
 	if (outfd < 0) {
 		fprintf(stderr, "Cannot open %s for writing: %s\n", data->outfile,
 			strerror(errno));
 		exit(1);
 	}
 
+	if (data->cpu_type == IMX_CPU_IMX8MQ) {
+		/*
+		 * For i.MX8 insert the CSF data into the reserved CSF area
+		 * right behind the PBL
+		 */
+		offset = roundup(data->header_gap + data->pbl_code_size +
+				 HEADER_LEN, 0x1000);
+		if (data->signed_hdmi_firmware_file)
+			offset += PLUGIN_HDMI_SIZE;
+
+		if (lseek(outfd, offset, SEEK_SET) < 0) {
+			perror("lseek");
+			exit(1);
+		}
+	}
+
 	ret = xwrite(outfd, buf, csf_space);
 	if (ret < 0) {
 		fprintf(stderr, "write failed: %s\n", strerror(errno));
@@ -752,7 +794,6 @@ int main(int argc, char *argv[])
 	int outfd;
 	int dcd_only = 0;
 	int now = 0;
-	int sign_image = 0;
 	int i, header_copies;
 	int add_barebox_header;
 	uint32_t barebox_image_size = 0;
@@ -769,7 +810,7 @@ int main(int argc, char *argv[])
 
 	prgname = argv[0];
 
-	while ((opt = getopt(argc, argv, "c:hf:o:bduse")) != -1) {
+	while ((opt = getopt(argc, argv, "c:hf:o:p:bduse")) != -1) {
 		switch (opt) {
 		case 'c':
 			configfile = optarg;
@@ -780,6 +821,9 @@ int main(int argc, char *argv[])
 		case 'o':
 			data.outfile = optarg;
 			break;
+		case 'p':
+			data.pbl_code_size = strtoul(optarg, NULL, 0);
+			break;
 		case 'b':
 			add_barebox_header = 1;
 			break;
@@ -787,7 +831,7 @@ int main(int argc, char *argv[])
 			dcd_only = 1;
 			break;
 		case 's':
-			sign_image = 1;
+			data.sign_image = 1;
 			break;
 		case 'u':
 			create_usb_image = 1;
@@ -841,14 +885,12 @@ int main(int argc, char *argv[])
 	if (ret)
 		exit(1);
 
-	if (data.max_load_size && (sign_image || data.encrypt_image)) {
+	if (data.max_load_size && (data.encrypt_image || data.csf)
+	    && data.cpu_type != IMX_CPU_IMX8MQ) {
 		fprintf(stderr, "Specifying max_load_size is incompatible with HAB signing/encrypting\n");
 		exit(1);
 	}
 
-	if (!sign_image)
-		data.csf = NULL;
-
 	if (create_usb_image && !data.csf) {
 		fprintf(stderr, "Warning: the -u option only has effect with signed images\n");
 		create_usb_image = 0;
@@ -996,7 +1038,7 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
-	if (data.csf) {
+	if (data.csf && data.sign_image) {
 		ret = hab_sign(&data);
 		if (ret)
 			exit(1);
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index f37f151..e245194 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -338,6 +338,7 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 	char *str;
 	int ret;
 	uint32_t signed_size = data->load_size;
+	uint32_t offset = 0;
 
 	if (!data->csf)
 		return -EINVAL;
@@ -354,9 +355,19 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 	if (data->encrypt_image)
 		signed_size = ENCRYPT_OFFSET;
 
+	/*
+	 * Ensure we only sign the PBL for i.MX8MQ
+	 */
+	if (data->pbl_code_size && data->cpu_type == IMX_CPU_IMX8MQ) {
+		offset = data->header_gap;
+		signed_size = roundup(data->pbl_code_size + HEADER_LEN, 0x1000);
+		if (data->signed_hdmi_firmware_file)
+			offset += PLUGIN_HDMI_SIZE;
+	}
+
 	if (!strcmp(type, "full")) {
-		ret = asprintf(&str, "Blocks = 0x%08x 0 %d \"%s\"\n",
-			       data->image_load_addr, signed_size,
+		ret = asprintf(&str, "Blocks = 0x%08x 0x%08x 0x%08x \"%s\"\n",
+			       data->image_load_addr, offset, signed_size,
 			       data->outfile);
 	} else if (!strcmp(type, "from-dcdofs")) {
 		ret = asprintf(&str, "Blocks = 0x%08x 0x%x %d \"%s\"\n",
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
