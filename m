Delivery-date: Mon, 21 Mar 2022 10:27:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWEKD-001EqL-9T
	for lore@lore.pengutronix.de; Mon, 21 Mar 2022 10:27:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWEKF-0004sM-BW
	for lore@pengutronix.de; Mon, 21 Mar 2022 10:27:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YeWuzTNJ4w3ti2FbQIsrFg0PJzyKxwVJq8uhMtQaOSQ=; b=x1LeLyW1cW0MqX
	sDFd5581YJXsFvezAUdzU/rRISjgnP0K2AAViHD5CvVoqczeDandy8czNaOwtUoq6zLmH7iMki0Vz
	qETzKxYBFeA0Bob6lC8ILUGGxphu8fWJDZFlMUx0LZp9WFwpeMlFEViswhQEM/nHYT6miAhx7lehm
	F+pUChtkC17d2qLZiylfEVGADY/GIrSkRRM1kumHvl8wU6mkDiRqdbdE1w2UCbBcKHDu38wp44xC5
	RO9vrPPhzPpd1PYdWoR3VlBtWT4B3jSfgYX7SkDcY9uKwuE9DabjHFUPsLTvQW/DgWJtr6mfvxSZc
	+ovbJpngBxTFDOBy5yFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWEJ2-0079Ql-7e; Mon, 21 Mar 2022 09:26:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWEIk-0079Jf-2m
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 09:26:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nWEIi-0004Cb-O6; Mon, 21 Mar 2022 10:26:08 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nWEIh-0067nY-Vo; Mon, 21 Mar 2022 10:26:07 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 21 Mar 2022 10:26:05 +0100
Message-Id: <20220321092606.1459834-9-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220321092606.1459834-1-o.rempel@pengutronix.de>
References: <20220321092606.1459834-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_022610_227318_FBF2F889 
X-CRM114-Status: UNSURE (   9.80  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 8/9] net: phy: make sure MDIO bus is probed if we search
 for the PHY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For DSA support we need to work with multiple MDIO buses. So, we need to
make that MDIO bus node is probed before on on request of DSA switch
registration.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/phy.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index e8e8dad5bd..299e12b325 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -350,6 +350,7 @@ static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
 		return NULL;
 
 	if (!of_property_read_u32(phy_node, "reg", &addr)) {
+		of_device_ensure_probed(phy_node->parent);
 		for_each_mii_bus(bus) {
 			if (bus->parent->device_node == phy_node->parent) {
 				struct phy_device *phy = mdiobus_scan(bus, addr);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

