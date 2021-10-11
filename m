Delivery-date: Mon, 11 Oct 2021 10:05:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZqJK-0007PL-8P
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 10:05:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZqJJ-0006m0-3D
	for lore@pengutronix.de; Mon, 11 Oct 2021 10:05:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xIpCs7hEmq24gR9yFP7XZo0/QuOsBRgovnn2/6oEoU=; b=CxQ9PCXObOIPmW
	zMoQy4RjN1yfDCLwKYoIZ0EGD1HCvx6b0olHIZBdgjBqKnkBuRz+oGeBPMPQpCHNq4Gz4nKDvvfEp
	CK6t8TTkHOsUn7AYbDVAVJ51t1rYJx7f6sIKe8oxFmCo89ydgtdIy8N+nX01QA73lb7So0L/eP2O9
	0omxb5qmSTCGQRTmhO/RvrJWoq6SA0DYQZ+imAaoFOoJscZZ7GbHYVqL9aGeL0uYwfnp7td9r9GKF
	3CHgMWvMxHHHhhQuVIj2qi56PKp3SZ22xNqlO8X1OnuG/Deaky8n/UOzfm+AKF/dZkKmIEQwZyriT
	WYCcR3fjj9kZ8SXuHogw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZqI4-008DRP-Hm; Mon, 11 Oct 2021 08:04:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZqHl-008DJq-D4
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 08:03:52 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZqHk-0006Do-5j; Mon, 11 Oct 2021 10:03:48 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mZqHj-0009hz-8V; Mon, 11 Oct 2021 10:03:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 11 Oct 2021 10:03:41 +0200
Message-Id: <20211011080346.37197-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211011080346.37197-1-s.hauer@pengutronix.de>
References: <20211011080346.37197-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_010349_513886_10C1E04B 
X-CRM114-Status: GOOD (  11.37  )
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
Subject: [PATCH 4/9] phy: rockchip-inno-usb2: handle disabled child nodes
 gracefully
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When child nodes of the phy node are disabled then
of_platform_device_create() on them returns a NULL pointer. Make sure we
skip initialization for these disabled nodes and also skip them when
iterating over them in the xlate function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 37c2ae1d16..6b9d54f344 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -264,6 +264,9 @@ static struct phy *rockchip_usb2phy_of_xlate(struct device_d *dev,
 	int port;
 
 	for (port = 0; port < 2; port++) {
+		if (!rphy->phys[port].phy)
+			continue;
+
 		if (phynode == rphy->phys[port].phy->dev.device_node) {
 			p = &rphy->phys[port];
 			return p->phy;
@@ -438,6 +441,9 @@ static int rockchip_usb2phy_probe(struct device_d *dev)
 			return -EINVAL;
 
 		phydev = of_platform_device_create(child, dev);
+		if (!phydev)
+			continue;
+
 		of_platform_device_dummy_drv(phydev);
 
 		phy = phy_create(phydev, child, &rockchip_usb2phy_ops);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

