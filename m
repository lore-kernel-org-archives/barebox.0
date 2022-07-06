Delivery-date: Wed, 06 Jul 2022 16:22:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o95vP-007nQu-LR
	for lore@lore.pengutronix.de; Wed, 06 Jul 2022 16:22:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o95vR-0007xe-Mr
	for lore@pengutronix.de; Wed, 06 Jul 2022 16:22:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fMXASmxIflzgvasg7lrQ8vZtStLos6TbLnoofqifz54=; b=zfpwqEsh6PfUgU6sDJq0lejgnK
	ziylJWkxp69kBqWrRHhN7j2+P/Bkexxr+xId3setB+Hz3Bj89Y+VrRZwY32PcI6pmlNVzd7/xxZYV
	fJamWtqBb3rBl1BoMGwcwgZ7QuEXDtnNyI/Rgs/4d0owBAXDxjQlVsVbpo7ItoDgyKBwiRTxWfw0J
	Ir/Pb/6+9QzEIy1p+PPirOiL6/Oi081vciXn0BQ+ZwBzX4pr7s1qQbyC8XNnx/EIeoQlLhj4kY1be
	cZLnRLQnJ/LPrf1wnLiyQhrfO9oFUaA5ixmknOcq9+sBCBBVcFd2/4mRhn4DLdMYRusSxy4Z0e7mi
	/6NWFG7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o95u7-00Ab1V-4d; Wed, 06 Jul 2022 14:21:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o95tv-00AawS-3P
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 14:21:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1o95tt-0007c3-Va
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 16:21:10 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o95tp-004mEM-07
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 16:21:08 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o95tr-009WdL-K8
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 16:21:07 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  6 Jul 2022 16:21:04 +0200
Message-Id: <20220706142105.2266956-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220706142105.2266956-1-m.felsch@pengutronix.de>
References: <20220706142105.2266956-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_072111_168213_4BC81AA1 
X-CRM114-Status: GOOD (  16.65  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/4] usb: chipidea: imx: call enable_clk after all resources are requested
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently we enable the clock immediately after requesting it and leave
it on the whole time. Afterwards if the phy request is failing we leave
the usb-controller <-> usb-phy connection in a partly initialized state.
At least on i.MX8M SoCs this can cause strange system hangs during boot.

The (more) correct way would be to have the whole power-domain framework
and the blk-ctrl driver support within barebox. So we can leave the
power-domain in a known good state for linux. Since this is not the case
we can move the clk_enable() call so it gets called after we know that
all ressources are available. So the probability to leave the system in
a partly initialized state is lesser.

Drop the !IS_ERR() since NULL and errors are handled in clk_enable() as
well.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index bf8b6f1eb8..f71cf80b7d 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -260,8 +260,6 @@ static int imx_chipidea_probe(struct device_d *dev)
 	 * devices which have only one.
 	 */
 	ci->clk = clk_get(dev, NULL);
-	if (!IS_ERR(ci->clk))
-		clk_enable(ci->clk);
 
 	/* Device trees are using both "phys" and "fsl,usbphy".  Prefer the
 	 * more modern former one but fall back to the old one.
@@ -302,6 +300,14 @@ static int imx_chipidea_probe(struct device_d *dev)
 	ci->data.drvdata = ci;
 	ci->data.usbphy = ci->usbphy;
 
+	/*
+	 * Enable the clock after we ensured that all resources are available.
+	 * This is crucial since the phy can be missing which and so the
+	 * usb-controller <-> usb-phy communication is only partly initialized.
+	 * This can trigger strange system hangs at least on i.MX8M SoCs.
+	 */
+	clk_enable(ci->clk);
+
 	if ((ci->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_HSIC)
 		imx_chipidea_port_init(ci);
 
-- 
2.30.2



