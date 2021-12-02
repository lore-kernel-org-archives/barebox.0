Delivery-date: Thu, 02 Dec 2021 08:44:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1msglM-0006aX-Dy
	for lore@lore.pengutronix.de; Thu, 02 Dec 2021 08:44:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1msglL-0002lf-Cn
	for lore@pengutronix.de; Thu, 02 Dec 2021 08:44:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kHlDpogzJ1xuQyR0+R2Q/s/Yt9qwIN3H9uOeXtmjbio=; b=SK6bsDOsKK6m6y
	F2+RpVtbdG9ON9C6gcdIkGaveAPZz7UWY7C/zVlh6ZGwRiaF+uOTHIBQsJ3Fxqe/wFA6XUDH5Ij1E
	NRwJIqk6NwC3l+omskKjSkFq6AoToGS2BgTIEaUlDbYplY5UwIHK0biQkdb/p/A1cXBKrcovELKLj
	4eCEIF1EzkPK4YlGAVtLyHGLlfVsmin/6Alz8aMPDRhy2VLTCLPt29lTZgGKR+DpRqAkfVDHqw2lG
	B3BNSzzBMf6AhA//MdFNQWFNyNlvDIXmPmGYkEY7jbQum1Wdkc8YfU5M3scl8wVnZzSQU4zsCBX8a
	7CggW1mIqrp9/YBZo+yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msgjs-00BD7f-0e; Thu, 02 Dec 2021 07:42:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msgjn-00BD76-8z
 for barebox@lists.infradead.org; Thu, 02 Dec 2021 07:42:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1msgjm-0002TE-3B; Thu, 02 Dec 2021 08:42:38 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1msgjl-000pIY-Ja; Thu, 02 Dec 2021 08:42:37 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Dec 2021 08:42:36 +0100
Message-Id: <20211202074236.196396-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_234239_333322_5DE48EC1 
X-CRM114-Status: GOOD (  10.67  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] phy: rockchip-inno-usb2: add support for older rockchip SoC
 bindings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Anything earlier than the rv1108, has no rockchip,usbgrf regmap and
instead access the parent device's regmap. Add support for this binding,
so the driver is usable on the rk3399.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 6b9d54f34460..459ad9b35534 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -392,7 +392,12 @@ static int rockchip_usb2phy_probe(struct device_d *dev)
 
 	rphy->dev = dev;
 
-	rphy->grf_base = syscon_regmap_lookup_by_phandle(np, "rockchip,usbgrf");
+	if (of_device_is_compatible(np, "rockchip,rv1108-usb2phy") ||
+	    of_device_is_compatible(np, "rockchip,rk3568-usb2phy"))
+		rphy->grf_base = syscon_regmap_lookup_by_phandle(np, "rockchip,usbgrf");
+	else
+		rphy->grf_base = syscon_node_to_regmap(dev->parent->device_node);
+
 	if (IS_ERR(rphy->grf_base))
 		return PTR_ERR(rphy->grf_base);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

