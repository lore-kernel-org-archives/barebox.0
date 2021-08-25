Delivery-date: Wed, 25 Aug 2021 13:37:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIrDv-0007OE-9c
	for lore@lore.pengutronix.de; Wed, 25 Aug 2021 13:37:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIrDq-0005Pl-QO
	for lore@pengutronix.de; Wed, 25 Aug 2021 13:37:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9C1H7+KLoo7zOQYYpdh3lWcv9pdscTiBzE4/8F5fWjY=; b=gz4Bmg9wVXCf6G
	eShS6Nx4ecNAsd8Kbl34ddqGdu+rF4E+4lXa+otxa6OIrNBFRN0LHN3vuRNcrB9ZQD9u2aIhBGoDA
	TKftF5PR386BVLXtplQaSzwiCy18tVwQWuGpdm7/P7vm350BjkZ17YyUxX3dzXa70T1Yr8DS73Wh2
	dNujYMbYDkM9EN0mOpzlP2bPs6hJO1bb0iWfTTCibwEnNvN7EnGW4YyUDkf6RuLoxq+IAZUV2RJPf
	hSHNTXk8od8iEkFIGY571g5RlUMXFrLVAPNQvulvWX5FI/5YtLOjoriMPufgFHMdUwKPmNSBgofbz
	9I09BKkIl3L3mPnc7rfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIrBv-006qaA-W9; Wed, 25 Aug 2021 11:35:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIrBp-006qYY-Nz
 for barebox@lists.infradead.org; Wed, 25 Aug 2021 11:35:32 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1mIrBm-0005A2-Lg
 for barebox@lists.infradead.org; Wed, 25 Aug 2021 13:35:26 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1mIrBm-0001Rn-Bu
 for barebox@lists.infradead.org; Wed, 25 Aug 2021 13:35:26 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 25 Aug 2021 13:35:25 +0200
Message-Id: <20210825113525.5434-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_043529_826329_36A48163 
X-CRM114-Status: GOOD (  19.08  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mtd: spi-nor: remove use-large-blocks left over
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Commit 8e3318b5bc ("mtd: spi-nor: introduce SPI 1-2-2 and SPI 1-4-4
protocols") added the spi_nor_select_erase() function. This function
don't take the use_large_blocks parameter into account anymore and
instead relies only on the Kconfig config.

This commit removes the left over 'use_large_blocks' and
'use-large-blocks' references to cleanup the code base and to avoid
confusion. No functional changes are made.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/devicetree/bindings/mtd/m25p80.rst | 10 ----------
 drivers/mtd/devices/m25p80.c                     |  6 +-----
 drivers/mtd/spi-nor/spi-nor.c                    |  3 +--
 include/linux/mtd/spi-nor.h                      |  4 +---
 4 files changed, 3 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mtd/m25p80.rst

diff --git a/Documentation/devicetree/bindings/mtd/m25p80.rst b/Documentation/devicetree/bindings/mtd/m25p80.rst
deleted file mode 100644
index 09e8b8eff6..0000000000
--- a/Documentation/devicetree/bindings/mtd/m25p80.rst
+++ /dev/null
@@ -1,10 +0,0 @@
-MTD SPI driver for ST M25Pxx (and similar) serial flash chips
-=============================================================
-
-Additionally to the Linux bindings in ``dts/Bindings/mtd/jedec,spi-nor.txt``
-the barebox driver has the following optional properties:
-
-- use-large-blocks : Use large blocks rather than the 4K blocks some devices
-                     support. 4K erase blocks do not work with UBIFS which needs
-		     a minimum erase block size of 15360 bytes. Also bigger sectors
-		     are faster to erase.
diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 8845ec3a3e..0685a61491 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -219,7 +219,6 @@ static int m25p_probe(struct device_d *dev)
 	};
 	const char			*flash_name = NULL;
 	int				device_id;
-	bool				use_large_blocks;
 	int ret;
 
 	data = dev->platform_data;
@@ -261,10 +260,7 @@ static int m25p_probe(struct device_d *dev)
 	else
 		flash_name = NULL; /* auto-detect */
 
-	use_large_blocks = of_property_read_bool(dev->device_node,
-			"use-large-blocks");
-
-	ret = spi_nor_scan(nor, flash_name, &hwcaps, use_large_blocks);
+	ret = spi_nor_scan(nor, flash_name, &hwcaps);
 	if (ret)
 		return ret;
 
diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index bd748ff5b4..10f026d7c2 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1363,8 +1363,7 @@ static int spi_nor_setup(struct spi_nor *nor, const struct flash_info *info,
 }
 
 int spi_nor_scan(struct spi_nor *nor, const char *name,
-		 const struct spi_nor_hwcaps *hwcaps,
-		 bool use_large_blocks)
+		 const struct spi_nor_hwcaps *hwcaps)
 {
 	struct spi_nor_flash_parameter params;
 	const struct spi_device_id	*id = NULL;
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 1c6f442866..08c54baf02 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -302,7 +302,6 @@ struct spi_nor_hwcaps {
  * @nor:	the spi_nor structure
  * @name:	the chip type name
  * @hwcaps:	the hardware capabilities supported by the controller driver
- * @use_large_blocks: prefer large blocks even if 4k blocks are supported
  *
  * The drivers can use this fuction to scan the SPI NOR.
  * In the scanning, it will try to get all the necessary information to
@@ -313,7 +312,6 @@ struct spi_nor_hwcaps {
  * Return: 0 for success, others for failure.
  */
 int spi_nor_scan(struct spi_nor *nor, const char *name,
-		 const struct spi_nor_hwcaps *hwcaps,
-		 bool use_large_blocks);
+		 const struct spi_nor_hwcaps *hwcaps);
 
 #endif
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

