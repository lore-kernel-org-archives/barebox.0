Delivery-date: Tue, 23 May 2023 17:51:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1UID-00AyvK-Ov
	for lore@lore.pengutronix.de; Tue, 23 May 2023 17:51:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1UIB-0008On-6q
	for lore@pengutronix.de; Tue, 23 May 2023 17:51:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kbr1Ds8scYAvG04EJ+Cuy42C7Y/YWJpUk0z1Vou85TY=; b=Je4mnPS3YXrqmt
	6KFDflP/o/Cq9mqIsewBT7D7hsx8aCGUg/9Du0k+I0PVrAEoBn99WfmKLkTQLhVuBiZBmw1Q/iEr1
	0oOAau9k19/pcW4gyoLr5+BkFvBoOKK3hM6E5c1Cvyz15GR4mkyjwJXnKXJkptC64sioJ2bKn4PHd
	DyH7381Je2yy3LNqYHm5OU4VjbNJMnjIlaUC4uGQViyvrhb3S1JOiLb0f7U+UwnlFTVvUzSAJE2HM
	OH/di/pWvpLErtff3IYWQK1gjMZGL5Vy8Ox/OW4rTNiGT03iT2GDmLS8FUPysib6hGyAobuR9DfdK
	Fh9weBYnpAFYh+SflE/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1UGj-00AgXK-0a;
	Tue, 23 May 2023 15:49:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1UGf-00AgW2-2s
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 15:49:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1q1UGc-0007eo-E7; Tue, 23 May 2023 17:49:42 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1q1UGb-002Hmd-QK; Tue, 23 May 2023 17:49:41 +0200
Received: from localhost ([::1] helo=blackshift.org)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1q1UGa-004aJG-T1; Tue, 23 May 2023 17:49:40 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 23 May 2023 17:49:37 +0200
Message-Id: <20230523154939.1074667-2-mkl@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523154939.1074667-1-mkl@pengutronix.de>
References: <20230523154939.1074667-1-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_084945_927809_415C8558 
X-CRM114-Status: GOOD (  10.92  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, kernel@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] ARM: i.MX8MM: InnoComm: fix base address for I2C1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Replace i.MX8MQ with i.MX8MM define.

Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Fixes: e190e932b918 ("ARM: i.MX8MM: add InnoComm WB15 support")
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
index 2f6061f0e263..8fd367047c7d 100644
--- a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
+++ b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
@@ -67,7 +67,7 @@ void innocomm_wb15_power_init_board(void)
 	imx8mm_early_clock_init();
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
 
-	i2c = imx8m_i2c_early_init(IOMEM(MX8MQ_I2C1_BASE_ADDR));
+	i2c = imx8m_i2c_early_init(IOMEM(MX8MM_I2C1_BASE_ADDR));
 
 	pmic_configure(i2c, 0x4b, bd71837_cfg, ARRAY_SIZE(bd71837_cfg));
 }
-- 
2.39.2



