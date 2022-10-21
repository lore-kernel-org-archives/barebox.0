Delivery-date: Fri, 21 Oct 2022 07:24:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olkWV-002YMu-QO
	for lore@lore.pengutronix.de; Fri, 21 Oct 2022 07:24:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olkWT-0007Ia-4F
	for lore@pengutronix.de; Fri, 21 Oct 2022 07:24:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QgzLt8Wl/XlPfiL+fTy1+37JdPmBS5WB4V004xH1yX4=; b=fbTB8mPOS5qFux5AzFETvuirU+
	hdnGXBZYISTk0AM2W15Ac6QpSHIUMuRMbsIYppfh+f4Oq0+2vNQyY88tOE2m+Hfqg0ol2+A5ZX5y6
	/Bmby52YiAPt47TmHvBk5x6lNcEAvd+gUPAKrkaxfxm3SOggUWlguYfxOOeu8WKTea+BvdbKSq7/R
	zXwYB85RFAFnOE7rXao84ahVfJqpxoYS3rlQXTXy3O45akxoSePxoGvScVvCOcDaE/xZguQDjk07B
	PmutM3mWMWTxQXSsIuxbwZ6+sXeK/YeRxr7wFUhq1JpV9VDqDTXfHNEaLvNwkn1SnX6YwPPUyGsAV
	TEa47s4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olkUk-005PNh-Pp; Fri, 21 Oct 2022 05:22:58 +0000
Received: from relay4-d.mail.gandi.net ([2001:4b98:dc4:8::224])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olkUf-005PKg-2p
	for barebox@lists.infradead.org; Fri, 21 Oct 2022 05:22:55 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id F0216E0002;
	Fri, 21 Oct 2022 05:22:44 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 21 Oct 2022 07:22:40 +0200
Message-Id: <20221021052240.2125785-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_222253_300310_C12FF2BC 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] spi: imx_spi: match fsl,imx6ul-ecspi compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Anticipate imx8mp.dtsi device tree change suggested upstream[1]
and add the new compatible to our match list.

[1]: https://lore.kernel.org/all/20221020103158.2273874-2-peng.fan@oss.nxp.com/

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/spi/imx_spi.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index ad3e79d54ce5..3e0ad2db00ed 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -662,6 +662,10 @@ static __maybe_unused struct of_device_id imx_spi_dt_ids[] = {
 		.compatible = "fsl,imx51-ecspi",
 		.data = &spi_imx_devtype_data_2_3,
 	},
+	{
+		.compatible = "fsl,imx6ul-ecspi",
+		.data = &spi_imx_devtype_data_2_3,
+	},
 #endif
 	{
 		/* sentinel */
-- 
2.34.1



