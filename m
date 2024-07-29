Delivery-date: Mon, 29 Jul 2024 21:07:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYVib-004DzU-2v
	for lore@lore.pengutronix.de;
	Mon, 29 Jul 2024 21:07:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYVib-0003b5-Be
	for lore@pengutronix.de; Mon, 29 Jul 2024 21:07:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GvjyR9qb1li8Xqy+l2o5nK/xv8mry8A3eUPRD7cTWiU=; b=TPibtg/YtPwR6VqKseMv9U4eCB
	mh/ql0XqvBhyEYYiIVKkhjSt6FFl6GPeawETkKiCTcbq8L2UpHBzO+heQ+llKAuEHwCKvdc9Fsvpr
	PjIWJrbQlz7RRjsprjJCbM3Pdh/PQaFFqxoypT07Po+mkKqawYEkLP/GLcKjMySGIRxTQyBVXrQi+
	YeCvsu236KPf7p/6756yiCOjJgDiUTkJ9oslQccsDQuJeuNMmMga5Ic33R4F3qy//UwUwQSZ69n35
	D/eZoFlQiIpNOitYFnF33sQoszoXP6bdaf324ppETGHiquJZ8r5RGDx/bQP4u1kSePbM/5Di8Udb7
	GYiXnBbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYVhz-0000000CRjr-0pNR;
	Mon, 29 Jul 2024 19:06:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYVhw-0000000CRjN-2ZKI
	for barebox@lists.infradead.org;
	Mon, 29 Jul 2024 19:06:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYVhu-0003YE-Vp; Mon, 29 Jul 2024 21:06:55 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYVhu-0036o4-JG; Mon, 29 Jul 2024 21:06:54 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYVhu-007NW2-1d;
	Mon, 29 Jul 2024 21:06:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 29 Jul 2024 21:06:53 +0200
Message-Id: <20240729190653.1758644-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_120656_672188_D0876832 
X-CRM114-Status: GOOD (  10.16  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: core: remove reference to SD Card from common mci_card_probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

mci_card_probe is called for both SD cards and MMC, so reporting that
an SD Card was successfully added is misleading.

There is an info message that reports whether it's a MMC or SD card
already, so just remove the SD from this last debug print.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 200b23ffb604..c7e3c4b6976d 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2784,7 +2784,7 @@ static int mci_card_probe(struct mci *mci)
 
 	mci_parse_cid(mci);
 
-	dev_dbg(&mci->dev, "SD Card successfully added\n");
+	dev_dbg(&mci->dev, "Card successfully added\n");
 
 on_error:
 	if (rc != 0) {
-- 
2.39.2



