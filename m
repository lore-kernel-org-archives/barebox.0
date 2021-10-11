Delivery-date: Mon, 11 Oct 2021 10:05:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZqJW-0007RL-FY
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 10:05:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZqJV-0006qv-Bu
	for lore@pengutronix.de; Mon, 11 Oct 2021 10:05:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7MrRX/RX4D3v1YsiAvV/iIyVzh5+LiY3M1A8qh0BFc=; b=4Pb+TCfJUPyzQw
	ae8KnPe8Llw09AnVNG4OURF0sKU/CnIq+oNG99tCj/qO5HhqrbPIq4nrvjVM2QgDMquMmHvwQ29CS
	Fka4p8XeREkhkEAuKhADCRFTcvx96fYvyqVmhAi5R5ziusbcjGVWxJP3koGvepf4AR++9uUUAUg+9
	1icIZw3e793HBQXkBSeFbXK1Ee9M2rg4SkWWLermOYw+mrmSux08GEeNEjM9JF9tyWfqO/DIw2S0F
	YcGMwEGF6CjRNe5MShMlM4nqD8SFiB8fnnAzPtvAh4NiRRJdpsMQnkWFoXBye+bKO37WfdrXAtmFe
	U+t2w5Fq0TUFndkwmJvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZqI9-008DTx-IO; Mon, 11 Oct 2021 08:04:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZqHt-008DN6-77
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 08:03:58 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZqHj-0006Dl-TJ; Mon, 11 Oct 2021 10:03:47 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mZqHj-0009hq-70; Mon, 11 Oct 2021 10:03:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 11 Oct 2021 10:03:38 +0200
Message-Id: <20211011080346.37197-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211011080346.37197-1-s.hauer@pengutronix.de>
References: <20211011080346.37197-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_010357_280619_68B1E401 
X-CRM114-Status: GOOD (  11.87  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/9] phy: rockchip: Add dummy driver for child node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To satisfy deep probe mechanism.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index bb1a5c747e..37c2ae1d16 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -423,6 +423,7 @@ static int rockchip_usb2phy_probe(struct device_d *dev)
 	for_each_child_of_node(np, child) {
 		struct rockchip_usb2phy_phy *p;
 		struct phy *phy;
+		struct device_d *phydev;
 
 		if (!strcmp(child->name, "host-port")) {
 			port = USB2PHY_PORT_OTG;
@@ -436,7 +437,10 @@ static int rockchip_usb2phy_probe(struct device_d *dev)
 		if (rphy->phys[port].phy)
 			return -EINVAL;
 
-		phy = phy_create(dev, child, &rockchip_usb2phy_ops);
+		phydev = of_platform_device_create(child, dev);
+		of_platform_device_dummy_drv(phydev);
+
+		phy = phy_create(phydev, child, &rockchip_usb2phy_ops);
 		if (IS_ERR(phy)) {
 			ret = PTR_ERR(phy);
 			if (ret != -EPROBE_DEFER)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

