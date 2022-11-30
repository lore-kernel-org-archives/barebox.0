Delivery-date: Wed, 30 Nov 2022 12:53:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0Lf0-0068uh-D4
	for lore@lore.pengutronix.de; Wed, 30 Nov 2022 12:53:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0Lez-0005PO-R4
	for lore@pengutronix.de; Wed, 30 Nov 2022 12:53:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ymVH2JwKBhYt/5Pjo8CDBBivMq6sMqEQldvSPzFF3+Y=; b=ic3qDQ43TA+slHGydC7UyhfMFP
	vyAvDvL91hRMBK+O7f2g7FcNy/onvnJ5GP8eQgJqCOK1GdXpyHtESUT68omccdoSkVsPsx9Ma0Rin
	lb8EI6TArq4pSLEsBMXG+BAKpY+mc9zDN3D+rF1AzpSWU4DUMOTH3E9oqlq7gE7T76/XVGUz4VOLz
	oSTcStJrundoCuiMi5ca1/MDhal6UDQGv9j/Qk/L4nX9mCaODpGyAJ/wzCvuoSUYI7c33OCR7N6W0
	jM5ROShFm4sx3Df+pu/AJMXYcNrVWQmIKP/6FBQBbXm2X3YjqKpy1++zNm4e2hSs+DdCelggJqlv0
	EHspEu2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0LdP-00Fwfj-4O; Wed, 30 Nov 2022 11:52:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0LdG-00FwaJ-Uy
	for barebox@lists.infradead.org; Wed, 30 Nov 2022 11:52:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p0LdA-0005Et-4c; Wed, 30 Nov 2022 12:52:00 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p0Ld8-001INu-NS; Wed, 30 Nov 2022 12:51:59 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p0Ld8-00GBso-TM; Wed, 30 Nov 2022 12:51:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Nov 2022 12:51:57 +0100
Message-Id: <20221130115157.3858878-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_035207_036227_4CEBDEDC 
X-CRM114-Status: GOOD (  11.94  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] net: bcmgenet: fix OF node of MII bus controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The bcmgenet device tree binding describes the MDIO controller as a
subnode of the Ethernet controller node. Linux handles this by having
a driver for each of the MAC and MDIO controller, but in barebox we
keep a single driver and largely ignore the subnode.

Since Commit 8abc2059298d ("net: add support for MDIO devices"), this
leads to following error message:

  ERROR: miibus0: /scb/ethernet@7d580000/mdio@e14 PHY address 3604 is too
  large

Give the MII bus the correct device tree node to fix this. We already do
it this way in the designware_eqos driver.

This was tested on a Raspberry Pi 4b, where Link up and reading PHY ID
of 600d 84a2 is sensible (matches PHY_ID_BCM54210E). DHCP though didn't
work for me with or without this patch.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/bcmgenet.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/bcmgenet.c b/drivers/net/bcmgenet.c
index 2098e73b5cea..03389db8749b 100644
--- a/drivers/net/bcmgenet.c
+++ b/drivers/net/bcmgenet.c
@@ -577,6 +577,8 @@ static int bcmgenet_probe(struct device_d *dev)
 
 	priv->miibus.priv = priv;
 	priv->miibus.parent = dev;
+	priv->miibus.dev.device_node
+		= of_get_compatible_child(dev->device_node, "brcm,genet-mdio-v5");
 
 	ret = mdiobus_register(&priv->miibus);
 	if (ret)
-- 
2.30.2



