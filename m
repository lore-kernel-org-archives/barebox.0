Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnimY-0001UL-6A
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:16:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2020 15:15:52 +0200
Message-Id: <20200623131606.16316-7-s.hauer@pengutronix.de>
In-Reply-To: <20200623131606.16316-1-s.hauer@pengutronix.de>
References: <20200623131606.16316-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/20] scripts: imx-image: rename image_dcd_offset to
 image_ivt_offset
To: Barebox List <barebox@lists.infradead.org>

image_dcd_offset is a misnomer, it should really be image_ivt_offset.
The DCD (Device Configuration Data) is only one part of the data linked
into the IVT (Image Vector Table), but the meaning of the variable is
really the latter, not the former.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx-header.h |  2 +-
 scripts/imx/imx-image.c                     | 18 +++++++++---------
 scripts/imx/imx.c                           | 12 ++++++------
 3 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx-header.h b/arch/arm/mach-imx/include/mach/imx-header.h
index dc8e2eee2f..f1e076dab9 100644
--- a/arch/arm/mach-imx/include/mach/imx-header.h
+++ b/arch/arm/mach-imx/include/mach/imx-header.h
@@ -94,7 +94,7 @@ static inline bool is_imx_flash_header_v2(const void *blob)
 
 struct config_data {
 	uint32_t image_load_addr;
-	uint32_t image_dcd_offset;
+	uint32_t image_ivt_offset;
 	uint32_t image_size;
 	uint32_t max_load_size;
 	uint32_t load_size;
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 9c40cf7340..64be682417 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -238,7 +238,7 @@ static size_t add_header_v1(struct config_data *data, void *buf)
 {
 	struct imx_flash_header *hdr;
 	int dcdsize = curdcd * sizeof(uint32_t);
-	int offset = data->image_dcd_offset;
+	int offset = data->image_ivt_offset;
 	uint32_t loadaddr = data->image_load_addr;
 	uint32_t imagesize = data->load_size;
 
@@ -307,7 +307,7 @@ static size_t add_header_v2(const struct config_data *data, void *buf)
 {
 	struct imx_flash_header_v2 *hdr;
 	int dcdsize = curdcd * sizeof(uint32_t);
-	int offset = data->image_dcd_offset;
+	int offset = data->image_ivt_offset;
 	uint32_t loadaddr = data->image_load_addr;
 	uint32_t imagesize = data->load_size;
 
@@ -784,7 +784,7 @@ int main(int argc, char *argv[])
 	int add_barebox_header;
 	uint32_t barebox_image_size = 0;
 	struct config_data data = {
-		.image_dcd_offset = 0xffffffff,
+		.image_ivt_offset = 0xffffffff,
 		.write_mem = write_mem,
 		.check = check,
 		.nop = nop,
@@ -882,11 +882,11 @@ int main(int argc, char *argv[])
 		create_usb_image = 0;
 	}
 
-	if (data.image_dcd_offset == 0xffffffff) {
+	if (data.image_ivt_offset == 0xffffffff) {
 		if (create_usb_image)
-			data.image_dcd_offset = 0x0;
+			data.image_ivt_offset = 0x0;
 		else
-			data.image_dcd_offset = FLASH_HEADER_OFFSET;
+			data.image_ivt_offset = FLASH_HEADER_OFFSET;
 	}
 
 	if (!data.header_version) {
@@ -910,14 +910,14 @@ int main(int argc, char *argv[])
 	case 1:
 		barebox_image_size = add_header_v1(&data, buf);
 		if (data.srkfile) {
-			ret = add_srk(buf, data.image_dcd_offset, data.image_load_addr,
+			ret = add_srk(buf, data.image_ivt_offset, data.image_load_addr,
 				      data.srkfile);
 			if (ret)
 				exit(1);
 		}
 		break;
 	case 2:
-		if (data.image_dcd_offset + sizeof(struct imx_flash_header_v2) +
+		if (data.image_ivt_offset + sizeof(struct imx_flash_header_v2) +
 		    MAX_DCD * sizeof(u32) > HEADER_LEN) {
 			fprintf(stderr, "i.MX v2 header exceeds SW limit set by imx-image\n");
 			exit(1);
@@ -985,7 +985,7 @@ int main(int argc, char *argv[])
 		xwrite(outfd, buf, header_len);
 	} else {
 		if (add_barebox_header &&
-		    data.image_dcd_offset + data.header_gap < sizeof_bb_header) {
+		    data.image_ivt_offset + data.header_gap < sizeof_bb_header) {
 			fprintf(stderr, "barebox header conflicts with IVT\n");
 			exit(1);
 		}
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index ea576c22d3..f10c71e08a 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -211,12 +211,12 @@ static int do_loadaddr(struct config_data *data, int argc, char *argv[])
 	return 0;
 }
 
-static int do_dcd_offset(struct config_data *data, int argc, char *argv[])
+static int do_ivt_offset(struct config_data *data, int argc, char *argv[])
 {
 	if (argc < 2)
 		return -EINVAL;
 
-	data->image_dcd_offset = strtoul(argv[1], NULL, 0);
+	data->image_ivt_offset = strtoul(argv[1], NULL, 0);
 
 	return 0;
 }
@@ -334,7 +334,7 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 	char *str;
 	int ret;
 	uint32_t signed_size = data->load_size;
-	uint32_t offset = data->image_dcd_offset;
+	uint32_t offset = data->image_ivt_offset;
 
 	if (!data->csf)
 		return -EINVAL;
@@ -358,8 +358,8 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 
 	if (signed_size > 0) {
 		ret = asprintf(&str, "Blocks = 0x%08x 0x%08x 0x%08x \"%s\"\n",
-			data->image_load_addr + data->image_dcd_offset, offset,
-			signed_size - data->image_dcd_offset, data->outfile);
+			data->image_load_addr + data->image_ivt_offset, offset,
+			signed_size - data->image_ivt_offset, data->outfile);
 	} else {
 		fprintf(stderr, "Invalid signed size area 0x%08x\n",
 			signed_size);
@@ -586,7 +586,7 @@ struct command cmds[] = {
 		.parse = do_loadaddr,
 	}, {
 		.name = "dcdofs",
-		.parse = do_dcd_offset,
+		.parse = do_ivt_offset,
 	}, {
 		.name = "soc",
 		.parse = do_soc,
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
