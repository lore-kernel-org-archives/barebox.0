Delivery-date: Tue, 23 Apr 2024 19:54:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzKLQ-00D4VO-1S
	for lore@lore.pengutronix.de;
	Tue, 23 Apr 2024 19:54:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzKLP-0006ly-OE
	for lore@pengutronix.de; Tue, 23 Apr 2024 19:54:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=A4YmasjN7nKlCvU+7TSSx27IVXg2OjBswOycp4KEFhY=; b=CmjmpkL8ld3vzilz4xHO5BuYO9
	afGnCTX4/7wcT86mRZB2mB8x4lyB9cAxAvExXbhxXirdwLu3e9lhp9bRVNplPVmLEr/WwWae4GqXg
	A0GVK091qn5QnkIlzfKzEHTIQndZnPxxefZIdCXrxT09aKaaKER1MuctTFCRJLyLfU3vFYJSKJ6DO
	RKMx1915fMFcululMsU4B0uvJFKCh6g357KIrhQd8/PWqUwU+2PIlPBip9hj5/ex7ipZtSYHASjUy
	hwv4TErJn71HQvfLGvNX+7BD+ie7ex/+PVhSVhYZunwY4SMhk63O/JxGe2kGDm9RVbr9LulhWmmd/
	I8PwssVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzKKs-000000012Ts-3QAS;
	Tue, 23 Apr 2024 17:53:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzKKp-000000012TI-3Vao
	for barebox@lists.infradead.org;
	Tue, 23 Apr 2024 17:53:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzKKo-0006L9-Ij; Tue, 23 Apr 2024 19:53:38 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzKKo-00Dw5s-65; Tue, 23 Apr 2024 19:53:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzKKo-009fb5-0K;
	Tue, 23 Apr 2024 19:53:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Apr 2024 19:53:37 +0200
Message-Id: <20240423175337.2304839-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_105339_894075_6B33259D 
X-CRM114-Status: GOOD (  11.45  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: dsa: use dma_alloc in receive path for symmetry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As explained by the comment, we don't strictly need this at moment, but,
say, if in future, we decide to save a memory copy in the ping reply
code by reusing the receive buffer for transmission, it would work for
all interfaces, except for DSA. Therefore, let's iron out this wrinkle.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/dsa.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index ccd7d8755035..e0bf079e4dbf 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -270,7 +270,14 @@ static int dsa_switch_register_edev(struct dsa_switch *ds,
 	struct dsa_port *dp;
 
 	dp = dsa_port_alloc(ds, dn, port);
-	dp->rx_buf = xmalloc(DSA_PKTSIZE);
+
+	/* DMA is done on buffer in receive ring allocated by network
+	 * driver. This is then copied into this buffer, so we don't
+	 * strictly need to use dma_alloc() here, unlike ds->tx_buf.
+	 * We do it anyway as we don't want DSA buffers to be subtly
+	 * different to that of a directly used network interface.
+	 */
+	dp->rx_buf = dma_alloc(DSA_PKTSIZE);
 
 	edev = &dp->edev;
 	edev->priv = dp;
-- 
2.39.2



