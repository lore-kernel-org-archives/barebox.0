Delivery-date: Sat, 30 Oct 2021 20:00:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgseW-0001FI-8D
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 20:00:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgseU-0002jP-HN
	for lore@pengutronix.de; Sat, 30 Oct 2021 20:00:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXXdF9uEzSe5LeBlPvqq2oo65zraKX+W9in8Tl7ZuBI=; b=KjozDwkUb6i0ct
	IE7vFwMDcL3X+Z+qhxPlsKX9hmwdhbFoBiCLYDzHdOETIT26XajBN3h8xdNqQzfAnctKRIExLOPwd
	PnTCtc6N/vNOxm95B/9ATz7OINHMYYBODYglXKetBgQZbkNdPkTy/qfbILtXIJdUJYwcINB5DuFMl
	TnDwOh4k2ve4D96DodmfDHSjFEG0I1qCwRQJr/eF0xjzr//tSTAaL6346ayIMWQMJFu7Bc2Y3TWTK
	gcwNWC2NjGYSN0ApHLkjksanY5xoxxHnS/j47ElScRZRH4i2rX3iM3m6XAzFhBBo3RNQzFgQxG7fH
	WKsiLweZFR/Ul6h9AOTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgsdC-00DNfz-V8; Sat, 30 Oct 2021 17:59:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgsch-00DNMz-DJ
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 17:58:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgscQ-00020X-4f; Sat, 30 Oct 2021 19:58:14 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgscP-009YIT-8u; Sat, 30 Oct 2021 19:58:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 19:58:08 +0200
Message-Id: <20211030175812.2276705-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211030175812.2276705-1-a.fatoum@pengutronix.de>
References: <20211030175812.2276705-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_105831_493521_D53E9BC4 
X-CRM114-Status: GOOD (  10.65  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/9] mtd: remove NULLness check for IOMEM()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While ioremap can fail, IOMEM() in our identity-mapped barebox can't.
Thus remove the never entered error branches.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/nand/atmel_nand.c         |  8 --------
 drivers/mtd/spi-nor/cadence-quadspi.c | 10 ----------
 2 files changed, 18 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 6bb41854e06b..cbd03e581b93 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -853,10 +853,6 @@ static int __init atmel_pmecc_nand_init_params(struct device_d *dev,
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 	host->ecc = IOMEM(iores->start);
-	if (IS_ERR(host->ecc)) {
-		dev_err(host->dev, "ioremap failed\n");
-		return -EIO;
-	}
 
 	iores = dev_request_mem_resource(dev, 2);
 	if (IS_ERR(iores)) {
@@ -1210,10 +1206,6 @@ static int atmel_hw_nand_init_params(struct device_d *dev,
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 	host->ecc = IOMEM(iores->start);
-	if (IS_ERR(host->ecc)) {
-		dev_err(host->dev, "ioremap failed\n");
-		return -EIO;
-	}
 
 	/* ECC is calculated for the whole page (1 step) */
 	nand_chip->ecc.size = mtd->writesize;
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 72d1f4e7cec4..11423421692b 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -1192,21 +1192,11 @@ static int cqspi_probe(struct device_d *dev)
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 	cqspi->iobase = IOMEM(iores->start);
-	if (IS_ERR(cqspi->iobase)) {
-		dev_err(dev, "dev_request_mem_region 0 failed\n");
-		ret = PTR_ERR(cqspi->iobase);
-		goto probe_failed;
-	}
 
 	iores = dev_request_mem_resource(dev, 1);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 	cqspi->ahb_base = IOMEM(iores->start);
-	if (IS_ERR(cqspi->ahb_base)) {
-		dev_err(dev, "dev_request_mem_region 0 failed\n");
-		ret = PTR_ERR(cqspi->ahb_base);
-		goto probe_failed;
-	}
 
 	cqspi_wait_idle(cqspi);
 	cqspi_controller_init(cqspi);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

