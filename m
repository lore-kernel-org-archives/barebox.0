Delivery-date: Tue, 07 Nov 2023 15:17:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r0Mtl-001OV5-05
	for lore@lore.pengutronix.de;
	Tue, 07 Nov 2023 15:17:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r0Mtl-0005Mg-2g
	for lore@pengutronix.de; Tue, 07 Nov 2023 15:17:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=02opXXUPJnkabQmpaUZPr2wX3v7nRYeOEi8vBbL5z8E=; b=HuBsPj/mtiDj/Vklox7co7Vhhu
	Eeq8VODFfYeQa4poMR8RkHi3fNuSsLxsqmFcgsY1woqRMls/3hcDgSpV9z2DELghete6p3/ymqSzv
	sasC9Rcc7M9EoQqsVTsRMyl3Z6i5gGvK/A2JyvpZg3i8RNwiUzcepYIfNiJSdIwbFF+hvHjGT2xd2
	ylu0HXSO38/wF8r6ncrktyLaPAeerWA7RbXa+nUPyHa8jPriUby7DDPSpVM3Fs8+24nohpdVTEuVz
	2OMaYyav0Ypr0PHxCMpct82Ge0hfDCl7ABhRfXfPuJVHaSsQP5fyn4ZpKMisIo3hpfaQs52IkIiSU
	T3J003xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0MsF-001i40-2H;
	Tue, 07 Nov 2023 14:16:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0MsB-001i3S-2t
	for barebox@lists.infradead.org;
	Tue, 07 Nov 2023 14:16:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r0Ms4-00054B-Ln; Tue, 07 Nov 2023 15:16:00 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r0Ms4-007JPK-9P; Tue, 07 Nov 2023 15:16:00 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r0Ms4-00BRtY-0i;
	Tue, 07 Nov 2023 15:16:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  7 Nov 2023 15:15:59 +0100
Message-Id: <20231107141559.2728828-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_061607_959739_7D54D2AC 
X-CRM114-Status: GOOD (  11.15  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] spi: spi-nxp-fspi: Fix error checks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have to check dev_request_mem_resource() for errors, not the resource
address it returns.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/spi-nxp-fspi.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/spi-nxp-fspi.c b/drivers/spi/spi-nxp-fspi.c
index 1d6604fee3..d8675779da 100644
--- a/drivers/spi/spi-nxp-fspi.c
+++ b/drivers/spi/spi-nxp-fspi.c
@@ -993,18 +993,19 @@ static int nxp_fspi_probe(struct device *dev)
 
 	/* find the resources */
 	res = dev_request_mem_resource(dev, 0);
-	f->iobase = IOMEM(res->start);
-	if (IS_ERR(f->iobase)) {
-		ret = PTR_ERR(f->iobase);
+	if (IS_ERR(res)) {
+		ret = PTR_ERR(res);
 		goto err_put_ctrl;
 	}
 
+	f->iobase = IOMEM(res->start);
+
 	res = dev_request_mem_resource(dev, 1);
-	f->ahb_addr = IOMEM(res->start);
-	if (IS_ERR(f->ahb_addr)) {
-		ret = PTR_ERR(f->ahb_addr);
+	if (IS_ERR(res)) {
+		ret = PTR_ERR(res);
 		goto err_put_ctrl;
 	}
+	f->ahb_addr = IOMEM(res->start);
 
 	/* assign memory mapped starting address and mapped size. */
 	f->memmap_phy = res->start;
-- 
2.39.2



