Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gP1cw-0004MT-Se
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 08:43:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Nov 2018 09:40:58 +0100
Message-Id: <20181120084100.8737-2-s.hauer@pengutronix.de>
In-Reply-To: <20181120084100.8737-1-s.hauer@pengutronix.de>
References: <20181120084100.8737-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] scripts: imx-image: Add support for max_load_size option
To: Barebox List <barebox@lists.infradead.org>

When an image is loaded to SRAM we can normally only load a part of the
full image, limited by the available space in SRAM. We currently load
the pblb image which is the executable part of the PBL without the
compressed barebox payload. We are going to link the compressed barebox
image into the pbl image though, so we can't see the desired load size
from outside the image anymore.

This adds a max_load_size option to set this size explicitly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx-header.h |  1 +
 scripts/imx/imx-image.c                     | 10 +++++++++-
 scripts/imx/imx.c                           | 13 +++++++++++++
 3 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/include/mach/imx-header.h b/arch/arm/mach-imx/include/mach/imx-header.h
index 05f1669318..50584bb24b 100644
--- a/arch/arm/mach-imx/include/mach/imx-header.h
+++ b/arch/arm/mach-imx/include/mach/imx-header.h
@@ -96,6 +96,7 @@ struct config_data {
 	uint32_t image_load_addr;
 	uint32_t image_dcd_offset;
 	uint32_t image_size;
+	uint32_t max_load_size;
 	uint32_t load_size;
 	char *outfile;
 	char *srkfile;
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 9c173cd23b..5fd34065ec 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -324,7 +324,10 @@ static size_t add_header_v2(const struct config_data *data, void *buf)
 	hdr->self		= loadaddr + offset;
 
 	hdr->boot_data.start	= loadaddr;
-	hdr->boot_data.size	= imagesize;
+	if (data->max_load_size && imagesize > data->max_load_size)
+		hdr->boot_data.size	= data->max_load_size;
+	else
+		hdr->boot_data.size	= imagesize;
 
 	if (data->csf) {
 		hdr->csf = loadaddr + imagesize;
@@ -810,6 +813,11 @@ int main(int argc, char *argv[])
 	if (ret)
 		exit(1);
 
+	if (data.max_load_size && (sign_image || data.encrypt_image)) {
+		fprintf(stderr, "Specifying max_load_size is incompatible with HAB signing/encrypting\n");
+		exit(1);
+	}
+
 	if (!sign_image)
 		data.csf = NULL;
 
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 43f67da288..f37f151acb 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -279,6 +279,16 @@ static int do_soc(struct config_data *data, int argc, char *argv[])
 	return -EINVAL;
 }
 
+static int do_max_load_size(struct config_data *data, int argc, char *argv[])
+{
+	if (argc < 2)
+		return -EINVAL;
+
+	data->max_load_size = strtoul(argv[1], NULL, 0);
+
+	return 0;
+}
+
 static int hab_add_str(struct config_data *data, const char *str)
 {
 	int len = strlen(str);
@@ -590,6 +600,9 @@ struct command cmds[] = {
 	}, {
 		.name = "soc",
 		.parse = do_soc,
+	},  {
+		.name = "max_load_size",
+		.parse = do_max_load_size,
 	}, {
 		.name = "hab",
 		.parse = do_hab,
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
