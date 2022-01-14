Delivery-date: Fri, 14 Jan 2022 11:55:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8KEg-001y77-Sd
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 11:55:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8KEf-0002ST-LI
	for lore@pengutronix.de; Fri, 14 Jan 2022 11:55:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S5f+4FEmHfSW/FhnrKBv9nMFhldsMgL3RjC3sZtHCnM=; b=J57kge0oMxUoY0
	3rtFzYiFXF+45xk1d++tXZjZLQ1KRr6oxEN+JdBcqG8+HNV2JVZY82SUCye514YFgwuL1KwpTRtTW
	vu6jqDiE8riIJOl+SiKg80vmvaGz6Lps/FzIQHb6WhQX0oXmGGp+ytXzZyZibwsUSEnfh2+MwHt9t
	BnH6FTdfzbgUyOHCoLhsJLpwwiu6hknPdF3eZHeSb0a/m+Byo9RIa73e6XuCtyQp9wLHuWyMjEabk
	vQgE6VC/WaifZB65W7Mb3gV7o7Fl4pgdZGk3SEcBHDbfZkH25Rs8oyp7wwKSXYEKi+APkiNMFRMEv
	ZU450WAaFCNsL/LNqNTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8KDK-008nEp-6n; Fri, 14 Jan 2022 10:53:46 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8KDE-008n5X-J5
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 10:53:42 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de
 (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
 by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id
 20EAqsIe289334
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
 for <barebox@lists.infradead.org>; Fri, 14 Jan 2022 11:52:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
 s=v2012061000; t=1642157575;
 bh=pAOsSJcZIoavySJ7+clW2Q0yBC5aXmOuQm/KPWo7q5w=; l=1814;
 h=From:To:Cc:Subject:Date;
 b=hNMV9fDruuzwWvZoIWUgTCgXquPHqQGaRxPGUpz70Iu5TjhU7wSUYoPUX0sX6U+Ck
 Ycbp0q9ga3NAqAV2RdIKdaZpQHdmsE/GljhxRi8sjJjJokY8gq+A/slvrqmApRrrs0
 jQUtWTpTfHD3d6HQhnYJzDk/dzmdiYdWPi5k4pXs=
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local
 [192.168.16.32])
 by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id
 20EAqrjp1067392
 for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de;
 Fri, 14 Jan 2022 11:52:53 +0100
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by
 reddoxx.intern.sigma-chemnitz.de
 (Reddoxx engine) with SMTP id 7D73FA905CB; Fri, 14 Jan 2022 11:52:51 +0100
Received: from ensc-virt.intern.sigma-chemnitz.de
 (ensc-virt.intern.sigma-chemnitz.de [192.168.3.24])
 by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id
 20EAqord284533
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Fri, 14 Jan 2022 11:52:51 +0100
Received: from ensc by ensc-virt.intern.sigma-chemnitz.de with local (Exim
 4.94.2) (envelope-from <ensc@sigma-chemnitz.de>)
 id 1n8KCP-00ApFx-Uj; Fri, 14 Jan 2022 11:52:50 +0100
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Fri, 14 Jan 2022 11:52:35 +0100
Message-Id: <20220114105235.2580174-1-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_025341_141420_46D9DB91 
X-CRM114-Status: GOOD (  11.55  )
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
X-Spam-Status: No, score=-104.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] usb:chipidea-imx: honor "phys" dtree property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Recent kernel devicetrees changed the "fsl,usbphy" property name to
"phys" on some platforms (e.g. iMX8) but the old one was kept on other
platforms (e.g. iMX6).

Check them both in the usb driver by preferring "phys".

NOTE: this fixes a hard lockup when booting NXP linux kernels on iMX8.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 drivers/usb/imx/chipidea-imx.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index f81477885884..bf8b6f1eb88a 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -218,6 +218,7 @@ static int imx_chipidea_probe(struct device_d *dev)
 	struct resource *iores;
 	struct imx_chipidea_data *imx_data;
 	struct imxusb_platformdata *pdata = dev->platform_data;
+	char const *phynode_name;
 	int ret;
 	void __iomem *base;
 	struct imx_chipidea *ci;
@@ -262,8 +263,19 @@ static int imx_chipidea_probe(struct device_d *dev)
 	if (!IS_ERR(ci->clk))
 		clk_enable(ci->clk);
 
-	if (of_property_read_bool(dev->device_node, "fsl,usbphy")) {
-		ci->phy = of_phy_get_by_phandle(dev, "fsl,usbphy", 0);
+	/* Device trees are using both "phys" and "fsl,usbphy".  Prefer the
+	 * more modern former one but fall back to the old one.
+	 *
+	 * Code should be removed when all devicetrees are using "phys" */
+	if (of_property_read_bool(dev->device_node, "phys"))
+		phynode_name = "phys";
+	else if (of_property_read_bool(dev->device_node, "fsl,usbphy"))
+		phynode_name = "fsl,usbphy";
+	else
+		phynode_name = NULL;
+
+	if (phynode_name) {
+		ci->phy = of_phy_get_by_phandle(dev, phynode_name, 0);
 		if (IS_ERR(ci->phy)) {
 			dev_err(dev, "Cannot get phy: %pe\n", ci->phy);
 			return PTR_ERR(ci->phy);
-- 
2.33.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

