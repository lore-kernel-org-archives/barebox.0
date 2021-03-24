Delivery-date: Wed, 24 Mar 2021 13:26:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lP2aZ-0006aA-Dz
	for lore@lore.pengutronix.de; Wed, 24 Mar 2021 13:26:19 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lP2aY-0007fX-HC
	for lore@pengutronix.de; Wed, 24 Mar 2021 13:26:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H3QLAtZPyVEM+Dmu6OrFq+fDvXMzN7AYRI4zLwbm/xY=; b=h+QV8Iuq85i6GZGXObqY+RfiV
	E+k80uuJJTO/NpQRqm/8avomw3+b0U/8u30o469+TY3ZC38nOOE1s8ihaUdRARNDMZC2MJR9fx5f6
	Ctmr02TqWcB9eo9skIjPRFaYSApp4wucfEv1nGLw+NMRyLS8Ng5fqSj/Lqvnly+lTRbWgv2x1T+hs
	L8mZTZo87PnihFeTCoXqgGW3w32bmi4gkJkGwdPgy47TB5FcVLuJt5inXluQR+TUG4fRhqiv5aphS
	S7VaIUORYYTYQNSr5qJD/yy3xf3BhQ+RdT+pTeD2k0xyaK9eCyG84Uztmv69Hpb/95dfuIMjz+I9q
	Yw9Vn1I0Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP2ZU-00H4Eb-1l; Wed, 24 Mar 2021 12:25:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP2XB-00H3Em-MK
 for barebox@lists.infradead.org; Wed, 24 Mar 2021 12:22:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lP2XB-0006ms-AH; Wed, 24 Mar 2021 13:22:49 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lP2XB-0002nQ-0x; Wed, 24 Mar 2021 13:22:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Mar 2021 13:22:47 +0100
Message-Id: <20210324122247.10683-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210324122247.10683-1-a.fatoum@pengutronix.de>
References: <20210324122247.10683-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_122249_955504_BEED4962 
X-CRM114-Status: GOOD (  14.96  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] mtd: fix possible overflow during mtd size multiplication
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

LGTM[1] flags a couple of places where we write a 32-bit multiplication
result into a 64-bit destination. While it might very well be that
there are more places in need of fixing to support flashes bigger than
4G, fixing these issues is easy and reduces the noise. Do so.

[1]: https://lgtm.com/projects/g/saschahauer/barebox/alerts/?mode=list

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/core.c            | 2 +-
 drivers/mtd/mtdoob.c          | 2 +-
 drivers/mtd/peb.c             | 4 ++--
 drivers/mtd/spi-nor/spi-nor.c | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 22eb2a056c4e..37fccda6be27 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -131,7 +131,7 @@ static struct mtd_erase_region_info *mtd_find_erase_region(struct mtd_info *mtd,
 
 	for (i = 0; i < mtd->numeraseregions; i++) {
 		struct mtd_erase_region_info *e = &mtd->eraseregions[i];
-		if (offset > e->offset + e->erasesize * e->numblocks)
+		if (offset > e->offset + (loff_t)e->erasesize * e->numblocks)
 			continue;
 		return e;
 	}
diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
index 04e064b227cb..19719c4d6279 100644
--- a/drivers/mtd/mtdoob.c
+++ b/drivers/mtd/mtdoob.c
@@ -77,7 +77,7 @@ static int add_mtdoob_device(struct mtd_info *mtd, const char *devname, void **p
 
 	mtdoob = xzalloc(sizeof(*mtdoob));
 	mtdoob->cdev.ops = &mtd_ops_oob;
-	mtdoob->cdev.size = mtd_div_by_wb(mtd->size, mtd) * mtd->oobsize;
+	mtdoob->cdev.size = mtd_div_by_wb(mtd->size, mtd) * (loff_t)mtd->oobsize;
 	mtdoob->cdev.name = basprintf("%s.oob", mtd->cdev.name);
 	mtdoob->cdev.priv = mtdoob;
 	mtdoob->cdev.dev = &mtd->dev;
diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index f3c51a61b4eb..03d96c2a5a7e 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -695,7 +695,7 @@ int mtd_peb_create_bitflips(struct mtd_info *mtd, int pnum, int offset,
 	ops.ooblen = mtd->oobsize;
 
 	for (i = 0; i < pages_per_block; i++) {
-		loff_t offs = (loff_t)pnum * mtd->erasesize + i * mtd->writesize;
+		loff_t offs = (loff_t)pnum * mtd->erasesize + i * (loff_t)mtd->writesize;
 
 		ops.datbuf = buf + i * mtd->writesize;
 		ops.oobbuf = oobbuf + i * mtd->oobsize;
@@ -738,7 +738,7 @@ int mtd_peb_create_bitflips(struct mtd_info *mtd, int pnum, int offset,
 	}
 
 	for (i = 0; i < pages_per_block; i++) {
-		loff_t offs = (loff_t)pnum * mtd->erasesize + i * mtd->writesize;
+		loff_t offs = (loff_t)pnum * mtd->erasesize + i * (loff_t)mtd->writesize;
 
 		ops.datbuf = buf + i * mtd->writesize;
 		ops.oobbuf = oobbuf + i * mtd->oobsize;
diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index bd748ff5b4b3..383916e3f4b0 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1131,7 +1131,7 @@ static int spi_nor_init_params(struct spi_nor *nor,
 	memset(params, 0, sizeof(*params));
 
 	/* Set SPI NOR sizes. */
-	params->size = info->sector_size * info->n_sectors;
+	params->size = info->sector_size * (u64)info->n_sectors;
 	params->page_size = info->page_size;
 
 	/* (Fast) Read settings. */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

