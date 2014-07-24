Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XACpR-00055N-1s
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 06:48:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jul 2014 08:48:12 +0200
Message-Id: <1406184493-29225-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: i.MX5: internal NAND update: Use variables for some
 constants
To: barebox@lists.infradead.org

Instead oof using the same constants multiple times use a variable
to make the meaning of the constants clear.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index a5cb7e7..d90d92b 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -178,6 +178,9 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 	uint32_t *ptr, *num_bb, *bb;
 	uint64_t offset;
 	int block = 0, len, now, blocksize;
+	int dbbt_start_page = 4;
+	int firmware_start_page = 12;
+	void *dbbt_base;
 	int pre_image_size;
 
 	ret = stat(data->devicefile, &s);
@@ -194,7 +197,7 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 	if (ret)
 		goto out;
 
-	pre_image_size = 12 * meminfo.writesize;
+	pre_image_size = firmware_start_page * meminfo.writesize;
 
 	blocksize = meminfo.erasesize;
 
@@ -203,23 +206,24 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 	*ptr++ = 1;		/* FCB version */
 
 	ptr = image + 0x68; /* Firmware start page */
-	*ptr = 12;
+	*ptr = firmware_start_page;
 
 	ptr = image + 0x78; /* DBBT start page */
-	*ptr = 4;
+	*ptr = dbbt_start_page;
 
-	ptr = image + 4 * 2048 + 4;
+	dbbt_base = image + dbbt_start_page * meminfo.writesize;
+	ptr = dbbt_base + 4;
 	*ptr++ = DBBT_MAGIC;	/* DBBT */
 	*ptr = 1;		/* DBBT version */
 
-	ptr = (u32*)(image + 0x2010);
+	ptr = (u32*)(dbbt_base + 0x10);
 	/*
 	 * This is marked as reserved in the i.MX53 reference manual, but
 	 * must be != 0. Otherwise the ROM ignores the DBBT
 	 */
 	*ptr = 1;
 
-	ptr = (u32*)(image + 0x4004); /* start of DBBT */
+	ptr = (u32*)(dbbt_base + 4 * meminfo.writesize + 4); /* start of DBBT */
 	num_bb = ptr;
 	bb = ptr + 1;
 	offset = 0;
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
