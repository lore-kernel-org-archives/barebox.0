Delivery-date: Tue, 09 Aug 2022 08:26:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIgj-00GzoY-T7
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 08:26:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIgk-0006pV-MT
	for lore@pengutronix.de; Tue, 09 Aug 2022 08:26:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8UGVfWtyLpmIrtJSrk0xO1XQ/+MEd/xzKM0RFhClhOI=; b=dkEmzpaLfK7pqdJ/UdCpw16GX/
	TV0VPzXydX3lansL87pMPKZAeKJB9DJgDjZC0hbPuUzS57ClRZb//r9nwRC+NzeAYd/Y2/Tj+HVYI
	C0g3oULClvXdPx5Ql/FEBtk8thyj9NcCkKCZHlZFaqJHgZU2IZT2xWpGOxOF6M5Ny6pDjGacUoI4O
	7eT6HuwZU+PLqUVfALPINVBm0XB2ljdxfGfu7LDadAw7vS37hc9GvgSmjoTJ3SkNXpw0VpFP7g5vC
	UJEHyhdPObDktvbmODu4Hfeed4nOAucY74beEhIJMxgR7hVYw6DGwpQkSJXqQVVBybjkrY+qezD+s
	iPwPGJRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIfS-001udy-Ni; Tue, 09 Aug 2022 06:24:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIfG-001uXB-2Z
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 06:24:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIfA-0006Sh-U3; Tue, 09 Aug 2022 08:24:24 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIf7-002eYn-Sx; Tue, 09 Aug 2022 08:24:24 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIf9-007L9g-C8; Tue, 09 Aug 2022 08:24:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  9 Aug 2022 08:24:21 +0200
Message-Id: <20220809062422.1749563-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220809062422.1749563-1-a.fatoum@pengutronix.de>
References: <20220809062422.1749563-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_232430_158779_D0924C24 
X-CRM114-Status: GOOD (  12.72  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/4] net: designware: eqos: replace double accounting of interface up status
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Network core already keeps track of whether ethernet interface is up, so
no need to replicate holding this state.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware_eqos.c     | 11 -----------
 drivers/net/designware_eqos.h     |  1 -
 drivers/net/designware_tegra186.c |  2 +-
 3 files changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 6b372e427492..79b997969755 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -623,10 +623,6 @@ static int eqos_start(struct eth_device *edev)
 	last_rx_desc = (ulong)&eqos->rx_descs[(EQOS_DESCRIPTORS_RX - 1)];
 	writel(last_rx_desc, &eqos->dma_regs->ch0_rxdesc_tail_pointer);
 
-	barrier();
-
-	eqos->started = true;
-
 	return 0;
 }
 
@@ -635,13 +631,6 @@ static void eqos_stop(struct eth_device *edev)
 	struct eqos *eqos = edev->priv;
 	int i;
 
-	if (!eqos->started)
-		return;
-
-	eqos->started = false;
-
-	barrier();
-
 	/* Disable TX DMA */
 	clrbits_le32(&eqos->dma_regs->ch0_tx_control,
 		     EQOS_DMA_CH0_TX_CONTROL_ST);
diff --git a/drivers/net/designware_eqos.h b/drivers/net/designware_eqos.h
index be7bead09e0e..69c6ac193f57 100644
--- a/drivers/net/designware_eqos.h
+++ b/drivers/net/designware_eqos.h
@@ -60,7 +60,6 @@ struct eqos {
 
 	const struct eqos_ops *ops;
 	void *priv;
-	bool started;
 };
 
 struct device_d;
diff --git a/drivers/net/designware_tegra186.c b/drivers/net/designware_tegra186.c
index 0241b9ad16ff..0cbbdb46a442 100644
--- a/drivers/net/designware_tegra186.c
+++ b/drivers/net/designware_tegra186.c
@@ -195,7 +195,7 @@ static int eqos_set_ethaddr_tegra186(struct eth_device *edev, const unsigned cha
 	 * ported to some system where the expectation above is true.
 	 */
 
-	if (!eqos->started) {
+	if (!edev->active) {
 		memcpy(eqos->macaddr, mac, 6);
 		return 0;
 	}
-- 
2.30.2



