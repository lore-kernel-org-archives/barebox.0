Delivery-date: Tue, 30 Aug 2022 10:13:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSwNC-001Vti-SR
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 10:13:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSwNB-0002W1-2m
	for lore@pengutronix.de; Tue, 30 Aug 2022 10:13:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+Zez/7JwYNFKB9iVKopKFrE9fRl/RcTqE7Tf05pF8ZA=; b=oXEWrllG0RLev1CPNxonBeEreZ
	FSSPPkRWKkfBbv0v+/M6WKl3L4moiq6RJsZwOFYKDyjcJUTMwklI/jEtJYbwmkPhU/z1P88rWP1M5
	ZoNGGofgRzDYYQkci7QOTb0Yxs2wIWX07UHcNMLYHNB1PBic0et4/nMvpjm2CMoiD3FLf5Z0r8CIq
	RadLAJc0HjCcSbr3dpfBtDKezPWtjFQSt70xi5oA/8arO7FMKDw95PAgOZySTPoGohsdJGRnikAZy
	Y9bdc0N9SPe8R4OhrQoRh5Dssa45v/H3jOpFgbCP7J5F6FugzZzgqvNICGMWeQbCcJ2dBIwA7OiEl
	kCHhaB3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSwLc-00F53O-70; Tue, 30 Aug 2022 08:11:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSwGK-00F2eH-PL
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 08:06:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1oSwGG-0001SK-Uc; Tue, 30 Aug 2022 10:06:16 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1oSwGG-002pKK-8k; Tue, 30 Aug 2022 10:06:16 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1oSwGF-001pzh-JN; Tue, 30 Aug 2022 10:06:15 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Johannes Zink <j.zink@pengutronix.de>
Date: Tue, 30 Aug 2022 10:06:13 +0200
Message-Id: <20220830080613.438124-1-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_010621_998596_15B6D983 
X-CRM114-Status: GOOD (  14.49  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] drivers: mtd: nand: nand_mxs: enable nand_mxs on imx7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The i.MX7 GPMI NAND controller is completely backwards compatible with
the version of the IP on the i.MX6. There are additional features like
increased ECC strength, that we may want to use in future, but for now
treating it the same as an i.MX6 works without problems.

Since the gpmi_nand driver requires the MXS_APBH_DMA driver, also switch it on.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 drivers/dma/Kconfig         | 2 +-
 drivers/mtd/nand/nand_mxs.c | 3 +++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
index 4802bf522d..46b9b90d82 100644
--- a/drivers/dma/Kconfig
+++ b/drivers/dma/Kconfig
@@ -3,7 +3,7 @@ menu "DMA support"
 
 config MXS_APBH_DMA
 	tristate "MXS APBH DMA ENGINE"
-	depends on ARCH_IMX23 || ARCH_IMX28 || ARCH_IMX6
+	depends on ARCH_IMX23 || ARCH_IMX28 || ARCH_IMX6 || ARCH_IMX7
 	select STMP_DEVICE
 	help
 	  Experimental!
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 6f707f9b17..8991758e2b 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -2271,6 +2271,9 @@ static __maybe_unused struct of_device_id gpmi_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx6q-gpmi-nand",
 		.data = (void *)GPMI_IMX6,
+	}, {
+		.compatible = "fsl,imx7d-gpmi-nand",
+		.data = (void *)GPMI_IMX6,
 	}, {
 		/* sentinel */
 	}
-- 
2.30.2



