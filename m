Delivery-date: Wed, 29 May 2024 07:04:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCBTy-0015m4-3C
	for lore@lore.pengutronix.de;
	Wed, 29 May 2024 07:04:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCBTy-0001C9-Eu
	for lore@pengutronix.de; Wed, 29 May 2024 07:04:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/yOO99qyRU5xwYBOVo3QQQ3EsaoNxUFeB2+liIkIGWc=; b=cJ2wVVU0xWs03ad+XFfzXSvSUN
	F48pSem6xDwj0bJrWDTwgdwkELBavB+5mB3zsTSclsON8Ix/zliDwEnw6p0qXI9XlWuJutR6LWwFr
	6zAF5Tl8e+Bl83HGwK5cLEaAYsBhukY7jVghBwQjfAxe0TKxEtLLizfejUmQcnESk1vJhec95KW7w
	G5kp9qJb2+/8HjSbfGZRMIizZ9KcSFD8qOWBa5OUeN4ZbPUwn4RWj4ErU0C6XDcnnl4O577L8fSZm
	+9YUHHxp71BmoSKRsHSJEKv3UQ+LZwMW6XnxHeO6+8GqvU/ecDyOv0zAHlVIQiKP2hr0BOjH1IPqy
	7LboM43g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCBTW-00000002pKF-45PI;
	Wed, 29 May 2024 05:03:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCBTU-00000002pJl-0Wsw
	for barebox@lists.infradead.org;
	Wed, 29 May 2024 05:03:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sCBTS-000183-OS; Wed, 29 May 2024 07:03:42 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sCBTS-003PsI-Bt; Wed, 29 May 2024 07:03:42 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sCBTS-00DXhK-11;
	Wed, 29 May 2024 07:03:42 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 29 May 2024 07:03:40 +0200
Message-Id: <20240529050340.3227789-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_220344_250123_AC3DD27D 
X-CRM114-Status: UNSURE (   8.82  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1] phy: avoid adjust_link call if link remains down
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a check in phy_update_status to skip calling adjust_link when the
link status remains down. This prevents unnecessary adjust_link calls
for PHYs that may change speed and duplex status bits before confirming
link establishment. This issue was observed during debugging a switch
driver, where a PHY took about 6 seconds to establish a link, causing
multiple adjust_link calls.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/phy.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index abd78b2c80..39a48e1519 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -62,6 +62,9 @@ int phy_update_status(struct phy_device *phydev)
 	    phydev->link == oldlink)
 		return 0;
 
+	if (!phydev->link && phydev->link == oldlink)
+		return 0;
+
 	if (phydev->adjust_link)
 		phydev->adjust_link(edev);
 
-- 
2.39.2



