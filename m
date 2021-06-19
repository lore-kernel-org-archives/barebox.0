Delivery-date: Sat, 19 Jun 2021 06:52:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyM-0004Sj-3Y
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:52:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyK-0000Z1-EM
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:52:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aomiGTHvIe4XFqr91SHw03nQpts/jwlS9tscFbael8Q=; b=ffc1vVYO6o0ioy
	0UmXVuGJibDHTAab1elLQYsIfQ4Xc4inHyaaeJXzSO7b9H/u2vZTfRfy3GoKOu5R9QTh67t8iHd2w
	BZMDeJEBEmio4Ta/dmUg2rRr6WZP8v1JaGNsdMtV1UaZoFEqZTLn33H8sW+64v+2EvZ0EoKO7s87K
	HHlEXhpO7TfddptNvXvn2/u51JhiYQLlwpqLYeQGJxjMbXuY6H8/0IO99NX5pmQg1se9ZdMZvB9VD
	iQnE1NwdePS9L8xA/uWR9X31Q/DkLU80sxEbyvzxhwnP/fxJAUjwhPurwtTHDAHTPErGJsIDeyHpI
	RukHU+N7xGQ4qsonX3xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luSwv-00GHld-Ch; Sat, 19 Jun 2021 04:51:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwi-00GHfk-Ks
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwh-0008MF-9v; Sat, 19 Jun 2021 06:51:03 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001LJ-TI; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:44 +0200
Message-Id: <20210619045055.779-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215104_727199_671E7D40 
X-CRM114-Status: GOOD (  12.28  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 18/29] mci: allocate sector_buf on demand
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The MCI core uses a common bounce buffer for unaligned block
reads/writes as well as sd_change_freq. This buffer is allocated at
device initcall level, same as the MMC drivers themselves.

For CONFIG_MCI_STARTUP=y configurations this seems to imply that
sd_change_freq could attempt writing the NULL page. Avoid this
by just allocating the buffer when the first MMC device is registered.

This doesn't solve all issues; so add a comment noting that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index b174067a7fbc..92a73c8f1dfe 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1790,6 +1790,11 @@ static int mci_card_probe(struct mci *mci)
 		mci->cdevname = basprintf("disk%d", disknum);
 	}
 
+	if (!sector_buf)
+		sector_buf = dma_alloc(SECTOR_SIZE);
+
+	/* FIXME we don't check sector_buf against the device dma mask here */
+
 	rc = mci_startup(mci);
 	if (rc) {
 		dev_warn(&mci->dev, "Card's startup fails with %d\n", rc);
@@ -1851,15 +1856,6 @@ static int mci_set_probe(struct param_d *param, void *priv)
 	return 0;
 }
 
-static int mci_init(void)
-{
-	sector_buf = dma_alloc(SECTOR_SIZE);
-
-	return 0;
-}
-
-device_initcall(mci_init);
-
 int mci_detect_card(struct mci_host *host)
 {
 	int rc;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

