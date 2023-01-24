Delivery-date: Tue, 24 Jan 2023 21:46:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKQBK-000ozW-Ch
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 21:46:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKQBH-00043I-NF
	for lore@pengutronix.de; Tue, 24 Jan 2023 21:46:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Spuz54jrQCxVB4pRWSZqtPMrzrXpwiUpSwrcZU4Is34=; b=QRGyOA6EewudsNp/CLPawyvuMf
	Mc0M9Is/W5Tie6qstWzde8ziqSVoY6A2wj7sY5DMJM623KNKYDxpLZWCGXKN3Pt53nqLrdEwgiwAh
	vFF9PPCVbxfeyfboxPHuV3QtTILhLeB32AuiVklfBhOkLqybloMZbIJ+zNUrwKHmTs+XQBDPokfAO
	7jNYgPV8vaZ++eFLPYOguL1EPJS9pzUi6SJUyi/drwagA8cszXPRTNxIo20qLzpVTQ7a/rManGR2J
	VHimlg76f3hD2EKXG8/x0/fobsFzgC1gZkwfDYdI5o7o12s8vWfAvRtM1y/KFU+c2oQf8GHWsHO/O
	v30M9sBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKQ9z-005ErK-8G; Tue, 24 Jan 2023 20:44:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKQ9m-005Eoa-Gj
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 20:44:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1pKQ9l-0003c2-2I
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 21:44:37 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mgr@pengutronix.de>)
	id 1pKQ9l-000BhR-Be
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 21:44:36 +0100
Received: from mgr by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mgr@pengutronix.de>)
	id 1pKQ9j-00EhC4-Ku
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 21:44:35 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 24 Jan 2023 21:44:34 +0100
Message-Id: <20230124204434.3502574-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_124438_576004_F9A5EAA9 
X-CRM114-Status: GOOD (  12.06  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] phy: stm32-usphyc: add mdelay(1) to fix timeout on some machines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

An mdelay of 1 seems to be necessary on some machines, since
the monsel status does not seem to be accurate. On rare occasions just
working with the phy after this pll check lead to no functional usb.
With this short mdelay this issue was not reported again.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
v1 -> v2: - reworded the comment

 drivers/phy/phy-stm32-usbphyc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
index 657824405f..db4ccef920 100644
--- a/drivers/phy/phy-stm32-usbphyc.c
+++ b/drivers/phy/phy-stm32-usbphyc.c
@@ -271,6 +271,15 @@ static int stm32_usbphyc_phy_init(struct phy *phy)
 		goto pll_disable;
 	}
 
+	/* This mdelay seems to be necessary on some machines, since the
+	 * monsel status does not seem to be accurate. On rare occasions
+	 * just working with the phy after this pll check the usb
+	 * peripheral (e.g. on the dwc2) run into timeout issues and
+	 * leading to no functional usb. With this short mdelay this
+	 * issue was not reported again.
+	 */
+	mdelay(1);
+
 	usbphyc_phy->active = true;
 
 	return 0;
-- 
2.30.2



