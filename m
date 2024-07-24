Delivery-date: Wed, 24 Jul 2024 17:24:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWdqk-002VT6-2X
	for lore@lore.pengutronix.de;
	Wed, 24 Jul 2024 17:24:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWdqk-0008QD-73
	for lore@pengutronix.de; Wed, 24 Jul 2024 17:24:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=u629CpfMOl31JzKaQouIIaJdmPRRvn8aFFUYIipMkA4=; b=q+OZd6ZRuoIdRbTVHdt4UP4l3W
	Fw4gO1Mzn52bpMZpJV3RHelp4mLpBQ7K3IyiBibGypYWfmqO/taVom691rhYSzcBW+5P2QEHS8gEx
	ldXkKwBE6DgLd+AVETWG0fENdqoNk9Axhp0UWgzOFSy3e/Z4NkM+wMo6sdIEqPPva7yeV2mwem94U
	GONmeaD7sM/rX7O+MjkxqRUe4aiwWxsOf7q8q7bcdtC7SGlzyAZNAxpigs+YjPqnZxtJO+crQiAqb
	po2zKqqWWMVwbHDjYdRSqW+chgdpxV20k1FxGFy+LOkzyNWs9vcqLLymxd8pxHfWI83CLUIbeAsko
	LhHyWa1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWdq2-0000000Fkhy-0wRw;
	Wed, 24 Jul 2024 15:23:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWdpy-0000000FkhP-3VZf
	for barebox@lists.infradead.org;
	Wed, 24 Jul 2024 15:23:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWdpw-0008KI-Sz; Wed, 24 Jul 2024 17:23:28 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWdpw-001syX-Fx; Wed, 24 Jul 2024 17:23:28 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWdpw-00Dxxh-1I;
	Wed, 24 Jul 2024 17:23:28 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Jul 2024 17:23:27 +0200
Message-Id: <20240724152327.3328745-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_082330_894219_0C4BD7D2 
X-CRM114-Status: GOOD (  11.09  )
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
Subject: [PATCH] net: designware: dma_sync_single_for_device buffer before passing to HW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For cache-incoherent DMA, dma_sync_single_for_cpu with DMA_FROM_DEVICE
invalidates the cache, so no stale lines in the cache hide what the
hardware had written to RAM.

On the same systems, dma_sync_single_for_device with DMA_FROM_DEVICE also
invalidates the cache, so no dirty lines from the CPU are evicted
clobbering what the hardware had written to RAM.

In rx_descs_init, the RX buffers need to be invalidated before transferring
ownership to the network controller, therefore we should use
dma_sync_single_for_device for clarity, even if it doesn't change behavior.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 183feba2ea5a..66f28b429dea 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -156,7 +156,7 @@ static void rx_descs_init(struct eth_device *dev)
 		else
 			desc_p->dmamac_cntl |= DESC_RXCTRL_RXCHAIN;
 
-		dma_sync_single_for_cpu(dev->parent, desc_p->dmamac_addr,
+		dma_sync_single_for_device(dev->parent, desc_p->dmamac_addr,
 					CONFIG_ETH_BUFSIZE, DMA_FROM_DEVICE);
 		desc_p->txrx_status = DESC_RXSTS_OWNBYDMA;
 	}
-- 
2.39.2



