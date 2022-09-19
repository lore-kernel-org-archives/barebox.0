Delivery-date: Mon, 19 Sep 2022 10:03:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkJ-009ODs-Jv
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 10:03:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkH-0000Uj-GG
	for lore@pengutronix.de; Mon, 19 Sep 2022 10:03:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zT8Cftks5MjxIE1PjrRJZVuhFzQ7FK0jN8qabHLS8IY=; b=drjLtR5p/OgEl4ISaO6F2P1/++
	7GqOQ4UDfdDBj9Vo9zJqBcHq8FHnx6io4yTxKIqJrSgOxc044yFZt/c4HtRAy1+ck42k4HGXkP1JP
	Ppico+Hh2ROyH+02n6LKoBPVYdqZZakV447NrOe2WRitBlpFQI8oq97GH+3z0sXQYFZhxF+I9NqGT
	4wwfFH8XtoIRL940Nsr+tKVRibOuozHzPLwlYtytsYg4SwGQPfb0jRST6jwjRhEOC8LrEkmdA9Deq
	q3Iq4e6lipo3Nk0nY9lIDmYVwFkbR05PecoyMlQRI0CDzUgVrkF2+CHLu+ZwvMdCxibN+QOGcBx7z
	dvcjcwRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBiq-009fU0-JA; Mon, 19 Sep 2022 08:01:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBik-009fOZ-3n
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 08:01:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBii-0008L4-IN; Mon, 19 Sep 2022 10:01:36 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBij-001cXU-7l; Mon, 19 Sep 2022 10:01:35 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBig-003gfD-Hj; Mon, 19 Sep 2022 10:01:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Sep 2022 10:01:32 +0200
Message-Id: <20220919080133.877651-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220919080133.877651-1-s.hauer@pengutronix.de>
References: <20220919080133.877651-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_010138_193131_4FB07C7A 
X-CRM114-Status: GOOD (  13.71  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] net: ks8851_mll: Allocate own receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use a driver private buffer as network receive buffer rather than the
globally allocated ones which will be removed soon.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/ks8851_mll.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
index b037e19633..7609623ad1 100644
--- a/drivers/net/ks8851_mll.c
+++ b/drivers/net/ks8851_mll.c
@@ -366,6 +366,7 @@ struct ks_net {
 	void __iomem		*hw_addr_cmd;
 	struct platform_device	*pdev;
 	int			bus_width;
+	void			*rx_buf;
 };
 
 #define BE3             0x8000      /* Byte Enable 3 */
@@ -659,7 +660,6 @@ static void ks_setup(struct ks_net *ks)
 static int ks8851_rx_frame(struct ks_net *ks)
 {
 	struct device_d *dev = &ks->edev.dev;
-	u16 *rdptr = (u16 *) NetRxPackets[0];
 	u16 RxStatus, RxLen = 0;
 	u16 tmp_rxqcr;
 
@@ -679,14 +679,14 @@ static int ks8851_rx_frame(struct ks_net *ks)
 	tmp_rxqcr = ks_rdreg16(ks, KS_RXQCR);
 	ks_wrreg16(ks, KS_RXQCR, tmp_rxqcr | RXQCR_SDA);
 	/* read 2 bytes for dummy, 2 for status, 2 for len*/
-	ks_inblk(ks, rdptr, 2 + 2 + 2);
-	ks_inblk(ks, rdptr, ALIGN(RxLen, 4));
+	ks_inblk(ks, ks->rx_buf, 2 + 2 + 2);
+	ks_inblk(ks, ks->rx_buf, ALIGN(RxLen, 4));
 	ks_wrreg16(ks, KS_RXQCR, tmp_rxqcr);
 
 	if (RxStatus & RXFSHR_RXFV) {
 		/* Pass to upper layer */
 		dev_dbg(dev, "passing packet to upper layer\n\n");
-		net_receive(&ks->edev, NetRxPackets[0], RxLen);
+		net_receive(&ks->edev, ks->rx_buf, RxLen);
 		return RxLen;
 	} else if (RxStatus & RXFSHR_ERR) {
 		dev_err(dev, "RxStatus error 0x%04x\n", RxStatus & RXFSHR_ERR);
@@ -827,6 +827,7 @@ static int ks8851_probe(struct device_d *dev)
 	ks->hw_addr_cmd = IOMEM(iores->start);
 
 	ks->bus_width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
+	ks->rx_buf = xmalloc(PKTSIZE);
 
 	edev->init = ks8851_init_dev;
 	edev->open = ks8851_eth_open;
-- 
2.30.2



