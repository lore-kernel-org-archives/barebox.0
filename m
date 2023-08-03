Delivery-date: Thu, 03 Aug 2023 12:51:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvm-004wQr-Ug
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:51:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvk-0001yC-Ll
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:51:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2fl2caBSxfEcauleOq9Zhf5+7V3QHtJsLqXyWxl8rkc=; b=AwE4nRgsZdifb+oG/dXVsCxmY/
	E3Zj6Z7+XMYaJwWwZzcBQJhRON9b6qVk8kVkzB1EIZtBkwP+hKuvq2N4sqbfoMMbJrCDDYhQVIDeF
	YRXpC4uzeH6hArOpP7jDqlnlexnt14gpS6bpp57S7+fmYBryiVCFqxfUvLAOzPPVBM/aye/SVrGZ+
	eWBuQ/dZs4d0kGV/u6VZhL3N95Ofzrs92DY7+0zSLaaq49gbTdNlVta7bAmDq6tEAVtcuI4Inmqc0
	Xz4F7Rz+Nkw3H0RJIzIAcKAeeRZOXntwLQSnwidQjOA5LE+M2d0kWFm2e4z5PL4nhxw6NWyKcaXBr
	I1STu9zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVud-007UuO-2s;
	Thu, 03 Aug 2023 10:50:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuD-007UXj-0M
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuB-0000vK-Qo; Thu, 03 Aug 2023 12:50:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuB-000ovI-26; Thu, 03 Aug 2023 12:50:07 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAyx-8Q; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:49:44 +0200
Message-Id: <20230803105003.4088205-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_035009_170482_830489A0 
X-CRM114-Status: GOOD (  15.43  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 03/22] gpio: davinci: Add support for GPIO controllers on TI K3 SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the previous fix this is only a matter of adding the missing
compatible strings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/Kconfig        | 4 ++--
 drivers/gpio/gpio-davinci.c | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index e19f5a5aba..d5467261e5 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -45,8 +45,8 @@ config GPIO_CLPS711X
 
 config GPIO_DAVINCI
 	bool "TI Davinci/Keystone GPIO support"
-	default y if ARCH_DAVINCI
-	depends on (ARM && ARCH_DAVINCI) || COMPILE_TEST
+	default y if ARCH_DAVINCI || ARCH_K3
+	depends on (ARM && (ARCH_DAVINCI || ARCH_K3)) || COMPILE_TEST
 	help
 	  Say yes here to enable GPIO support for TI Davinci/Keystone SoCs.
 
diff --git a/drivers/gpio/gpio-davinci.c b/drivers/gpio/gpio-davinci.c
index 841a06e4a0..831da2fc7f 100644
--- a/drivers/gpio/gpio-davinci.c
+++ b/drivers/gpio/gpio-davinci.c
@@ -179,6 +179,8 @@ static int davinci_gpio_probe(struct device *dev)
 }
 
 static struct of_device_id davinci_gpio_ids[] = {
+	{ .compatible = "ti,keystone-gpio", },
+	{ .compatible = "ti,am654-gpio", },
 	{ .compatible = "ti,dm6441-gpio", },
 	{ /* sentinel */ },
 };
-- 
2.39.2



