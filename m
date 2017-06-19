Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMxvP-0003zk-Lc
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 14:45:10 +0000
Received: by mail-pg0-x244.google.com with SMTP id f127so16345782pgc.2
 for <barebox@lists.infradead.org>; Mon, 19 Jun 2017 07:44:47 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 19 Jun 2017 07:44:30 -0700
Message-Id: <20170619144431.20843-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/6] mtd: dataflash: Make use of "extened device information"
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, cphealy@gmail.com

In anticipation of supporting chips that need it, extend the size of
struct flash_info's 'jedec_id' field to make room 2 byte of extended
device information as well as add code to fetch this data during
jedec_probe().

This is a backport of kernel commit
1da8869a428317a6d3cd8d47184cf87feb34a98b

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mtd/devices/mtd_dataflash.c | 89 ++++++++++++++++++++++++-------------
 1 file changed, 58 insertions(+), 31 deletions(-)

diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index fae36b6..c1c29b7 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -85,6 +85,9 @@
 
 #define CFI_MFR_ATMEL		0x1F
 
+#define DATAFLASH_SHIFT_EXTID	24
+#define DATAFLASH_SHIFT_ID	40
+
 struct dataflash {
 	u8			command[4];
 	char			name[24];
@@ -665,7 +668,7 @@ struct flash_info {
 	/* JEDEC id has a high byte of zero plus three data bytes:
 	 * the manufacturer id, then a two byte device id.
 	 */
-	u32	jedec_id;
+	u64	jedec_id;
 
 	/* The size listed here is what works with OP_ERASE_PAGE. */
 	unsigned	nr_pages;
@@ -673,6 +676,7 @@ struct flash_info {
 	u16		pageoffset;
 
 	u16		flags;
+#define SUP_EXTID	0x0004		/* supports extended ID data */
 #define SUP_POW2PS	0x0002		/* supports 2^N byte pages */
 #define IS_POW2PS	0x0001		/* uses 2^N byte pages */
 };
@@ -712,42 +716,18 @@ static struct flash_info dataflash_data [] = {
 	{ "at45db642d",  0x1f2800, 8192, 1024, 10, SUP_POW2PS | IS_POW2PS},
 };
 
-static struct flash_info * jedec_probe(struct spi_device *spi)
+static struct flash_info *jedec_lookup(struct spi_device *spi,
+				       u64 jedec, bool use_extid)
 {
-	int ret;
-	u8 code = OP_READ_ID;
-	u8 id[3];
-	u32 jedec;
 	struct flash_info *info;
 	int status;
 
-	/*
-	 * JEDEC also defines an optional "extended device information"
-	 * string for after vendor-specific data, after the three bytes
-	 * we use here.  Supporting some chips might require using it.
-	 *
-	 * If the vendor ID isn't Atmel's (0x1f), assume this call failed.
-	 * That's not an error; only rev C and newer chips handle it, and
-	 * only Atmel sells these chips.
-	 */
-	ret = spi_write_then_read(spi, &code, 1, id, 3);
-	if (ret < 0) {
-		dev_dbg(&spi->dev, "error %d reading JEDEC ID\n", ret);
-		return ERR_PTR(ret);
-	}
-
-	if (id[0] != CFI_MFR_ATMEL)
-		return NULL;
-
-	jedec = id[0];
-	jedec = jedec << 8;
-	jedec |= id[1];
-	jedec = jedec << 8;
-	jedec |= id[2];
-
 	for (info = dataflash_data;
 	     info < dataflash_data + ARRAY_SIZE(dataflash_data);
 	     info++) {
+		if (use_extid && !(info->flags & SUP_EXTID))
+			continue;
+
 		if (info->jedec_id == jedec) {
 			dev_dbg(&spi->dev, "OTP, sector protect%s\n",
 				(info->flags & SUP_POW2PS) ?
@@ -771,12 +751,59 @@ static struct flash_info * jedec_probe(struct spi_device *spi)
 		}
 	}
 
+	return ERR_PTR(-ENODEV);
+}
+
+static struct flash_info * jedec_probe(struct spi_device *spi)
+{
+	int ret;
+	u8 code = OP_READ_ID;
+	u64 jedec;
+	u8 id[sizeof(jedec)] = {0};
+	const unsigned int id_size = 5;
+	struct flash_info *info;
+
+	/*
+	 * JEDEC also defines an optional "extended device information"
+	 * string for after vendor-specific data, after the three bytes
+	 * we use here.  Supporting some chips might require using it.
+	 *
+	 * If the vendor ID isn't Atmel's (0x1f), assume this call failed.
+	 * That's not an error; only rev C and newer chips handle it, and
+	 * only Atmel sells these chips.
+	 */
+	ret = spi_write_then_read(spi, &code, 1, id, id_size);
+	if (ret < 0) {
+		dev_dbg(&spi->dev, "error %d reading JEDEC ID\n", ret);
+		return ERR_PTR(ret);
+	}
+
+	if (id[0] != CFI_MFR_ATMEL)
+		return NULL;
+
+	jedec = be64_to_cpup((__be64 *)id);
+
+	/*
+	 * First, try to match device using extended device
+	 * information
+	 */
+	info = jedec_lookup(spi, jedec >> DATAFLASH_SHIFT_EXTID, true);
+	if (!IS_ERR(info))
+		return info;
+	/*
+	 * If that fails, make another pass using regular ID
+	 * information
+	 */
+	info = jedec_lookup(spi, jedec >> DATAFLASH_SHIFT_ID, false);
+	if (!IS_ERR(info))
+		return info;
+
 	/*
 	 * Treat other chips as errors ... we won't know the right page
 	 * size (it might be binary) even when we can tell which density
 	 * class is involved (legacy chip id scheme).
 	 */
-	dev_warn(&spi->dev, "JEDEC id %06x not handled\n", jedec);
+	dev_warn(&spi->dev, "JEDEC id %016llx not handled\n", jedec);
 	return ERR_PTR(-ENODEV);
 }
 
-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
