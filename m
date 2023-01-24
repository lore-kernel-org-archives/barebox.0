Delivery-date: Tue, 24 Jan 2023 21:32:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKPyV-000ohr-9k
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 21:32:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKPyS-0002W8-I6
	for lore@pengutronix.de; Tue, 24 Jan 2023 21:32:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=//I4QXkigMeMsH96DONnt0q6JyreNh3zUs/fAvqcgnI=; b=N6dYxmsuLcAlA6qXgaFRl8leGA
	iDhibrNtSu2D9IMKPI14PZSdI9F/Cp55nHDtoUbxct6TXRUEVeAS+/ZfnukInkYywS7MXlhU6tZ2G
	Ed/T04dRCg5dkgZ6UJGqtJTZ4NNJAY6sX8ULIF5Y5x+wq8uh1buK9wDjimIIPHC1s4NT4zxpQtFxz
	x0lJvLALShFmXHkI1//UiJGPpljA9HtN6t5DfoMbLUpVcVyEfwHDfMqp691cm5IeN8N5LDhalv2KA
	ZAaEASxiLkoLkKrnLziuf5ijn6HecxqNUOeYhklzGizwRO4bMtf5sgyIRPtLoMAYVV3bzXR4d0BWE
	bqkI4rrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKPx4-005CxY-OT; Tue, 24 Jan 2023 20:31:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKPx0-005Cx2-F2
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 20:31:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1pKPwz-0002Re-0y
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 21:31:25 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mgr@pengutronix.de>)
	id 1pKPwz-000BgD-A0
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 21:31:24 +0100
Received: from mgr by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mgr@pengutronix.de>)
	id 1pKPwx-00EdoC-Ek
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 21:31:23 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 24 Jan 2023 21:31:19 +0100
Message-Id: <20230124203119.3489559-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_123126_516503_EC14027D 
X-CRM114-Status: GOOD (  12.03  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] phy: stm32-usphyc: add mdelay(1) to fix timeout on some machines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

An mdelay of 1 seems to be necessary on some machines, since
the monsel status does not seem to be accurate. On rare occasions just
working with the phy after this pll check lead to no functional usb.
With this short mdelay this issue was not reported again.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/phy/phy-stm32-usbphyc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
index 657824405f..aff6b60d5e 100644
--- a/drivers/phy/phy-stm32-usbphyc.c
+++ b/drivers/phy/phy-stm32-usbphyc.c
@@ -271,6 +271,15 @@ static int stm32_usbphyc_phy_init(struct phy *phy)
 		goto pll_disable;
 	}
 
+	/* This is a workaround that seems to be necessary on some
+	 * machines, since the monsel status does not seem to be
+	 * accurate. On rare occasions just working with the phy after
+	 * this pll check the usb peripheral (e.g. on the dwc2) run into
+	 * timeout issues and leading to no functional usb. With this
+	 * short mdelay this issue was not reported again.
+	 */
+	mdelay(1);
+
 	usbphyc_phy->active = true;
 
 	return 0;
-- 
2.30.2



