Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMxvJ-0003zh-0z
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 14:45:05 +0000
Received: by mail-pf0-x241.google.com with SMTP id y7so17398397pfd.3
 for <barebox@lists.infradead.org>; Mon, 19 Jun 2017 07:44:44 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 19 Jun 2017 07:44:27 -0700
Message-Id: <20170619144431.20843-3-andrew.smirnov@gmail.com>
In-Reply-To: <20170619144431.20843-1-andrew.smirnov@gmail.com>
References: <20170619144431.20843-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/6] mtd: dataflash: Improve coding style in jedec_probe()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, cphealy@gmail.com

Change the following:

   - Replace indentation between type and name of local variable from
     tabs to spaces

   - Replace magic number 0x1F with CFI_MFR_ATMEL macro

   - Replace variable 'tmp' with 'ret' and 'i' where appropriate

   - Reformat multi-line comments and add newlines where appropriate

No functional change intended.

This is a backport of kernel commit
41c9c6621afa22c86fe74cf07536fd21c7719ca6

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mtd/devices/mtd_dataflash.c | 31 +++++++++++++++++--------------
 1 file changed, 17 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index cdbb194..f47553a 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -83,6 +83,7 @@
 #define OP_WRITE_SECURITY_REVC	0x9A
 #define OP_WRITE_SECURITY	0x9B	/* revision D */
 
+#define CFI_MFR_ATMEL		0x1F
 
 struct dataflash {
 	u8			command[4];
@@ -716,14 +717,15 @@ static struct flash_info dataflash_data [] = {
 
 static struct flash_info * jedec_probe(struct spi_device *spi)
 {
-	int			tmp;
-	u8			code = OP_READ_ID;
-	u8			id[3];
-	u32			jedec;
-	struct flash_info	*info;
+	int ret, i;
+	u8 code = OP_READ_ID;
+	u8 id[3];
+	u32 jedec;
+	struct flash_info *info;
 	int status;
 
-	/* JEDEC also defines an optional "extended device information"
+	/*
+	 * JEDEC also defines an optional "extended device information"
 	 * string for after vendor-specific data, after the three bytes
 	 * we use here.  Supporting some chips might require using it.
 	 *
@@ -731,13 +733,14 @@ static struct flash_info * jedec_probe(struct spi_device *spi)
 	 * That's not an error; only rev C and newer chips handle it, and
 	 * only Atmel sells these chips.
 	 */
-	tmp = spi_write_then_read(spi, &code, 1, id, 3);
-	if (tmp < 0) {
+	ret = spi_write_then_read(spi, &code, 1, id, 3);
+	if (ret < 0) {
 		pr_debug("%s: error %d reading JEDEC ID\n",
-			dev_name(&spi->dev), tmp);
-		return ERR_PTR(tmp);
+			dev_name(&spi->dev), ret);
+		return ERR_PTR(ret);
 	}
-	if (id[0] != 0x1f)
+
+	if (id[0] != CFI_MFR_ATMEL)
 		return NULL;
 
 	jedec = id[0];
@@ -746,9 +749,9 @@ static struct flash_info * jedec_probe(struct spi_device *spi)
 	jedec = jedec << 8;
 	jedec |= id[2];
 
-	for (tmp = 0, info = dataflash_data;
-			tmp < ARRAY_SIZE(dataflash_data);
-			tmp++, info++) {
+	for (i = 0, info = dataflash_data;
+			i < ARRAY_SIZE(dataflash_data);
+			i++, info++) {
 		if (info->jedec_id == jedec) {
 			pr_debug("%s: OTP, sector protect%s\n",
 				dev_name(&spi->dev),
-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
