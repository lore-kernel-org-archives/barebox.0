Delivery-date: Tue, 19 Dec 2023 14:23:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFa4k-004aDL-0U
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 14:23:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFa4j-0001iZ-Jd
	for lore@pengutronix.de; Tue, 19 Dec 2023 14:23:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vPNqgT6mboP4XT90xp7PojaCpYsyuTe3bHILjbnWkR4=; b=s9j7PzdRC5nCsHgRUhPFYU6b5O
	YmIvuIAxcsxyI5/OZgmyuy2w8uEIlE6pRx/sK1AiaN9Qy0RW0wHoLUWVKCtaGK/DdnBXrD/A4ouzy
	YzKua2/kS4zkuj62Or++IXa80tCW0gycpWyGd+eo1dhRrq8y4V8H+DfZzR5MB4oFtFNx9TyxyY5PW
	b1o6Q/rxTPicIV0QuEA5BDhEo2+wE6A6MqBbrTClV5/HkS4gG+cXm7hDBCP76uzsUyFF7ebZG/6u6
	HY0FCPPzBHJ8o0xlgfOslUbI4t0XNwVjFSOCd9/Fn6fpMdQ1tpVvO4rIjYw4jmIGbfDVmG4rbexvz
	62TG3pNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFa3i-00EBdp-1U;
	Tue, 19 Dec 2023 13:22:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFa3e-00EBcF-2Y
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 13:22:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFa3d-0001CX-Km; Tue, 19 Dec 2023 14:22:49 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFa3c-0001oR-5B; Tue, 19 Dec 2023 14:22:49 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFa3d-00029l-0e;
	Tue, 19 Dec 2023 14:22:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 14:22:48 +0100
Message-Id: <20231219132248.8281-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_052250_920453_8F79D3BF 
X-CRM114-Status: GOOD (  10.95  )
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
Subject: [PATCH] mci: imx-esdhc: add ls1028a support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index d2a590a967..fb52c7b893 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -408,11 +408,15 @@ static struct esdhc_soc_data usdhc_imx6sx_data = {
 	.clkidx = "per",
 };
 
-static struct esdhc_soc_data esdhc_ls_data = {
+static struct esdhc_soc_data esdhc_ls_be_data = {
 	.flags = ESDHC_FLAG_MULTIBLK_NO_INT | ESDHC_FLAG_BIGENDIAN |
 		 ESDHC_FLAG_LAYERSCAPE,
 };
 
+static struct esdhc_soc_data esdhc_ls_le_data = {
+	.flags = ESDHC_FLAG_MULTIBLK_NO_INT | ESDHC_FLAG_LAYERSCAPE,
+};
+
 static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
 	{ .compatible = "fsl,imx25-esdhc",  .data = &esdhc_imx25_data  },
 	{ .compatible = "fsl,imx50-esdhc",  .data = &esdhc_imx53_data  },
@@ -425,7 +429,8 @@ static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
 	{ .compatible = "fsl,imx8mm-usdhc", .data = &usdhc_imx6sx_data },
 	{ .compatible = "fsl,imx8mn-usdhc", .data = &usdhc_imx6sx_data },
 	{ .compatible = "fsl,imx8mp-usdhc", .data = &usdhc_imx6sx_data },
-	{ .compatible = "fsl,ls1046a-esdhc",.data = &esdhc_ls_data  },
+	{ .compatible = "fsl,ls1028a-esdhc",.data = &esdhc_ls_le_data  },
+	{ .compatible = "fsl,ls1046a-esdhc",.data = &esdhc_ls_be_data  },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, fsl_esdhc_compatible);
-- 
2.39.2



