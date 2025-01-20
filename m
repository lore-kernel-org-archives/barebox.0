Delivery-date: Mon, 20 Jan 2025 07:51:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tZlcs-0028w5-17
	for lore@lore.pengutronix.de;
	Mon, 20 Jan 2025 07:51:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tZlcs-0008Oc-Gu
	for lore@pengutronix.de; Mon, 20 Jan 2025 07:51:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KB+l0YSacQD2wZB0lMnGwwK84E9oeS9PLH8K4b6GY0w=; b=x+NpzgrqtGWK3Y5ovbTRpD3I3S
	kIYi63n5wa3mJgZPwgViuZj3s1G082N5ZnLnCmsTJxSUBBRfs0RUE+pNPy2PzllfTT94oWqKDMgxN
	DEVUV+kue8hX5MF7tEDCKM0inBUHNBp54BG3A60X++dNwHsTkBVINWULWbxhJ+gGzJMCMk38TKpZd
	Y4rwZZmXjMAAD50NlMPPwMNffgC3rZGT3kL7FvDMZTB/J9l1v4817nPiXTIoiz6ctPiDveXiP7z8N
	AT5DbEfUdNBmw7h8+sw8qTKqvTQtaVvFrFEmLTSSHTZnrCx2W76zMnm9R6O5z5jioQt9M+CbBOe0O
	5Q+ARv/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZlcU-00000004r89-0CNE;
	Mon, 20 Jan 2025 06:50:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZlcR-00000004r7o-3Bzs
	for barebox@lists.infradead.org;
	Mon, 20 Jan 2025 06:50:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tZlcQ-0008JV-KH; Mon, 20 Jan 2025 07:50:42 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tZlcQ-000tIN-1P;
	Mon, 20 Jan 2025 07:50:42 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tZlcQ-00Ajbt-15;
	Mon, 20 Jan 2025 07:50:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Jan 2025 07:50:41 +0100
Message-Id: <20250120065041.2558346-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250119_225043_802744_E1F3589F 
X-CRM114-Status: UNSURE (   9.92  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: beagleplay: Add missing DRAM frequencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The DDR driver needs the frequencies initialized, otherwise it fails
with a division by zero error.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagleplay/ddr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/beagleplay/ddr.c b/arch/arm/boards/beagleplay/ddr.c
index 3f8b36026a..027fc407fb 100644
--- a/arch/arm/boards/beagleplay/ddr.c
+++ b/arch/arm/boards/beagleplay/ddr.c
@@ -578,6 +578,9 @@ static struct k3_ddr_initdata initdata = {
 	.ctl_regs = &ctl_regs,
 	.pi_regs = &pi_regs,
 	.phy_regs = &phy_regs,
+	.freq0 = 25000000,
+	.freq1 = 400000000,
+	.freq2 = 400000000,
 };
 
 void beagleplay_ddr_init(void)
-- 
2.39.5



