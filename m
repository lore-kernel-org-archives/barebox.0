Delivery-date: Mon, 07 Feb 2022 08:58:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGyuT-0083Yd-B7
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 08:58:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGyuR-0002n3-4K
	for lore@pengutronix.de; Mon, 07 Feb 2022 08:58:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZYEJmuRfDXhOSL9076bmQu3uu0cuRB3ALfXy8Lh7Tk=; b=UpqQhBEdGRL+JC
	yNWTp3cfgDb8ZU7b94vpfQU+q5zBKZbPhMuBZGEl5SWHxCqkMBn16HoChi+4MhvazYn007RMyKwdd
	sf/UPUX0qctfZb54+7aTZ1giNmo6nxlA5u5PmxFYsf5K72WGU1p/fHBf0iGbbU9yWA1yAFiQUAp2V
	vAjzMpxp1FvnUMPT9ZlHHDoJ8SDk4+Ca4nf8F+Tkl1GK+djwqvIE+5s6km5gaw7kM/pIC7QKLcVVQ
	rYUZaM89m6x0NCfCnEhLOsqTmFVdvt/14OhPXxfMPjRyzrzVzO9CA6irD4tuMe7qZUNFrlcvW4Tbz
	p49alYhFVHaQGwLG32RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGytE-009Gop-En; Mon, 07 Feb 2022 07:56:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGysy-009GgO-Vd
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 07:56:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nGysx-0002DE-PD; Mon, 07 Feb 2022 08:56:31 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nGysx-004FvY-8O; Mon, 07 Feb 2022 08:56:31 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Feb 2022 08:56:30 +0100
Message-Id: <20220207075630.1014476-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207075630.1014476-1-a.fatoum@pengutronix.de>
References: <20220207075630.1014476-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_235633_045100_CD293BE5 
X-CRM114-Status: GOOD (  14.34  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] mtd: mtdram: add physically mapped ROM (mtd-rom) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already have mtd-ram support for accessing memory-mapped RAMs.
Add support for the mtd-rom binding, so read-only access while
using the driver can be enforced. This is e.g. useful for memory-mapped
flash that can be normally read, but needs special handling for write
and erasure.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/devices/mtdram.c | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/devices/mtdram.c b/drivers/mtd/devices/mtdram.c
index c9371b16d0f5..abef07d9c0a7 100644
--- a/drivers/mtd/devices/mtdram.c
+++ b/drivers/mtd/devices/mtdram.c
@@ -38,6 +38,7 @@ static int ram_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retle
 
 static int mtdram_probe(struct device_d *dev)
 {
+	long type;
 	struct resource *iores;
 	int device_id;
 	struct mtd_info *mtd;
@@ -53,9 +54,11 @@ static int mtdram_probe(struct device_d *dev)
 			mtd->name = xstrdup(alias);
 	}
 
+	type = (long)device_get_match_data(dev);
+
 	if (!mtd->name) {
 		device_id = DEVICE_ID_DYNAMIC;
-		mtd->name = "mtdram";
+		mtd->name = type == MTD_RAM ? "mtdram" : "mtdrom";
 	}
 
 	iores = dev_request_mem_resource(dev, 0);
@@ -67,16 +70,19 @@ static int mtdram_probe(struct device_d *dev)
 	mtd->priv = IOMEM(iores->start);
 	size = (unsigned long) resource_size(iores);
 
-	mtd->type = MTD_RAM;
+	mtd->type = type;
 	mtd->writesize = 1;
 	mtd->writebufsize = 64;
-	mtd->flags = MTD_CAP_RAM;
 	mtd->size = size;
 
 	mtd->_read = ram_read;
-	mtd->_write = ram_write;
-	mtd->_erase = ram_erase;
-	mtd->erasesize = 1;
+
+	if (type == MTD_RAM) {
+		mtd->flags = MTD_CAP_RAM;
+		mtd->_write = ram_write;
+		mtd->_erase = ram_erase;
+		mtd->erasesize = 1;
+	}
 
 	mtd->dev.parent = dev;
 
@@ -92,6 +98,10 @@ nobase:
 static __maybe_unused struct of_device_id mtdram_dt_ids[] = {
 	{
 		.compatible	= "mtd-ram",
+		.data		= (void *)MTD_RAM
+	}, {
+		.compatible	= "mtd-rom",
+		.data		= (void *)MTD_ROM
 	}, {
 		/*  sentinel */
 	}
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

