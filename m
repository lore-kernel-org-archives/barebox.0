Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XACpR-00055L-1v
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 06:48:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jul 2014 08:48:10 +0200
Message-Id: <1406184493-29225-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1406184493-29225-1-git-send-email-s.hauer@pengutronix.de>
References: <1406184493-29225-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: i.MX5: internal NAND update: Use variable for
 pre_image_size
To: barebox@lists.infradead.org

We have the hardcoded value 0x8000 for the space needed for FCB and
DBBT in several places. Use a variable instead and initialize it
correctly with 12 * meminfo.writesize (which is in fact 0x6000 for
2k pagesize).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 125415e..ae981e8 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -178,6 +178,7 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 	uint32_t *ptr, *num_bb, *bb;
 	uint64_t offset;
 	int block = 0, len, now, blocksize;
+	int pre_image_size;
 
 	ret = stat(data->devicefile, &s);
 	if (ret)
@@ -193,6 +194,8 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 	if (ret)
 		goto out;
 
+	pre_image_size = 12 * meminfo.writesize;
+
 	blocksize = meminfo.erasesize;
 
 	ptr = image + 0x4;
@@ -218,7 +221,7 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 	bb = ptr + 1;
 	offset = 0;
 
-	size_need = data->len + 0x8000;
+	size_need = data->len + pre_image_size;
 
 	/*
 	 * Collect bad blocks and construct DBBT
@@ -261,18 +264,18 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 	}
 
 	debug("total image size: 0x%08zx. Space needed including bad blocks: 0x%08zx\n",
-			data->len + 0x8000,
-			data->len + 0x8000 + *num_bb * blocksize);
+			data->len + pre_image_size,
+			data->len + pre_image_size + *num_bb * blocksize);
 
-	if (data->len + 0x8000 + *num_bb * blocksize > imx_handler->device_size) {
+	if (data->len + pre_image_size + *num_bb * blocksize > imx_handler->device_size) {
 		printf("needed space (0x%08zx) exceeds partition space (0x%08zx)\n",
-				data->len + 0x8000 + *num_bb * blocksize,
+				data->len + pre_image_size + *num_bb * blocksize,
 				imx_handler->device_size);
 		ret = -ENOSPC;
 		goto out;
 	}
 
-	len = data->len + 0x8000;
+	len = data->len + pre_image_size;
 	offset = 0;
 
 	/*
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
