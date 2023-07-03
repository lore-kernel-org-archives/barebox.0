Delivery-date: Mon, 03 Jul 2023 19:22:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGNGH-00Dpty-9Q
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 19:22:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGNGE-00087z-T3
	for lore@pengutronix.de; Mon, 03 Jul 2023 19:22:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JGl2qaKgtaulanX0Dks/05LAtXO3Nbt1Pz1ZQ830mgc=; b=Uyv6tUXqurI/gUgH8c+VJNIRRY
	S893wc9/1wWJmGSl2V3pdMseyeZIKJ0inbkCQRniEneDAr+0pEuCCmedBnB7aUBIe3BF0gwOSRhn/
	4sNomB5JdQx6+b9URK8wGNDEoLiXzSzuLKWW0hyZwNgNTXvYX8uNV5oxJAhpvVOgSaGOsgahe/gvk
	IXcbLjcIEZ4bYlIXQIbWanA/NHkqnaDvWAtCIXbSF9KQfnB4XGsHZ011PAPtygS7L/jJW+T5IZDYt
	yj8LhCOInkOPaDe0FDDyNY9aTqlLxbd2MU1kzCnV7bgS89LUcXr14tfBqBuO1CdxtTfQ33pIIwfZx
	5N1hw3rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGNEU-00B5gm-21;
	Mon, 03 Jul 2023 17:21:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGNER-00B5fn-1G
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 17:21:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qGNEO-0007vE-UG; Mon, 03 Jul 2023 19:20:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qGNEO-00Br25-BT; Mon, 03 Jul 2023 19:20:56 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qGNEN-002FgW-2h;
	Mon, 03 Jul 2023 19:20:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jul 2023 19:20:54 +0200
Message-Id: <20230703172054.536931-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230703172054.536931-1-a.fatoum@pengutronix.de>
References: <20230703172054.536931-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_102059_960224_85DC05C8 
X-CRM114-Status: GOOD (  10.11  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] soc: imx: have IMX8M_FEATCTRL select IMX_OCOTP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

IMX8M_FEATCTRL selects FEATURE_CONTROLLER, so of_feature_controller_check()
will return an error if the feature controller driver is missing.

Given that the default for IMX_OCOTP is n, but for IMX8M_FEATCTRL is y,
this error case is easily hit. Resolve this by selecting IMX_OCOTP when
IMX8M_FEATCTRL is enabled.

Reported-by: Bastian Krause <bst@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/soc/imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index b11db718c2bc..71f72eb4802b 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -11,6 +11,7 @@ config IMX8M_FEATCTRL
 	bool "i.MX8M feature controller"
 	depends on ARCH_IMX8M
 	select FEATURE_CONTROLLER
+	select IMX_OCOTP
 	default y
 	help
 	  This driver disables device tree nodes that are not applicable
-- 
2.39.2



