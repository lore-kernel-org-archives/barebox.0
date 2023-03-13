Delivery-date: Mon, 13 Mar 2023 14:43:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiSb-0061Km-Ud
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:43:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiSb-00057X-40
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:43:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YmqdpnUdqAGoqJvEFZOXCEkcYtzlyGg8pofM4a2Ktdk=; b=Tu9KxQOSuDGiJpD/r25xk1w7qc
	48PeJ3pa6Azd2jjYFA0F7BBOh54KWF6ZWvDg5Cf/2xRL5SqJDIym5tcD161y/xrv+A3K/1kuTMBMb
	acnmzFqNrVnCOrUQWqSqnFz6tJl3Lac7spIdlQLcXIz09t7wG9XWUYFPv2kifnFHyG2u3u2GsmhzY
	lgW3m45lJzSwM2JfSY5DgrxKn7UF7TDfNCbLxho0iqRB12tlDYO/lUhOSD9+gbGEEfGY+TxK+Ic3C
	xaU0wEdBlSFKKdxtRhNvjFii/pmnm7hFFStA2LfoRPeQnt7EnGQUtyJLaZkDInDc4aG1WgiFkGNY/
	sK4nM9Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiRE-005vxf-SO; Mon, 13 Mar 2023 13:42:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiQq-005vkd-Np
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 13:41:49 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pbiQp-0004N9-1L
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:41:43 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 13 Mar 2023 14:41:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v2-1-3d33126d2434@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_064144_971286_5A02162B 
X-CRM114-Status: GOOD (  17.16  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 01/23] spi: remove flash_platform_data support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Drop the non-dt platform data since the last user was removed by commit
1266831db8 ("ARM: OMAP: PCM051: Remove spi platform data").

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/mtd/devices/m25p80.c        | 15 +--------------
 drivers/mtd/devices/mtd_dataflash.c |  4 +---
 drivers/mtd/spi-nor/spi-nor.c       |  1 -
 include/spi/flash.h                 | 31 -------------------------------
 4 files changed, 2 insertions(+), 49 deletions(-)

diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 05c6473a28..ce3789c096 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -15,7 +15,6 @@
 #include <driver.h>
 #include <of.h>
 #include <spi/spi.h>
-#include <spi/flash.h>
 #include <xfuncs.h>
 #include <malloc.h>
 #include <errno.h>
@@ -205,7 +204,6 @@ static int m25p_probe(struct device *dev)
 {
 	struct spi_device *spi = (struct spi_device *)dev->type_data;
 	struct spi_mem *spimem = spi->mem;
-	struct flash_platform_data	*data;
 	struct m25p			*flash;
 	struct spi_nor			*nor;
 	struct spi_nor_hwcaps hwcaps = {
@@ -218,8 +216,6 @@ static int m25p_probe(struct device *dev)
 	bool				use_large_blocks;
 	int ret;
 
-	data = dev->platform_data;
-
 	flash = xzalloc(sizeof *flash);
 
 	nor = &flash->spi_nor;
@@ -245,14 +241,7 @@ static int m25p_probe(struct device *dev)
 
 	dev->priv = (void *)flash;
 
-	if (data && data->name)
-		flash->mtd.name = data->name;
-
-	if (data && data->type)
-		flash_name = data->type;
-	else if (data && data->name)
-		flash_name = data->name;
-	else if (dev->id_entry)
+	if (dev->id_entry)
 		flash_name = dev->id_entry->name;
 	else
 		flash_name = NULL; /* auto-detect */
@@ -267,8 +256,6 @@ static int m25p_probe(struct device *dev)
 	device_id = DEVICE_ID_SINGLE;
 	if (dev->of_node)
 		flash_name = of_alias_get(dev->of_node);
-	else if (data && data->name)
-		flash_name = data->name;
 
 	if (!flash_name) {
 		device_id = DEVICE_ID_DYNAMIC;
diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index b6a0c79d2f..b5dbe4de3e 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -17,7 +17,6 @@
 #include <clock.h>
 
 #include <spi/spi.h>
-#include <spi/flash.h>
 
 #include <linux/math64.h>
 #include <linux/mtd/mtd.h>
@@ -599,7 +598,6 @@ add_dataflash_otp(struct spi_device *spi, char *name,
 {
 	struct dataflash		*priv;
 	struct mtd_info			*device;
-	struct flash_platform_data	*pdata = spi->dev.platform_data;
 	char				*otp_tag = "";
 	int				err = 0;
 
@@ -617,7 +615,7 @@ add_dataflash_otp(struct spi_device *spi, char *name,
 			name);
 
 	device = &priv->mtd;
-	device->name = (pdata && pdata->name) ? pdata->name : "dataflash";
+	device->name = "dataflash";
 	device->size = nr_pages * (uint64_t)pagesize;
 	device->erasesize = pagesize;
 	device->writesize = pagesize;
diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index f83c3f02a0..8f6726ca4b 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -19,7 +19,6 @@
 #include <linux/mtd/cfi.h>
 #include <linux/mtd/spi-nor.h>
 #include <of.h>
-#include <spi/flash.h>
 
 #define SPI_NOR_MAX_ID_LEN	6
 #define SPI_NOR_MAX_ADDR_WIDTH	4
diff --git a/include/spi/flash.h b/include/spi/flash.h
deleted file mode 100644
index 796d649d9a..0000000000
--- a/include/spi/flash.h
+++ /dev/null
@@ -1,31 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-#ifndef LINUX_SPI_FLASH_H
-#define LINUX_SPI_FLASH_H
-
-struct mtd_partition;
-
-/**
- * struct flash_platform_data: board-specific flash data
- * @name: optional flash device name (eg, as used with mtdparts=)
- * @parts: optional array of mtd_partitions for static partitioning
- * @nr_parts: number of mtd_partitions for static partitoning
- * @type: optional flash device type (e.g. m25p80 vs m25p64), for use
- *	with chips that can't be queried for JEDEC or other IDs
- *
- * Board init code (in arch/.../mach-xxx/board-yyy.c files) can
- * provide information about SPI flash parts (such as DataFlash) to
- * help set up the device and its appropriate default partitioning.
- *
- * Note that for DataFlash, sizes for pages, blocks, and sectors are
- * rarely powers of two; and partitions should be sector-aligned.
- */
-struct flash_platform_data {
-	char		*name;
-	struct mtd_partition	*parts;
-	unsigned int		nr_parts;
-	char			*type;
-
-	/* we'll likely add more ... use JEDEC IDs, etc */
-};
-
-#endif

-- 
2.30.2



