Delivery-date: Wed, 13 Apr 2022 14:39:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1necH2-000i55-VR
	for lore@lore.pengutronix.de; Wed, 13 Apr 2022 14:39:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1necH0-0001ia-6W
	for lore@pengutronix.de; Wed, 13 Apr 2022 14:39:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VLx2N1EjzRhM/IWrfjKD7R72VoP2HdRIBQWKN02sAoo=; b=S2qMQAaB06C5Xm
	ciqxWpijcEVyf+dec4I0B7M5ZxLxfIF2HlyxF8hYZNkESxSImR//RkmNWEXRJdbydvkCUsYpDPuru
	UkNuDl/kFlESNyWUpkLSB8H3lHnFfNjOoNmzqbGvWhozMxS1pL5L9aPhG26ytUs3Zrxx8yRcCJvfR
	0b0u47iYkM3APR7JG4oH5RKxx38KkZILy+mF3FdkGmaL+zzu2tE02KOMDT3Ftp1IPqTBoipsgFl5Y
	uiwA+cVBeLX70GRWOwRXBh9pZEvqr5MYoCNhR68k9EEruDWVmjWXe0lI1+VH/MJ90AJ17M8wgeoZE
	K4pK5yQI7zXcsaUfmRNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1necFO-0011mz-Dn; Wed, 13 Apr 2022 12:37:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1necFJ-0011l1-La
 for barebox@lists.infradead.org; Wed, 13 Apr 2022 12:37:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1necFD-0001VG-46; Wed, 13 Apr 2022 14:37:11 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1necFD-002mhK-Rs; Wed, 13 Apr 2022 14:37:10 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1necFB-002cH3-A6; Wed, 13 Apr 2022 14:37:09 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 13 Apr 2022 14:37:08 +0200
Message-Id: <20220413123708.623736-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_053717_739737_74DD6F9D 
X-CRM114-Status: GOOD (  11.26  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1] net: designware: eqos: fix link speed configuration for
 speed < 1000
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Put phy_device_connect() after MAC/DMA reset, otherwise link speed
configuration will be zeroed by the MAC/DMA reset. By an accident zero
configuration equal to the speed 1000, so it was still working for many users.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/designware_eqos.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 6b372e4274..d93cccd634 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -390,11 +390,6 @@ static int eqos_start(struct eth_device *edev)
 	int ret;
 	int i;
 
-	ret = phy_device_connect(edev, &eqos->miibus, eqos->phy_addr,
-				 eqos->ops->adjust_link, 0, eqos->interface);
-	if (ret)
-		return ret;
-
 	setbits_le32(&eqos->dma_regs->mode, EQOS_DMA_MODE_SWR);
 
 	ret = readl_poll_timeout(&eqos->dma_regs->mode, mode_set,
@@ -405,6 +400,11 @@ static int eqos_start(struct eth_device *edev)
 		return ret;
 	}
 
+	ret = phy_device_connect(edev, &eqos->miibus, eqos->phy_addr,
+				 eqos->ops->adjust_link, 0, eqos->interface);
+	if (ret)
+		return ret;
+
 	/* Reset above clears MAC address */
 	eqos_set_ethaddr(edev, eqos->macaddr);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

