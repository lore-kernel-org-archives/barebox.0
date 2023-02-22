Delivery-date: Wed, 22 Feb 2023 13:25:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUoBI-00FJLs-Jm
	for lore@lore.pengutronix.de; Wed, 22 Feb 2023 13:25:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUoBH-0001Yj-G8
	for lore@pengutronix.de; Wed, 22 Feb 2023 13:25:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FCkpUzWuVyIV2cC6nBTGjv0s5W6tjMGyk1I1SbtkFnQ=; b=0ICOno2v2ecbbIUm/GhO9gUTF1
	yalHVZpqfJqIWXC1mdS9+JMyBEP0jJCDfM+q0+3KfHrMeCYLK4t0DEpvjnVKanHNgYJgQmQycEU6L
	E/hfrCZCN6F/37MrfWIIro0SqAjUmh9kp3Jy3IdAfwG1Nql6ohWbJkiguIPNEml/JcxOzDiwdX3Rk
	ilbe6hNpQxJJQ0u5FLcahIzjE93JUxx0DFaVClOC87KXxIaTs7Zdj9r9AlVtjc6zwCFWzSSt2wuEI
	9k+BgkIM/LeQjyloZxOZY644H8i/t1tDf505BA5M32VEqsD1P186cbNMR4UoekYNg83ISq6n2uhw2
	3ZoYSkFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUo9m-00CMdV-0I; Wed, 22 Feb 2023 12:23:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUo9d-00CMbP-Oe
	for barebox@lists.infradead.org; Wed, 22 Feb 2023 12:23:27 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1pUo9Z-0001S3-TR; Wed, 22 Feb 2023 13:23:21 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	afa@pengutronix.de,
	Bastian Krause <bst@pengutronix.de>
Date: Wed, 22 Feb 2023 13:23:20 +0100
Message-Id: <20230222122320.1494205-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_042325_831804_741E14C7 
X-CRM114-Status: UNSURE (   7.95  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: make DRIVER_NET_DESIGNWARE_IMX8 select MFD_SYSCON
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The driver includes mfd/syscon.h and uses
syscon_regmap_lookup_by_phandle():

  eqos-imx8 30bf0000.ethernet@30bf0000.of: probe failed: Function not implemented

Select MFD_SYSCON to fix this.

Fixes: b6fb740819 ("net: eqos: add i.MX8MP support")
Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 drivers/net/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index a9fc073d57..25b46ccb11 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -111,6 +111,7 @@ config DRIVER_NET_DESIGNWARE_IMX8
 	bool "Designware EQOS i.MX8 Ethernet driver"
 	depends on HAS_DMA && COMMON_CLK && OFTREE && (ARCH_IMX8M || COMPILE_TEST)
 	select DRIVER_NET_DESIGNWARE_EQOS
+	select MFD_SYSCON
 	help
 	  This option enables support for the Designware EQOS MAC implemented on
 	  the NXP i.MX8 SoCs.
-- 
2.30.2



